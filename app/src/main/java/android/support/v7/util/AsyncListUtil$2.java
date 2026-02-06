package android.support.v7.util;

import android.util.Log;
import android.util.SparseBooleanArray;

/* JADX INFO: Add missing generic type declarations: [T] */
class AsyncListUtil$2<T> implements ThreadUtil$BackgroundCallback<T> {
    private int mFirstRequiredTileStart;
    private int mGeneration;
    private int mItemCount;
    private int mLastRequiredTileStart;
    final SparseBooleanArray mLoadedTiles = new SparseBooleanArray();
    private TileList$Tile<T> mRecycledRoot;
    final /* synthetic */ AsyncListUtil this$0;

    AsyncListUtil$2(AsyncListUtil asyncListUtil) {
        this.this$0 = asyncListUtil;
    }

    @Override // android.support.v7.util.ThreadUtil$BackgroundCallback
    public void refresh(int i) {
        this.mGeneration = i;
        this.mLoadedTiles.clear();
        this.mItemCount = this.this$0.mDataCallback.refreshData();
        this.this$0.mMainThreadProxy.updateItemCount(this.mGeneration, this.mItemCount);
    }

    @Override // android.support.v7.util.ThreadUtil$BackgroundCallback
    public void updateRange(int i, int i2, int i3, int i4, int i5) {
        if (i > i2) {
            return;
        }
        int tileStart = getTileStart(i);
        int tileStart2 = getTileStart(i2);
        this.mFirstRequiredTileStart = getTileStart(i3);
        this.mLastRequiredTileStart = getTileStart(i4);
        if (i5 == 1) {
            requestTiles(this.mFirstRequiredTileStart, tileStart2, i5, true);
            requestTiles(tileStart2 + this.this$0.mTileSize, this.mLastRequiredTileStart, i5, false);
        } else {
            requestTiles(tileStart, this.mLastRequiredTileStart, i5, false);
            requestTiles(this.mFirstRequiredTileStart, tileStart - this.this$0.mTileSize, i5, true);
        }
    }

    private int getTileStart(int i) {
        return i - (i % this.this$0.mTileSize);
    }

    private void requestTiles(int i, int i2, int i3, boolean z) {
        int i4 = i;
        while (i4 <= i2) {
            this.this$0.mBackgroundProxy.loadTile(z ? (i2 + i) - i4 : i4, i3);
            i4 += this.this$0.mTileSize;
        }
    }

    @Override // android.support.v7.util.ThreadUtil$BackgroundCallback
    public void loadTile(int i, int i2) {
        if (isTileLoaded(i)) {
            return;
        }
        TileList$Tile<T> tileList$TileAcquireTile = acquireTile();
        tileList$TileAcquireTile.mStartPosition = i;
        tileList$TileAcquireTile.mItemCount = Math.min(this.this$0.mTileSize, this.mItemCount - tileList$TileAcquireTile.mStartPosition);
        this.this$0.mDataCallback.fillData(tileList$TileAcquireTile.mItems, tileList$TileAcquireTile.mStartPosition, tileList$TileAcquireTile.mItemCount);
        flushTileCache(i2);
        addTile(tileList$TileAcquireTile);
    }

    @Override // android.support.v7.util.ThreadUtil$BackgroundCallback
    public void recycleTile(TileList$Tile<T> tileList$Tile) {
        this.this$0.mDataCallback.recycleData(tileList$Tile.mItems, tileList$Tile.mItemCount);
        tileList$Tile.mNext = this.mRecycledRoot;
        this.mRecycledRoot = tileList$Tile;
    }

    private TileList$Tile<T> acquireTile() {
        if (this.mRecycledRoot != null) {
            TileList$Tile<T> tileList$Tile = this.mRecycledRoot;
            this.mRecycledRoot = this.mRecycledRoot.mNext;
            return tileList$Tile;
        }
        return new TileList$Tile<>(this.this$0.mTClass, this.this$0.mTileSize);
    }

    private boolean isTileLoaded(int i) {
        return this.mLoadedTiles.get(i);
    }

    private void addTile(TileList$Tile<T> tileList$Tile) {
        this.mLoadedTiles.put(tileList$Tile.mStartPosition, true);
        this.this$0.mMainThreadProxy.addTile(this.mGeneration, tileList$Tile);
    }

    private void removeTile(int i) {
        this.mLoadedTiles.delete(i);
        this.this$0.mMainThreadProxy.removeTile(this.mGeneration, i);
    }

    private void flushTileCache(int i) {
        int maxCachedTiles = this.this$0.mDataCallback.getMaxCachedTiles();
        while (this.mLoadedTiles.size() >= maxCachedTiles) {
            int iKeyAt = this.mLoadedTiles.keyAt(0);
            int iKeyAt2 = this.mLoadedTiles.keyAt(this.mLoadedTiles.size() - 1);
            int i2 = this.mFirstRequiredTileStart - iKeyAt;
            int i3 = iKeyAt2 - this.mLastRequiredTileStart;
            if (i2 > 0 && (i2 >= i3 || i == 2)) {
                removeTile(iKeyAt);
            } else {
                if (i3 <= 0) {
                    return;
                }
                if (i2 >= i3 && i != 1) {
                    return;
                } else {
                    removeTile(iKeyAt2);
                }
            }
        }
    }

    private void log(String str, Object... objArr) {
        Log.d("AsyncListUtil", "[BKGR] " + String.format(str, objArr));
    }
}

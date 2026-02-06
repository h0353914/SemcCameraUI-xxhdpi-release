package android.support.v7.util;

import android.util.Log;

/* JADX INFO: Add missing generic type declarations: [T] */
class AsyncListUtil$1<T> implements ThreadUtil$MainThreadCallback<T> {
    final /* synthetic */ AsyncListUtil this$0;

    AsyncListUtil$1(AsyncListUtil asyncListUtil) {
        this.this$0 = asyncListUtil;
    }

    @Override // android.support.v7.util.ThreadUtil$MainThreadCallback
    public void updateItemCount(int i, int i2) {
        if (isRequestedGeneration(i)) {
            this.this$0.mItemCount = i2;
            this.this$0.mViewCallback.onDataRefresh();
            this.this$0.mDisplayedGeneration = this.this$0.mRequestedGeneration;
            recycleAllTiles();
            this.this$0.mAllowScrollHints = false;
            this.this$0.updateRange();
        }
    }

    @Override // android.support.v7.util.ThreadUtil$MainThreadCallback
    public void addTile(int i, TileList$Tile<T> tileList$Tile) {
        if (!isRequestedGeneration(i)) {
            this.this$0.mBackgroundProxy.recycleTile(tileList$Tile);
            return;
        }
        TileList$Tile<T> tileList$TileAddOrReplace = this.this$0.mTileList.addOrReplace(tileList$Tile);
        if (tileList$TileAddOrReplace != null) {
            Log.e("AsyncListUtil", "duplicate tile @" + tileList$TileAddOrReplace.mStartPosition);
            this.this$0.mBackgroundProxy.recycleTile(tileList$TileAddOrReplace);
        }
        int i2 = tileList$Tile.mStartPosition + tileList$Tile.mItemCount;
        int i3 = 0;
        while (i3 < this.this$0.mMissingPositions.size()) {
            int iKeyAt = this.this$0.mMissingPositions.keyAt(i3);
            if (tileList$Tile.mStartPosition > iKeyAt || iKeyAt >= i2) {
                i3++;
            } else {
                this.this$0.mMissingPositions.removeAt(i3);
                this.this$0.mViewCallback.onItemLoaded(iKeyAt);
            }
        }
    }

    @Override // android.support.v7.util.ThreadUtil$MainThreadCallback
    public void removeTile(int i, int i2) {
        if (isRequestedGeneration(i)) {
            TileList$Tile<T> tileList$TileRemoveAtPos = this.this$0.mTileList.removeAtPos(i2);
            if (tileList$TileRemoveAtPos == null) {
                Log.e("AsyncListUtil", "tile not found @" + i2);
                return;
            }
            this.this$0.mBackgroundProxy.recycleTile(tileList$TileRemoveAtPos);
        }
    }

    private void recycleAllTiles() {
        for (int i = 0; i < this.this$0.mTileList.size(); i++) {
            this.this$0.mBackgroundProxy.recycleTile(this.this$0.mTileList.getAtIndex(i));
        }
        this.this$0.mTileList.clear();
    }

    private boolean isRequestedGeneration(int i) {
        return i == this.this$0.mRequestedGeneration;
    }
}

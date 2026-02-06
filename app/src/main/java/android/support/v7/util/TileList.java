package android.support.v7.util;

import android.util.SparseArray;

class TileList<T> {
    TileList$Tile<T> mLastAccessedTile;
    final int mTileSize;
    private final SparseArray<TileList$Tile<T>> mTiles = new SparseArray<>(10);

    public TileList(int i) {
        this.mTileSize = i;
    }

    public T getItemAt(int i) {
        if (this.mLastAccessedTile == null || !this.mLastAccessedTile.containsPosition(i)) {
            int iIndexOfKey = this.mTiles.indexOfKey(i - (i % this.mTileSize));
            if (iIndexOfKey < 0) {
                return null;
            }
            this.mLastAccessedTile = this.mTiles.valueAt(iIndexOfKey);
        }
        return this.mLastAccessedTile.getByPosition(i);
    }

    public int size() {
        return this.mTiles.size();
    }

    public void clear() {
        this.mTiles.clear();
    }

    public TileList$Tile<T> getAtIndex(int i) {
        return this.mTiles.valueAt(i);
    }

    public TileList$Tile<T> addOrReplace(TileList$Tile<T> tileList$Tile) {
        int iIndexOfKey = this.mTiles.indexOfKey(tileList$Tile.mStartPosition);
        if (iIndexOfKey < 0) {
            this.mTiles.put(tileList$Tile.mStartPosition, tileList$Tile);
            return null;
        }
        TileList$Tile<T> tileList$TileValueAt = this.mTiles.valueAt(iIndexOfKey);
        this.mTiles.setValueAt(iIndexOfKey, tileList$Tile);
        if (this.mLastAccessedTile == tileList$TileValueAt) {
            this.mLastAccessedTile = tileList$Tile;
        }
        return tileList$TileValueAt;
    }

    public TileList$Tile<T> removeAtPos(int i) {
        TileList$Tile<T> tileList$Tile = this.mTiles.get(i);
        if (this.mLastAccessedTile == tileList$Tile) {
            this.mLastAccessedTile = null;
        }
        this.mTiles.delete(i);
        return tileList$Tile;
    }
}

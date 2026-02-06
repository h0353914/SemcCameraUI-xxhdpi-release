package android.support.v4.util;

import java.util.Iterator;
import java.util.NoSuchElementException;

final class MapCollections$ArrayIterator<T> implements Iterator<T> {
    boolean mCanRemove = false;
    int mIndex;
    final int mOffset;
    int mSize;
    final /* synthetic */ MapCollections this$0;

    MapCollections$ArrayIterator(MapCollections mapCollections, int i) {
        this.this$0 = mapCollections;
        this.mOffset = i;
        this.mSize = mapCollections.colGetSize();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.mIndex < this.mSize;
    }

    @Override // java.util.Iterator
    public T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        T t = (T) this.this$0.colGetEntry(this.mIndex, this.mOffset);
        this.mIndex++;
        this.mCanRemove = true;
        return t;
    }

    @Override // java.util.Iterator
    public void remove() {
        if (!this.mCanRemove) {
            throw new IllegalStateException();
        }
        this.mIndex--;
        this.mSize--;
        this.mCanRemove = false;
        this.this$0.colRemoveAt(this.mIndex);
    }
}

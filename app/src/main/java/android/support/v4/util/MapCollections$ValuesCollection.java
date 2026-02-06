package android.support.v4.util;

import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: Add missing generic type declarations: [V] */
final class MapCollections$ValuesCollection<V> implements Collection<V> {
    final /* synthetic */ MapCollections this$0;

    MapCollections$ValuesCollection(MapCollections mapCollections) {
        this.this$0 = mapCollections;
    }

    @Override // java.util.Collection
    public boolean add(V v) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends V> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public void clear() {
        this.this$0.colClear();
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        return this.this$0.colIndexOfValue(obj) >= 0;
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return this.this$0.colGetSize() == 0;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator<V> iterator() {
        return new MapCollections$ArrayIterator(this.this$0, 1);
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        int iColIndexOfValue = this.this$0.colIndexOfValue(obj);
        if (iColIndexOfValue < 0) {
            return false;
        }
        this.this$0.colRemoveAt(iColIndexOfValue);
        return true;
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        int iColGetSize = this.this$0.colGetSize();
        int i = 0;
        boolean z = false;
        while (i < iColGetSize) {
            if (collection.contains(this.this$0.colGetEntry(i, 1))) {
                this.this$0.colRemoveAt(i);
                i--;
                iColGetSize--;
                z = true;
            }
            i++;
        }
        return z;
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        int iColGetSize = this.this$0.colGetSize();
        int i = 0;
        boolean z = false;
        while (i < iColGetSize) {
            if (!collection.contains(this.this$0.colGetEntry(i, 1))) {
                this.this$0.colRemoveAt(i);
                i--;
                iColGetSize--;
                z = true;
            }
            i++;
        }
        return z;
    }

    @Override // java.util.Collection
    public int size() {
        return this.this$0.colGetSize();
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return this.this$0.toArrayHelper(1);
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) this.this$0.toArrayHelper(tArr, 1);
    }
}

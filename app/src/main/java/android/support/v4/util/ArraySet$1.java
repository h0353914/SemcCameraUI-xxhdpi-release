package android.support.v4.util;

import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [E] */
class ArraySet$1<E> extends MapCollections<E, E> {
    final /* synthetic */ ArraySet this$0;

    ArraySet$1(ArraySet arraySet) {
        this.this$0 = arraySet;
    }

    @Override // android.support.v4.util.MapCollections
    protected int colGetSize() {
        return this.this$0.mSize;
    }

    @Override // android.support.v4.util.MapCollections
    protected Object colGetEntry(int i, int i2) {
        return this.this$0.mArray[i];
    }

    @Override // android.support.v4.util.MapCollections
    protected int colIndexOfKey(Object obj) {
        return this.this$0.indexOf(obj);
    }

    @Override // android.support.v4.util.MapCollections
    protected int colIndexOfValue(Object obj) {
        return this.this$0.indexOf(obj);
    }

    @Override // android.support.v4.util.MapCollections
    protected Map<E, E> colGetMap() {
        throw new UnsupportedOperationException("not a map");
    }

    @Override // android.support.v4.util.MapCollections
    protected void colPut(E e, E e2) {
        this.this$0.add(e);
    }

    @Override // android.support.v4.util.MapCollections
    protected E colSetValue(int i, E e) {
        throw new UnsupportedOperationException("not a map");
    }

    @Override // android.support.v4.util.MapCollections
    protected void colRemoveAt(int i) {
        this.this$0.removeAt(i);
    }

    @Override // android.support.v4.util.MapCollections
    protected void colClear() {
        this.this$0.clear();
    }
}

package android.support.v4.util;

import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX INFO: loaded from: classes.dex */
class ArrayMap$1<K, V> extends MapCollections<K, V> {
    final /* synthetic */ ArrayMap this$0;

    ArrayMap$1(ArrayMap arrayMap) {
        this.this$0 = arrayMap;
    }

    @Override // android.support.v4.util.MapCollections
    protected int colGetSize() {
        return this.this$0.mSize;
    }

    @Override // android.support.v4.util.MapCollections
    protected Object colGetEntry(int i, int i2) {
        return this.this$0.mArray[(i << 1) + i2];
    }

    @Override // android.support.v4.util.MapCollections
    protected int colIndexOfKey(Object obj) {
        return this.this$0.indexOfKey(obj);
    }

    @Override // android.support.v4.util.MapCollections
    protected int colIndexOfValue(Object obj) {
        return this.this$0.indexOfValue(obj);
    }

    @Override // android.support.v4.util.MapCollections
    protected Map<K, V> colGetMap() {
        return this.this$0;
    }

    @Override // android.support.v4.util.MapCollections
    protected void colPut(K k, V v) {
        this.this$0.put(k, v);
    }

    @Override // android.support.v4.util.MapCollections
    protected V colSetValue(int i, V v) {
        return this.this$0.setValueAt(i, v);
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

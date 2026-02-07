package com.google.android.gms.internal;

import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX INFO: loaded from: classes.dex */
class zzme$1<K, V> extends zzmh<K, V> {
    final /* synthetic */ zzme zzagA;

    zzme$1(zzme zzmeVar) {
        this.zzagA = zzmeVar;
    }

    @Override // com.google.android.gms.internal.zzmh
    protected void colClear() {
        this.zzagA.clear();
    }

    @Override // com.google.android.gms.internal.zzmh
    protected Object colGetEntry(int i, int i2) {
        return this.zzagA.mArray[(i << 1) + i2];
    }

    @Override // com.google.android.gms.internal.zzmh
    protected Map<K, V> colGetMap() {
        return this.zzagA;
    }

    @Override // com.google.android.gms.internal.zzmh
    protected int colGetSize() {
        return this.zzagA.mSize;
    }

    @Override // com.google.android.gms.internal.zzmh
    protected int colIndexOfKey(Object obj) {
        return obj == null ? this.zzagA.indexOfNull() : this.zzagA.indexOf(obj, obj.hashCode());
    }

    @Override // com.google.android.gms.internal.zzmh
    protected int colIndexOfValue(Object obj) {
        return this.zzagA.indexOfValue(obj);
    }

    @Override // com.google.android.gms.internal.zzmh
    protected void colPut(K k, V v) {
        this.zzagA.put(k, v);
    }

    @Override // com.google.android.gms.internal.zzmh
    protected void colRemoveAt(int i) {
        this.zzagA.removeAt(i);
    }

    @Override // com.google.android.gms.internal.zzmh
    protected V colSetValue(int i, V v) {
        return this.zzagA.setValueAt(i, v);
    }
}

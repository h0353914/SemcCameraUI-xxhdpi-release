package com.google.android.gms.internal;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: Add missing generic type declarations: [K] */
/* JADX INFO: loaded from: classes.dex */
final class zzmh$zzc<K> implements Set<K> {
    final /* synthetic */ zzmh zzagL;

    zzmh$zzc(zzmh zzmhVar) {
        this.zzagL = zzmhVar;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean add(K k) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean addAll(Collection<? extends K> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public void clear() {
        this.zzagL.colClear();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean contains(Object obj) {
        return this.zzagL.colIndexOfKey(obj) >= 0;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        return zzmh.containsAllHelper(this.zzagL.colGetMap(), collection);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean equals(Object obj) {
        return zzmh.equalsSetHelper(this, obj);
    }

    @Override // java.util.Set, java.util.Collection
    public int hashCode() {
        int iHashCode = 0;
        for (int iColGetSize = this.zzagL.colGetSize() - 1; iColGetSize >= 0; iColGetSize--) {
            Object objColGetEntry = this.zzagL.colGetEntry(iColGetSize, 0);
            iHashCode += objColGetEntry == null ? 0 : objColGetEntry.hashCode();
        }
        return iHashCode;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean isEmpty() {
        return this.zzagL.colGetSize() == 0;
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public Iterator<K> iterator() {
        return new zzmh$zza(this.zzagL, 0);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean remove(Object obj) {
        int iColIndexOfKey = this.zzagL.colIndexOfKey(obj);
        if (iColIndexOfKey < 0) {
            return false;
        }
        this.zzagL.colRemoveAt(iColIndexOfKey);
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        return zzmh.removeAllHelper(this.zzagL.colGetMap(), collection);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        return zzmh.retainAllHelper(this.zzagL.colGetMap(), collection);
    }

    @Override // java.util.Set, java.util.Collection
    public int size() {
        return this.zzagL.colGetSize();
    }

    @Override // java.util.Set, java.util.Collection
    public Object[] toArray() {
        return this.zzagL.toArrayHelper(0);
    }

    @Override // java.util.Set, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) this.zzagL.toArrayHelper(tArr, 0);
    }
}

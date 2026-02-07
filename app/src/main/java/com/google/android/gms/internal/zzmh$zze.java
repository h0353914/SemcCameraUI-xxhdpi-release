package com.google.android.gms.internal;

import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: Add missing generic type declarations: [V] */
/* JADX INFO: loaded from: classes.dex */
final class zzmh$zze<V> implements Collection<V> {
    final /* synthetic */ zzmh zzagL;

    zzmh$zze(zzmh zzmhVar) {
        this.zzagL = zzmhVar;
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
        this.zzagL.colClear();
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        return this.zzagL.colIndexOfValue(obj) >= 0;
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
        return this.zzagL.colGetSize() == 0;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator<V> iterator() {
        return new zzmh$zza(this.zzagL, 1);
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        int iColIndexOfValue = this.zzagL.colIndexOfValue(obj);
        if (iColIndexOfValue < 0) {
            return false;
        }
        this.zzagL.colRemoveAt(iColIndexOfValue);
        return true;
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        int iColGetSize = this.zzagL.colGetSize();
        int i = 0;
        boolean z = false;
        while (i < iColGetSize) {
            if (collection.contains(this.zzagL.colGetEntry(i, 1))) {
                this.zzagL.colRemoveAt(i);
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
        int iColGetSize = this.zzagL.colGetSize();
        int i = 0;
        boolean z = false;
        while (i < iColGetSize) {
            if (!collection.contains(this.zzagL.colGetEntry(i, 1))) {
                this.zzagL.colRemoveAt(i);
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
        return this.zzagL.colGetSize();
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return this.zzagL.toArrayHelper(1);
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) this.zzagL.toArrayHelper(tArr, 1);
    }
}

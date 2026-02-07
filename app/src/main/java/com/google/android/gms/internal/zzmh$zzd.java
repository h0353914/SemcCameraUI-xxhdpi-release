package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.Map$Entry;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX INFO: loaded from: classes.dex */
final class zzmh$zzd<K, V> implements Iterator<Map$Entry<K, V>>, Map$Entry<K, V> {
    int mEnd;
    boolean mEntryValid = false;
    int mIndex = -1;
    final /* synthetic */ zzmh zzagL;

    zzmh$zzd(zzmh zzmhVar) {
        this.zzagL = zzmhVar;
        this.mEnd = zzmhVar.colGetSize() - 1;
    }

    @Override // java.util.Map$Entry
    public final boolean equals(Object obj) {
        if (!this.mEntryValid) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        if (!(obj instanceof Map$Entry)) {
            return false;
        }
        Map$Entry map$Entry = (Map$Entry) obj;
        return zzmf.equal(map$Entry.getKey(), this.zzagL.colGetEntry(this.mIndex, 0)) && zzmf.equal(map$Entry.getValue(), this.zzagL.colGetEntry(this.mIndex, 1));
    }

    @Override // java.util.Map$Entry
    public K getKey() {
        if (this.mEntryValid) {
            return (K) this.zzagL.colGetEntry(this.mIndex, 0);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    @Override // java.util.Map$Entry
    public V getValue() {
        if (this.mEntryValid) {
            return (V) this.zzagL.colGetEntry(this.mIndex, 1);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.mIndex < this.mEnd;
    }

    @Override // java.util.Map$Entry
    public final int hashCode() {
        if (!this.mEntryValid) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        Object objColGetEntry = this.zzagL.colGetEntry(this.mIndex, 0);
        Object objColGetEntry2 = this.zzagL.colGetEntry(this.mIndex, 1);
        return (objColGetEntry == null ? 0 : objColGetEntry.hashCode()) ^ (objColGetEntry2 != null ? objColGetEntry2.hashCode() : 0);
    }

    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ Object next() {
        return next();
    }

    @Override // java.util.Iterator
    public Map$Entry<K, V> next() {
        this.mIndex++;
        this.mEntryValid = true;
        return this;
    }

    @Override // java.util.Iterator
    public void remove() {
        if (!this.mEntryValid) {
            throw new IllegalStateException();
        }
        this.zzagL.colRemoveAt(this.mIndex);
        this.mIndex--;
        this.mEnd--;
        this.mEntryValid = false;
    }

    @Override // java.util.Map$Entry
    public V setValue(V v) {
        if (this.mEntryValid) {
            return (V) this.zzagL.colSetValue(this.mIndex, v);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    public final String toString() {
        return getKey() + "=" + getValue();
    }
}

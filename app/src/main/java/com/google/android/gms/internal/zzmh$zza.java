package com.google.android.gms.internal;

import java.util.Iterator;

final class zzmh$zza<T> implements Iterator<T> {
    boolean mCanRemove = false;
    int mIndex;
    final int mOffset;
    int mSize;
    final /* synthetic */ zzmh zzagL;

    zzmh$zza(zzmh zzmhVar, int i) {
        this.zzagL = zzmhVar;
        this.mOffset = i;
        this.mSize = zzmhVar.colGetSize();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.mIndex < this.mSize;
    }

    @Override // java.util.Iterator
    public T next() {
        T t = (T) this.zzagL.colGetEntry(this.mIndex, this.mOffset);
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
        this.zzagL.colRemoveAt(this.mIndex);
    }
}

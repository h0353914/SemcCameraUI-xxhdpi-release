package android.arch.core.internal;

import android.support.annotation.NonNull;
import java.util.Iterator;
import java.util.Map$Entry;

abstract class SafeIterableMap$ListIterator<K, V> implements Iterator<Map$Entry<K, V>>, SafeIterableMap$SupportRemove<K, V> {
    SafeIterableMap$Entry<K, V> mExpectedEnd;
    SafeIterableMap$Entry<K, V> mNext;

    abstract SafeIterableMap$Entry<K, V> backward(SafeIterableMap$Entry<K, V> safeIterableMap$Entry);

    abstract SafeIterableMap$Entry<K, V> forward(SafeIterableMap$Entry<K, V> safeIterableMap$Entry);

    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ Object next() {
        return next();
    }

    SafeIterableMap$ListIterator(SafeIterableMap$Entry<K, V> safeIterableMap$Entry, SafeIterableMap$Entry<K, V> safeIterableMap$Entry2) {
        this.mExpectedEnd = safeIterableMap$Entry2;
        this.mNext = safeIterableMap$Entry;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.mNext != null;
    }

    @Override // android.arch.core.internal.SafeIterableMap$SupportRemove
    public void supportRemove(@NonNull SafeIterableMap$Entry<K, V> safeIterableMap$Entry) {
        if (this.mExpectedEnd == safeIterableMap$Entry && safeIterableMap$Entry == this.mNext) {
            this.mNext = null;
            this.mExpectedEnd = null;
        }
        if (this.mExpectedEnd == safeIterableMap$Entry) {
            this.mExpectedEnd = backward(this.mExpectedEnd);
        }
        if (this.mNext == safeIterableMap$Entry) {
            this.mNext = nextNode();
        }
    }

    private SafeIterableMap$Entry<K, V> nextNode() {
        if (this.mNext == this.mExpectedEnd || this.mExpectedEnd == null) {
            return null;
        }
        return forward(this.mNext);
    }

    @Override // java.util.Iterator
    public Map$Entry<K, V> next() {
        SafeIterableMap$Entry<K, V> safeIterableMap$Entry = this.mNext;
        this.mNext = nextNode();
        return safeIterableMap$Entry;
    }
}

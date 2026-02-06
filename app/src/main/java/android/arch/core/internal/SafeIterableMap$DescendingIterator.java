package android.arch.core.internal;

class SafeIterableMap$DescendingIterator<K, V> extends SafeIterableMap$ListIterator<K, V> {
    SafeIterableMap$DescendingIterator(SafeIterableMap$Entry<K, V> safeIterableMap$Entry, SafeIterableMap$Entry<K, V> safeIterableMap$Entry2) {
        super(safeIterableMap$Entry, safeIterableMap$Entry2);
    }

    @Override // android.arch.core.internal.SafeIterableMap$ListIterator
    SafeIterableMap$Entry<K, V> forward(SafeIterableMap$Entry<K, V> safeIterableMap$Entry) {
        return safeIterableMap$Entry.mPrevious;
    }

    @Override // android.arch.core.internal.SafeIterableMap$ListIterator
    SafeIterableMap$Entry<K, V> backward(SafeIterableMap$Entry<K, V> safeIterableMap$Entry) {
        return safeIterableMap$Entry.mNext;
    }
}

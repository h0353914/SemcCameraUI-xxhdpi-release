package android.arch.core.internal;

import android.support.annotation.NonNull;
import java.util.Map$Entry;

/* JADX INFO: loaded from: classes.dex */
class SafeIterableMap$Entry<K, V> implements Map$Entry<K, V> {

    @NonNull
    final K mKey;
    SafeIterableMap$Entry<K, V> mNext;
    SafeIterableMap$Entry<K, V> mPrevious;

    @NonNull
    final V mValue;

    SafeIterableMap$Entry(@NonNull K k, @NonNull V v) {
        this.mKey = k;
        this.mValue = v;
    }

    @Override // java.util.Map$Entry
    @NonNull
    public K getKey() {
        return this.mKey;
    }

    @Override // java.util.Map$Entry
    @NonNull
    public V getValue() {
        return this.mValue;
    }

    @Override // java.util.Map$Entry
    public V setValue(V v) {
        throw new UnsupportedOperationException("An entry modification is not supported");
    }

    public String toString() {
        return this.mKey + "=" + this.mValue;
    }

    @Override // java.util.Map$Entry
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SafeIterableMap$Entry)) {
            return false;
        }
        SafeIterableMap$Entry safeIterableMap$Entry = (SafeIterableMap$Entry) obj;
        return this.mKey.equals(safeIterableMap$Entry.mKey) && this.mValue.equals(safeIterableMap$Entry.mValue);
    }
}

package com.google.android.gms.internal;

import java.util.Collection;
import java.util.Map;
import java.util.Map$Entry;
import java.util.Set;

public class zzme<K, V> extends zzmi<K, V> implements Map<K, V> {
    zzmh<K, V> zzagz;

    private zzmh<K, V> zzpx() {
        if (this.zzagz == null) {
            this.zzagz = new zzme$1(this);
        }
        return this.zzagz;
    }

    @Override // java.util.Map
    public Set<Map$Entry<K, V>> entrySet() {
        return zzpx().getEntrySet();
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return zzpx().getKeySet();
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        ensureCapacity(this.mSize + map.size());
        for (Map$Entry<? extends K, ? extends V> map$Entry : map.entrySet()) {
            put(map$Entry.getKey(), map$Entry.getValue());
        }
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return zzpx().getValues();
    }
}

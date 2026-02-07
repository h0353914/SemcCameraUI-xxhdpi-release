package com.google.android.gms.internal;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map$Entry;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
abstract class zzmh<K, V> {

    /* JADX WARN: Incorrect inner types in field signature: Lcom/google/android/gms/internal/zzmh<TK;TV;>.zzb; */
    zzmh$zzb zzagI;

    /* JADX WARN: Incorrect inner types in field signature: Lcom/google/android/gms/internal/zzmh<TK;TV;>.zzc; */
    zzmh$zzc zzagJ;

    /* JADX WARN: Incorrect inner types in field signature: Lcom/google/android/gms/internal/zzmh<TK;TV;>.zze; */
    zzmh$zze zzagK;

    zzmh() {
    }

    public static <K, V> boolean containsAllHelper(Map<K, V> map, Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!map.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static <T> boolean equalsSetHelper(Set<T> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public static <K, V> boolean removeAllHelper(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            map.remove(it.next());
        }
        return size != map.size();
    }

    public static <K, V> boolean retainAllHelper(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<K> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != map.size();
    }

    protected abstract void colClear();

    protected abstract Object colGetEntry(int i, int i2);

    protected abstract Map<K, V> colGetMap();

    protected abstract int colGetSize();

    protected abstract int colIndexOfKey(Object obj);

    protected abstract int colIndexOfValue(Object obj);

    protected abstract void colPut(K k, V v);

    protected abstract void colRemoveAt(int i);

    protected abstract V colSetValue(int i, V v);

    public Set<Map$Entry<K, V>> getEntrySet() {
        if (this.zzagI == null) {
            this.zzagI = new zzmh$zzb(this);
        }
        return this.zzagI;
    }

    public Set<K> getKeySet() {
        if (this.zzagJ == null) {
            this.zzagJ = new zzmh$zzc(this);
        }
        return this.zzagJ;
    }

    public Collection<V> getValues() {
        if (this.zzagK == null) {
            this.zzagK = new zzmh$zze(this);
        }
        return this.zzagK;
    }

    public Object[] toArrayHelper(int i) {
        int iColGetSize = colGetSize();
        Object[] objArr = new Object[iColGetSize];
        for (int i2 = 0; i2 < iColGetSize; i2++) {
            objArr[i2] = colGetEntry(i2, i);
        }
        return objArr;
    }

    public <T> T[] toArrayHelper(T[] tArr, int i) {
        int iColGetSize = colGetSize();
        if (tArr.length < iColGetSize) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), iColGetSize));
        }
        for (int i2 = 0; i2 < iColGetSize; i2++) {
            tArr[i2] = colGetEntry(i2, i);
        }
        if (tArr.length > iColGetSize) {
            tArr[iColGetSize] = null;
        }
        return tArr;
    }
}

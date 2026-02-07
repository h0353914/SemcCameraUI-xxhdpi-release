package com.google.gson.internal;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map$Entry;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX INFO: loaded from: classes.dex */
class LinkedTreeMap$EntrySet<K, V> extends AbstractSet<Map$Entry<K, V>> {
    final /* synthetic */ LinkedTreeMap this$0;

    LinkedTreeMap$EntrySet(LinkedTreeMap linkedTreeMap) {
        this.this$0 = linkedTreeMap;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.this$0.size;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<Map$Entry<K, V>> iterator() {
        return new LinkedTreeMap$EntrySet$1(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return (obj instanceof Map$Entry) && this.this$0.findByEntry((Map$Entry) obj) != null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        LinkedTreeMap$Node<K, V> linkedTreeMap$NodeFindByEntry;
        if (!(obj instanceof Map$Entry) || (linkedTreeMap$NodeFindByEntry = this.this$0.findByEntry((Map$Entry) obj)) == null) {
            return false;
        }
        this.this$0.removeInternal(linkedTreeMap$NodeFindByEntry, true);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.this$0.clear();
    }
}

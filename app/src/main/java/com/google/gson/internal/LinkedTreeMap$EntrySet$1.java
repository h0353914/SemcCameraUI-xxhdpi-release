package com.google.gson.internal;

import java.util.Map$Entry;

/* JADX INFO: Add missing generic type declarations: [V, K] */
class LinkedTreeMap$EntrySet$1<K, V> extends LinkedTreeMap<K, V>.LinkedTreeMap$LinkedTreeMapIterator<Map$Entry<K, V>> {
    final /* synthetic */ LinkedTreeMap$EntrySet this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LinkedTreeMap$EntrySet$1(LinkedTreeMap$EntrySet linkedTreeMap$EntrySet) {
        super(linkedTreeMap$EntrySet.this$0, null);
        this.this$1 = linkedTreeMap$EntrySet;
    }

    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ Object next() {
        return next();
    }

    @Override // java.util.Iterator
    public Map$Entry<K, V> next() {
        return nextNode();
    }
}

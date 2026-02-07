package com.google.gson.internal;

/* JADX INFO: Add missing generic type declarations: [K] */
/* JADX INFO: loaded from: classes.dex */
class LinkedTreeMap$KeySet$1<K> extends LinkedTreeMap<K, V>.LinkedTreeMap$LinkedTreeMapIterator<K> {
    final /* synthetic */ LinkedTreeMap$KeySet this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LinkedTreeMap$KeySet$1(LinkedTreeMap$KeySet linkedTreeMap$KeySet) {
        super(linkedTreeMap$KeySet.this$0, null);
        this.this$1 = linkedTreeMap$KeySet;
    }

    @Override // java.util.Iterator
    public K next() {
        return nextNode().key;
    }
}

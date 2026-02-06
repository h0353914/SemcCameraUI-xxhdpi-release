package com.google.gson.internal;

import java.util.Comparator;

class LinkedTreeMap$1 implements Comparator<Comparable> {
    LinkedTreeMap$1() {
    }

    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(Comparable comparable, Comparable comparable2) {
        return compare2(comparable, comparable2);
    }

    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(Comparable comparable, Comparable comparable2) {
        return comparable.compareTo(comparable2);
    }
}

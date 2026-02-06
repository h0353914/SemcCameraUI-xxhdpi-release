package com.google.gson.internal;

import java.util.LinkedList;

/* JADX INFO: Add missing generic type declarations: [T] */
class ConstructorConstructor$7<T> implements ObjectConstructor<T> {
    final /* synthetic */ ConstructorConstructor this$0;

    ConstructorConstructor$7(ConstructorConstructor constructorConstructor) {
        this.this$0 = constructorConstructor;
    }

    @Override // com.google.gson.internal.ObjectConstructor
    public T construct() {
        return (T) new LinkedList();
    }
}

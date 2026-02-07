package com.google.gson.internal;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
class ConstructorConstructor$11<T> implements ObjectConstructor<T> {
    final /* synthetic */ ConstructorConstructor this$0;

    ConstructorConstructor$11(ConstructorConstructor constructorConstructor) {
        this.this$0 = constructorConstructor;
    }

    @Override // com.google.gson.internal.ObjectConstructor
    public T construct() {
        return (T) new LinkedTreeMap();
    }
}

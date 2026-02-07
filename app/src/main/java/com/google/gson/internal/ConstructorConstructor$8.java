package com.google.gson.internal;

import java.util.ArrayList;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
class ConstructorConstructor$8<T> implements ObjectConstructor<T> {
    final /* synthetic */ ConstructorConstructor this$0;

    ConstructorConstructor$8(ConstructorConstructor constructorConstructor) {
        this.this$0 = constructorConstructor;
    }

    @Override // com.google.gson.internal.ObjectConstructor
    public T construct() {
        return (T) new ArrayList();
    }
}

package com.google.gson.internal;

import com.google.gson.InstanceCreator;
import java.lang.reflect.Type;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
class ConstructorConstructor$1<T> implements ObjectConstructor<T> {
    final /* synthetic */ ConstructorConstructor this$0;
    final /* synthetic */ Type val$type;
    final /* synthetic */ InstanceCreator val$typeCreator;

    ConstructorConstructor$1(ConstructorConstructor constructorConstructor, InstanceCreator instanceCreator, Type type) {
        this.this$0 = constructorConstructor;
        this.val$typeCreator = instanceCreator;
        this.val$type = type;
    }

    @Override // com.google.gson.internal.ObjectConstructor
    public T construct() {
        return (T) this.val$typeCreator.createInstance(this.val$type);
    }
}

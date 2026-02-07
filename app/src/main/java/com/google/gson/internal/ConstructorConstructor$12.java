package com.google.gson.internal;

import java.lang.reflect.Type;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
class ConstructorConstructor$12<T> implements ObjectConstructor<T> {
    final /* synthetic */ ConstructorConstructor this$0;
    private final UnsafeAllocator unsafeAllocator = UnsafeAllocator.create();
    final /* synthetic */ Class val$rawType;
    final /* synthetic */ Type val$type;

    ConstructorConstructor$12(ConstructorConstructor constructorConstructor, Class cls, Type type) {
        this.this$0 = constructorConstructor;
        this.val$rawType = cls;
        this.val$type = type;
    }

    @Override // com.google.gson.internal.ObjectConstructor
    public T construct() {
        try {
            return (T) this.unsafeAllocator.newInstance(this.val$rawType);
        } catch (Exception e) {
            throw new RuntimeException("Unable to invoke no-args constructor for " + this.val$type + ". Register an InstanceCreator with Gson for this type may fix this problem.", e);
        }
    }
}

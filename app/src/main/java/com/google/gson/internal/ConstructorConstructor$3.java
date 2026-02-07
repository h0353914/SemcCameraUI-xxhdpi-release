package com.google.gson.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
class ConstructorConstructor$3<T> implements ObjectConstructor<T> {
    final /* synthetic */ ConstructorConstructor this$0;
    final /* synthetic */ Constructor val$constructor;

    ConstructorConstructor$3(ConstructorConstructor constructorConstructor, Constructor constructor) {
        this.this$0 = constructorConstructor;
        this.val$constructor = constructor;
    }

    @Override // com.google.gson.internal.ObjectConstructor
    public T construct() {
        try {
            return (T) this.val$constructor.newInstance(null);
        } catch (IllegalAccessException e) {
            throw new AssertionError(e);
        } catch (InstantiationException e2) {
            throw new RuntimeException("Failed to invoke " + this.val$constructor + " with no args", e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException("Failed to invoke " + this.val$constructor + " with no args", e3.getTargetException());
        }
    }
}

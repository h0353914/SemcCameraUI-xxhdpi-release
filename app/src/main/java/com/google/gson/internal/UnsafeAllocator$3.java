package com.google.gson.internal;

import java.lang.reflect.Method;

class UnsafeAllocator$3 extends UnsafeAllocator {
    final /* synthetic */ int val$constructorId;
    final /* synthetic */ Method val$newInstance;

    UnsafeAllocator$3(Method method, int i) {
        this.val$newInstance = method;
        this.val$constructorId = i;
    }

    @Override // com.google.gson.internal.UnsafeAllocator
    public <T> T newInstance(Class<T> cls) throws Exception {
        return (T) this.val$newInstance.invoke(null, cls, Integer.valueOf(this.val$constructorId));
    }
}

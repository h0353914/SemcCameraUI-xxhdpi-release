package com.google.gson.internal;

import java.lang.reflect.Method;

class UnsafeAllocator$2 extends UnsafeAllocator {
    final /* synthetic */ Method val$newInstance;

    UnsafeAllocator$2(Method method) {
        this.val$newInstance = method;
    }

    @Override // com.google.gson.internal.UnsafeAllocator
    public <T> T newInstance(Class<T> cls) throws Exception {
        return (T) this.val$newInstance.invoke(null, cls, Object.class);
    }
}

package com.google.gson.internal;

import java.lang.reflect.Method;

class UnsafeAllocator$1 extends UnsafeAllocator {
    final /* synthetic */ Method val$allocateInstance;
    final /* synthetic */ Object val$unsafe;

    UnsafeAllocator$1(Method method, Object obj) {
        this.val$allocateInstance = method;
        this.val$unsafe = obj;
    }

    @Override // com.google.gson.internal.UnsafeAllocator
    public <T> T newInstance(Class<T> cls) throws Exception {
        return (T) this.val$allocateInstance.invoke(this.val$unsafe, cls);
    }
}

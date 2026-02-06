package com.google.gson.internal;

class UnsafeAllocator$4 extends UnsafeAllocator {
    UnsafeAllocator$4() {
    }

    @Override // com.google.gson.internal.UnsafeAllocator
    public <T> T newInstance(Class<T> cls) {
        throw new UnsupportedOperationException("Cannot allocate " + cls);
    }
}

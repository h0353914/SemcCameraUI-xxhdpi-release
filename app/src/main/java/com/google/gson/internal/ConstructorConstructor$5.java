package com.google.gson.internal;

import com.google.gson.JsonIOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumSet;

/* JADX INFO: Add missing generic type declarations: [T] */
class ConstructorConstructor$5<T> implements ObjectConstructor<T> {
    final /* synthetic */ ConstructorConstructor this$0;
    final /* synthetic */ Type val$type;

    ConstructorConstructor$5(ConstructorConstructor constructorConstructor, Type type) {
        this.this$0 = constructorConstructor;
        this.val$type = type;
    }

    @Override // com.google.gson.internal.ObjectConstructor
    public T construct() {
        if (this.val$type instanceof ParameterizedType) {
            Type type = ((ParameterizedType) this.val$type).getActualTypeArguments()[0];
            if (type instanceof Class) {
                return (T) EnumSet.noneOf((Class) type);
            }
            throw new JsonIOException("Invalid EnumSet type: " + this.val$type.toString());
        }
        throw new JsonIOException("Invalid EnumSet type: " + this.val$type.toString());
    }
}

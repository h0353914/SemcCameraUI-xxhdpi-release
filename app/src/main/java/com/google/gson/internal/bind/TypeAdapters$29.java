package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;

class TypeAdapters$29 implements TypeAdapterFactory {
    final /* synthetic */ Class val$boxed;
    final /* synthetic */ TypeAdapter val$typeAdapter;
    final /* synthetic */ Class val$unboxed;

    TypeAdapters$29(Class cls, Class cls2, TypeAdapter typeAdapter) {
        this.val$unboxed = cls;
        this.val$boxed = cls2;
        this.val$typeAdapter = typeAdapter;
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        Class<? super T> rawType = typeToken.getRawType();
        if (rawType == this.val$unboxed || rawType == this.val$boxed) {
            return this.val$typeAdapter;
        }
        return null;
    }

    public String toString() {
        return "Factory[type=" + this.val$boxed.getName() + "+" + this.val$unboxed.getName() + ",adapter=" + this.val$typeAdapter + "]";
    }
}

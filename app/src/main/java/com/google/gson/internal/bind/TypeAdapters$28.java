package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;

class TypeAdapters$28 implements TypeAdapterFactory {
    final /* synthetic */ Class val$type;
    final /* synthetic */ TypeAdapter val$typeAdapter;

    TypeAdapters$28(Class cls, TypeAdapter typeAdapter) {
        this.val$type = cls;
        this.val$typeAdapter = typeAdapter;
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        if (typeToken.getRawType() == this.val$type) {
            return this.val$typeAdapter;
        }
        return null;
    }

    public String toString() {
        return "Factory[type=" + this.val$type.getName() + ",adapter=" + this.val$typeAdapter + "]";
    }
}

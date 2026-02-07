package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;

/* JADX INFO: loaded from: classes.dex */
class TypeAdapters$31 implements TypeAdapterFactory {
    final /* synthetic */ Class val$clazz;
    final /* synthetic */ TypeAdapter val$typeAdapter;

    TypeAdapters$31(Class cls, TypeAdapter typeAdapter) {
        this.val$clazz = cls;
        this.val$typeAdapter = typeAdapter;
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        if (this.val$clazz.isAssignableFrom(typeToken.getRawType())) {
            return this.val$typeAdapter;
        }
        return null;
    }

    public String toString() {
        return "Factory[typeHierarchy=" + this.val$clazz.getName() + ",adapter=" + this.val$typeAdapter + "]";
    }
}

package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;

/* JADX INFO: loaded from: classes.dex */
class TypeAdapters$30 implements TypeAdapterFactory {
    final /* synthetic */ Class val$base;
    final /* synthetic */ Class val$sub;
    final /* synthetic */ TypeAdapter val$typeAdapter;

    TypeAdapters$30(Class cls, Class cls2, TypeAdapter typeAdapter) {
        this.val$base = cls;
        this.val$sub = cls2;
        this.val$typeAdapter = typeAdapter;
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        Class<? super T> rawType = typeToken.getRawType();
        if (rawType == this.val$base || rawType == this.val$sub) {
            return this.val$typeAdapter;
        }
        return null;
    }

    public String toString() {
        return "Factory[type=" + this.val$base.getName() + "+" + this.val$sub.getName() + ",adapter=" + this.val$typeAdapter + "]";
    }
}

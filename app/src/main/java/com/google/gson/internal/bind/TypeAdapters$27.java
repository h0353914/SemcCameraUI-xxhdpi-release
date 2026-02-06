package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;

class TypeAdapters$27 implements TypeAdapterFactory {
    final /* synthetic */ TypeToken val$type;
    final /* synthetic */ TypeAdapter val$typeAdapter;

    TypeAdapters$27(TypeToken typeToken, TypeAdapter typeAdapter) {
        this.val$type = typeToken;
        this.val$typeAdapter = typeAdapter;
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        if (typeToken.equals(this.val$type)) {
            return this.val$typeAdapter;
        }
        return null;
    }
}

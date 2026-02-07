package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;

/* JADX INFO: loaded from: classes.dex */
class ObjectTypeAdapter$1 implements TypeAdapterFactory {
    ObjectTypeAdapter$1() {
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        if (typeToken.getRawType() == Object.class) {
            return new ObjectTypeAdapter(gson, null);
        }
        return null;
    }
}

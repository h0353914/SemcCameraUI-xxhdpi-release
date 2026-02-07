package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.C$Gson$Types;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes.dex */
class ArrayTypeAdapter$1 implements TypeAdapterFactory {
    ArrayTypeAdapter$1() {
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        Type type = typeToken.getType();
        if (!(type instanceof GenericArrayType) && (!(type instanceof Class) || !((Class) type).isArray())) {
            return null;
        }
        Type arrayComponentType = C$Gson$Types.getArrayComponentType(type);
        return new ArrayTypeAdapter(gson, gson.getAdapter(TypeToken.get(arrayComponentType)), C$Gson$Types.getRawType(arrayComponentType));
    }
}

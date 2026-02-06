package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import java.sql.Timestamp;
import java.util.Date;

class TypeAdapters$22 implements TypeAdapterFactory {
    TypeAdapters$22() {
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        if (typeToken.getRawType() != Timestamp.class) {
            return null;
        }
        return new TypeAdapters$22$1(this, gson.getAdapter(Date.class));
    }
}

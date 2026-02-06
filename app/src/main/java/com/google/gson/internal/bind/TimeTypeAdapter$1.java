package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import java.sql.Time;

class TimeTypeAdapter$1 implements TypeAdapterFactory {
    TimeTypeAdapter$1() {
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        if (typeToken.getRawType() == Time.class) {
            return new TimeTypeAdapter();
        }
        return null;
    }
}

package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import java.sql.Date;

/* JADX INFO: loaded from: classes.dex */
class SqlDateTypeAdapter$1 implements TypeAdapterFactory {
    SqlDateTypeAdapter$1() {
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        if (typeToken.getRawType() == Date.class) {
            return new SqlDateTypeAdapter();
        }
        return null;
    }
}

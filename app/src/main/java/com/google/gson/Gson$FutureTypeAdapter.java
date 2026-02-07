package com.google.gson;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
class Gson$FutureTypeAdapter<T> extends TypeAdapter<T> {
    private TypeAdapter<T> delegate;

    Gson$FutureTypeAdapter() {
    }

    public void setDelegate(TypeAdapter<T> typeAdapter) {
        if (this.delegate != null) {
            throw new AssertionError();
        }
        this.delegate = typeAdapter;
    }

    @Override // com.google.gson.TypeAdapter
    public T read(JsonReader jsonReader) throws IOException {
        if (this.delegate == null) {
            throw new IllegalStateException();
        }
        return this.delegate.read(jsonReader);
    }

    @Override // com.google.gson.TypeAdapter
    public void write(JsonWriter jsonWriter, T t) throws IOException {
        if (this.delegate == null) {
            throw new IllegalStateException();
        }
        this.delegate.write(jsonWriter, t);
    }
}

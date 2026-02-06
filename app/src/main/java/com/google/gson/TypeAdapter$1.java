package com.google.gson;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

/* JADX INFO: Add missing generic type declarations: [T] */
class TypeAdapter$1<T> extends TypeAdapter<T> {
    final /* synthetic */ TypeAdapter this$0;

    TypeAdapter$1(TypeAdapter typeAdapter) {
        this.this$0 = typeAdapter;
    }

    @Override // com.google.gson.TypeAdapter
    public void write(JsonWriter jsonWriter, T t) throws IOException {
        if (t == null) {
            jsonWriter.nullValue();
        } else {
            this.this$0.write(jsonWriter, t);
        }
    }

    @Override // com.google.gson.TypeAdapter
    public T read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        return (T) this.this$0.read(jsonReader);
    }
}

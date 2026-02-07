package com.google.gson.internal.bind;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
class TypeAdapters$4 extends TypeAdapter<Boolean> {
    TypeAdapters$4() {
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ Boolean read(JsonReader jsonReader) throws IOException {
        return read(jsonReader);
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Boolean bool) throws IOException {
        write2(jsonWriter, bool);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.gson.TypeAdapter
    public Boolean read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        return Boolean.valueOf(jsonReader.nextString());
    }

    /* JADX INFO: renamed from: write, reason: avoid collision after fix types in other method */
    public void write2(JsonWriter jsonWriter, Boolean bool) throws IOException {
        jsonWriter.value(bool == null ? "null" : bool.toString());
    }
}

package com.google.gson.internal.bind;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

class TypeAdapters$16 extends TypeAdapter<StringBuilder> {
    TypeAdapters$16() {
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ StringBuilder read(JsonReader jsonReader) throws IOException {
        return read2(jsonReader);
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, StringBuilder sb) throws IOException {
        write2(jsonWriter, sb);
    }

    @Override // com.google.gson.TypeAdapter
    /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
    public StringBuilder read2(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        return new StringBuilder(jsonReader.nextString());
    }

    /* JADX INFO: renamed from: write, reason: avoid collision after fix types in other method */
    public void write2(JsonWriter jsonWriter, StringBuilder sb) throws IOException {
        jsonWriter.value(sb == null ? null : sb.toString());
    }
}

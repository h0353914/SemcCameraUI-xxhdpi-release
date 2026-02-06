package com.google.gson.internal.bind;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

class TypeAdapters$17 extends TypeAdapter<StringBuffer> {
    TypeAdapters$17() {
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ StringBuffer read(JsonReader jsonReader) throws IOException {
        return read2(jsonReader);
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, StringBuffer stringBuffer) throws IOException {
        write2(jsonWriter, stringBuffer);
    }

    @Override // com.google.gson.TypeAdapter
    /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
    public StringBuffer read2(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        return new StringBuffer(jsonReader.nextString());
    }

    /* JADX INFO: renamed from: write, reason: avoid collision after fix types in other method */
    public void write2(JsonWriter jsonWriter, StringBuffer stringBuffer) throws IOException {
        jsonWriter.value(stringBuffer == null ? null : stringBuffer.toString());
    }
}

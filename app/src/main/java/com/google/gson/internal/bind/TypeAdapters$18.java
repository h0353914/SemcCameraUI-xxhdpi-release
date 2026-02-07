package com.google.gson.internal.bind;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
class TypeAdapters$18 extends TypeAdapter<URL> {
    TypeAdapters$18() {
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ URL read(JsonReader jsonReader) throws IOException {
        return read2(jsonReader);
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, URL url) throws IOException {
        write2(jsonWriter, url);
    }

    @Override // com.google.gson.TypeAdapter
    /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
    public URL read2(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        String strNextString = jsonReader.nextString();
        if ("null".equals(strNextString)) {
            return null;
        }
        return new URL(strNextString);
    }

    /* JADX INFO: renamed from: write, reason: avoid collision after fix types in other method */
    public void write2(JsonWriter jsonWriter, URL url) throws IOException {
        jsonWriter.value(url == null ? null : url.toExternalForm());
    }
}

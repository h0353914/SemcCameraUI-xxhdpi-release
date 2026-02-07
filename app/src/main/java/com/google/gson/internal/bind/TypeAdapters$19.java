package com.google.gson.internal.bind;

import com.google.gson.JsonIOException;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;

/* JADX INFO: loaded from: classes.dex */
class TypeAdapters$19 extends TypeAdapter<URI> {
    TypeAdapters$19() {
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ URI read(JsonReader jsonReader) throws IOException {
        return read2(jsonReader);
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, URI uri) throws IOException {
        write2(jsonWriter, uri);
    }

    @Override // com.google.gson.TypeAdapter
    /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
    public URI read2(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        try {
            String strNextString = jsonReader.nextString();
            if ("null".equals(strNextString)) {
                return null;
            }
            return new URI(strNextString);
        } catch (URISyntaxException e) {
            throw new JsonIOException(e);
        }
    }

    /* JADX INFO: renamed from: write, reason: avoid collision after fix types in other method */
    public void write2(JsonWriter jsonWriter, URI uri) throws IOException {
        jsonWriter.value(uri == null ? null : uri.toASCIIString());
    }
}

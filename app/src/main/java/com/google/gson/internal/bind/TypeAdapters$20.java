package com.google.gson.internal.bind;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.net.InetAddress;

class TypeAdapters$20 extends TypeAdapter<InetAddress> {
    TypeAdapters$20() {
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ InetAddress read(JsonReader jsonReader) throws IOException {
        return read2(jsonReader);
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, InetAddress inetAddress) throws IOException {
        write2(jsonWriter, inetAddress);
    }

    @Override // com.google.gson.TypeAdapter
    /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
    public InetAddress read2(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        return InetAddress.getByName(jsonReader.nextString());
    }

    /* JADX INFO: renamed from: write, reason: avoid collision after fix types in other method */
    public void write2(JsonWriter jsonWriter, InetAddress inetAddress) throws IOException {
        jsonWriter.value(inetAddress == null ? null : inetAddress.getHostAddress());
    }
}

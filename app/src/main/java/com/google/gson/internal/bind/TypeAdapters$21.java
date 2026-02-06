package com.google.gson.internal.bind;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.UUID;

class TypeAdapters$21 extends TypeAdapter<UUID> {
    TypeAdapters$21() {
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ UUID read(JsonReader jsonReader) throws IOException {
        return read2(jsonReader);
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, UUID uuid) throws IOException {
        write2(jsonWriter, uuid);
    }

    @Override // com.google.gson.TypeAdapter
    /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
    public UUID read2(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        return UUID.fromString(jsonReader.nextString());
    }

    /* JADX INFO: renamed from: write, reason: avoid collision after fix types in other method */
    public void write2(JsonWriter jsonWriter, UUID uuid) throws IOException {
        jsonWriter.value(uuid == null ? null : uuid.toString());
    }
}

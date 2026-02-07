package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
class TypeAdapters$6 extends TypeAdapter<Number> {
    TypeAdapters$6() {
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ Number read(JsonReader jsonReader) throws IOException {
        return read(jsonReader);
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Number number) throws IOException {
        write2(jsonWriter, number);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.gson.TypeAdapter
    public Number read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        try {
            return Short.valueOf((short) jsonReader.nextInt());
        } catch (NumberFormatException e) {
            throw new JsonSyntaxException(e);
        }
    }

    /* JADX INFO: renamed from: write, reason: avoid collision after fix types in other method */
    public void write2(JsonWriter jsonWriter, Number number) throws IOException {
        jsonWriter.value(number);
    }
}

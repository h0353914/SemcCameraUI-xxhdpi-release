package com.google.gson;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
class Gson$5 extends TypeAdapter<Number> {
    final /* synthetic */ Gson this$0;

    Gson$5(Gson gson) {
        this.this$0 = gson;
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
        return Long.valueOf(jsonReader.nextLong());
    }

    /* JADX INFO: renamed from: write, reason: avoid collision after fix types in other method */
    public void write2(JsonWriter jsonWriter, Number number) throws IOException {
        if (number == null) {
            jsonWriter.nullValue();
        } else {
            jsonWriter.value(number.toString());
        }
    }
}

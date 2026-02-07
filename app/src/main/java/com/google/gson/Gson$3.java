package com.google.gson;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
class Gson$3 extends TypeAdapter<Number> {
    final /* synthetic */ Gson this$0;

    Gson$3(Gson gson) {
        this.this$0 = gson;
    }

    @Override // com.google.gson.TypeAdapter
    /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
    public /* bridge */ /* synthetic */ Number read2(JsonReader jsonReader) throws IOException {
        return read(jsonReader);
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Number number) throws IOException {
        write2(jsonWriter, number);
    }

    @Override // com.google.gson.TypeAdapter
    public Number read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        return Double.valueOf(jsonReader.nextDouble());
    }

    /* JADX INFO: renamed from: write, reason: avoid collision after fix types in other method */
    public void write2(JsonWriter jsonWriter, Number number) throws IOException {
        if (number == null) {
            jsonWriter.nullValue();
            return;
        }
        Gson.access$000(this.this$0, number.doubleValue());
        jsonWriter.value(number);
    }
}

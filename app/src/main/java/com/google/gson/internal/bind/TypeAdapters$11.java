package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.LazilyParsedNumber;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

class TypeAdapters$11 extends TypeAdapter<Number> {
    TypeAdapters$11() {
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
        JsonToken jsonTokenPeek = jsonReader.peek();
        int i = TypeAdapters$32.$SwitchMap$com$google$gson$stream$JsonToken[jsonTokenPeek.ordinal()];
        if (i == 1) {
            return new LazilyParsedNumber(jsonReader.nextString());
        }
        if (i == 4) {
            jsonReader.nextNull();
            return null;
        }
        throw new JsonSyntaxException("Expecting number, got: " + jsonTokenPeek);
    }

    /* JADX INFO: renamed from: write, reason: avoid collision after fix types in other method */
    public void write2(JsonWriter jsonWriter, Number number) throws IOException {
        jsonWriter.value(number);
    }
}

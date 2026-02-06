package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.math.BigInteger;

class TypeAdapters$15 extends TypeAdapter<BigInteger> {
    TypeAdapters$15() {
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ BigInteger read(JsonReader jsonReader) throws IOException {
        return read2(jsonReader);
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, BigInteger bigInteger) throws IOException {
        write2(jsonWriter, bigInteger);
    }

    @Override // com.google.gson.TypeAdapter
    /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
    public BigInteger read2(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        try {
            return new BigInteger(jsonReader.nextString());
        } catch (NumberFormatException e) {
            throw new JsonSyntaxException(e);
        }
    }

    /* JADX INFO: renamed from: write, reason: avoid collision after fix types in other method */
    public void write2(JsonWriter jsonWriter, BigInteger bigInteger) throws IOException {
        jsonWriter.value(bigInteger);
    }
}

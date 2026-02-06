package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

class TypeAdapters$12 extends TypeAdapter<Character> {
    TypeAdapters$12() {
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ Character read(JsonReader jsonReader) throws IOException {
        return read(jsonReader);
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Character ch) throws IOException {
        write2(jsonWriter, ch);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.gson.TypeAdapter
    public Character read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        String strNextString = jsonReader.nextString();
        if (strNextString.length() != 1) {
            throw new JsonSyntaxException("Expecting character, got: " + strNextString);
        }
        return Character.valueOf(strNextString.charAt(0));
    }

    /* JADX INFO: renamed from: write, reason: avoid collision after fix types in other method */
    public void write2(JsonWriter jsonWriter, Character ch) throws IOException {
        jsonWriter.value(ch == null ? null : String.valueOf(ch));
    }
}

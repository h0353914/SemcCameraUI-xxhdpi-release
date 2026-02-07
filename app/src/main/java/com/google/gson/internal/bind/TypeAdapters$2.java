package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.BitSet;

/* JADX INFO: loaded from: classes.dex */
class TypeAdapters$2 extends TypeAdapter<BitSet> {
    TypeAdapters$2() {
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ BitSet read(JsonReader jsonReader) throws IOException {
        return read2(jsonReader);
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, BitSet bitSet) throws IOException {
        write2(jsonWriter, bitSet);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0076 A[SYNTHETIC] */
    @Override // com.google.gson.TypeAdapter
    /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public BitSet read2(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        BitSet bitSet = new BitSet();
        jsonReader.beginArray();
        JsonToken jsonTokenPeek = jsonReader.peek();
        int i = 0;
        while (jsonTokenPeek != JsonToken.END_ARRAY) {
            boolean zNextBoolean = true;
            switch (jsonTokenPeek) {
                case NUMBER:
                    if (jsonReader.nextInt() == 0) {
                        zNextBoolean = false;
                    }
                    if (zNextBoolean) {
                        bitSet.set(i);
                    }
                    i++;
                    jsonTokenPeek = jsonReader.peek();
                    break;
                case BOOLEAN:
                    zNextBoolean = jsonReader.nextBoolean();
                    if (zNextBoolean) {
                    }
                    i++;
                    jsonTokenPeek = jsonReader.peek();
                    break;
                case STRING:
                    String strNextString = jsonReader.nextString();
                    try {
                        if (Integer.parseInt(strNextString) == 0) {
                        }
                        if (zNextBoolean) {
                        }
                        i++;
                        jsonTokenPeek = jsonReader.peek();
                    } catch (NumberFormatException unused) {
                        throw new JsonSyntaxException("Error: Expecting: bitset number value (1, 0), Found: " + strNextString);
                    }
                    break;
                default:
                    throw new JsonSyntaxException("Invalid bitset value type: " + jsonTokenPeek);
            }
        }
        jsonReader.endArray();
        return bitSet;
    }

    /* JADX INFO: renamed from: write, reason: avoid collision after fix types in other method */
    public void write2(JsonWriter jsonWriter, BitSet bitSet) throws IOException {
        if (bitSet == null) {
            jsonWriter.nullValue();
            return;
        }
        jsonWriter.beginArray();
        for (int i = 0; i < bitSet.length(); i++) {
            jsonWriter.value(bitSet.get(i) ? 1L : 0L);
        }
        jsonWriter.endArray();
    }
}

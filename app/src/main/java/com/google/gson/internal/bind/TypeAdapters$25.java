package com.google.gson.internal.bind;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.LazilyParsedNumber;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map$Entry;

/* JADX INFO: loaded from: classes.dex */
class TypeAdapters$25 extends TypeAdapter<JsonElement> {
    TypeAdapters$25() {
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ JsonElement read(JsonReader jsonReader) throws IOException {
        return read(jsonReader);
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, JsonElement jsonElement) throws IOException {
        write2(jsonWriter, jsonElement);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.gson.TypeAdapter
    public JsonElement read(JsonReader jsonReader) throws IOException {
        switch (jsonReader.peek()) {
            case NUMBER:
                return new JsonPrimitive((Number) new LazilyParsedNumber(jsonReader.nextString()));
            case BOOLEAN:
                return new JsonPrimitive(Boolean.valueOf(jsonReader.nextBoolean()));
            case STRING:
                return new JsonPrimitive(jsonReader.nextString());
            case NULL:
                jsonReader.nextNull();
                return JsonNull.INSTANCE;
            case BEGIN_ARRAY:
                JsonArray jsonArray = new JsonArray();
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    jsonArray.add(read(jsonReader));
                }
                jsonReader.endArray();
                return jsonArray;
            case BEGIN_OBJECT:
                JsonObject jsonObject = new JsonObject();
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    jsonObject.add(jsonReader.nextName(), read(jsonReader));
                }
                jsonReader.endObject();
                return jsonObject;
            default:
                throw new IllegalArgumentException();
        }
    }

    /* JADX INFO: renamed from: write, reason: avoid collision after fix types in other method */
    public void write2(JsonWriter jsonWriter, JsonElement jsonElement) throws IOException {
        if (jsonElement == null || jsonElement.isJsonNull()) {
            jsonWriter.nullValue();
            return;
        }
        if (jsonElement.isJsonPrimitive()) {
            JsonPrimitive asJsonPrimitive = jsonElement.getAsJsonPrimitive();
            if (asJsonPrimitive.isNumber()) {
                jsonWriter.value(asJsonPrimitive.getAsNumber());
                return;
            } else if (asJsonPrimitive.isBoolean()) {
                jsonWriter.value(asJsonPrimitive.getAsBoolean());
                return;
            } else {
                jsonWriter.value(asJsonPrimitive.getAsString());
                return;
            }
        }
        if (jsonElement.isJsonArray()) {
            jsonWriter.beginArray();
            Iterator<JsonElement> it = jsonElement.getAsJsonArray().iterator();
            while (it.hasNext()) {
                write2(jsonWriter, it.next());
            }
            jsonWriter.endArray();
            return;
        }
        if (jsonElement.isJsonObject()) {
            jsonWriter.beginObject();
            for (Map$Entry<String, JsonElement> map$Entry : jsonElement.getAsJsonObject().entrySet()) {
                jsonWriter.name(map$Entry.getKey());
                write2(jsonWriter, map$Entry.getValue());
            }
            jsonWriter.endObject();
            return;
        }
        throw new IllegalArgumentException("Couldn't write " + jsonElement.getClass());
    }
}

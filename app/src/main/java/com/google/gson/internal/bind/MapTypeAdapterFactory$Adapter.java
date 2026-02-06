package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.internal.Streams;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;
import java.util.Map$Entry;

final class MapTypeAdapterFactory$Adapter<K, V> extends TypeAdapter<Map<K, V>> {
    private final ObjectConstructor<? extends Map<K, V>> constructor;
    private final TypeAdapter<K> keyTypeAdapter;
    final /* synthetic */ MapTypeAdapterFactory this$0;
    private final TypeAdapter<V> valueTypeAdapter;

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
        return read(jsonReader);
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
        write(jsonWriter, (Map) obj);
    }

    public MapTypeAdapterFactory$Adapter(MapTypeAdapterFactory mapTypeAdapterFactory, Gson gson, Type type, TypeAdapter<K> typeAdapter, Type type2, TypeAdapter<V> typeAdapter2, ObjectConstructor<? extends Map<K, V>> objectConstructor) {
        this.this$0 = mapTypeAdapterFactory;
        this.keyTypeAdapter = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter, type);
        this.valueTypeAdapter = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter2, type2);
        this.constructor = objectConstructor;
    }

    @Override // com.google.gson.TypeAdapter
    public Map<K, V> read(JsonReader jsonReader) throws IOException {
        JsonToken jsonTokenPeek = jsonReader.peek();
        if (jsonTokenPeek == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        Map<K, V> mapConstruct = this.constructor.construct();
        if (jsonTokenPeek == JsonToken.BEGIN_ARRAY) {
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                jsonReader.beginArray();
                K k = this.keyTypeAdapter.read(jsonReader);
                if (mapConstruct.put(k, this.valueTypeAdapter.read(jsonReader)) != null) {
                    throw new JsonSyntaxException("duplicate key: " + k);
                }
                jsonReader.endArray();
            }
            jsonReader.endArray();
        } else {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                JsonReaderInternalAccess.INSTANCE.promoteNameToValue(jsonReader);
                K k2 = this.keyTypeAdapter.read(jsonReader);
                if (mapConstruct.put(k2, this.valueTypeAdapter.read(jsonReader)) != null) {
                    throw new JsonSyntaxException("duplicate key: " + k2);
                }
            }
            jsonReader.endObject();
        }
        return mapConstruct;
    }

    public void write(JsonWriter jsonWriter, Map<K, V> map) throws IOException {
        if (map == null) {
            jsonWriter.nullValue();
            return;
        }
        if (!MapTypeAdapterFactory.access$000(this.this$0)) {
            jsonWriter.beginObject();
            for (Map$Entry<K, V> map$Entry : map.entrySet()) {
                jsonWriter.name(String.valueOf(map$Entry.getKey()));
                this.valueTypeAdapter.write(jsonWriter, map$Entry.getValue());
            }
            jsonWriter.endObject();
            return;
        }
        ArrayList arrayList = new ArrayList(map.size());
        ArrayList arrayList2 = new ArrayList(map.size());
        int i = 0;
        boolean z = false;
        for (Map$Entry<K, V> map$Entry2 : map.entrySet()) {
            JsonElement jsonTree = this.keyTypeAdapter.toJsonTree(map$Entry2.getKey());
            arrayList.add(jsonTree);
            arrayList2.add(map$Entry2.getValue());
            z |= jsonTree.isJsonArray() || jsonTree.isJsonObject();
        }
        if (z) {
            jsonWriter.beginArray();
            while (i < arrayList.size()) {
                jsonWriter.beginArray();
                Streams.write((JsonElement) arrayList.get(i), jsonWriter);
                this.valueTypeAdapter.write(jsonWriter, arrayList2.get(i));
                jsonWriter.endArray();
                i++;
            }
            jsonWriter.endArray();
            return;
        }
        jsonWriter.beginObject();
        while (i < arrayList.size()) {
            jsonWriter.name(keyToString((JsonElement) arrayList.get(i)));
            this.valueTypeAdapter.write(jsonWriter, arrayList2.get(i));
            i++;
        }
        jsonWriter.endObject();
    }

    private String keyToString(JsonElement jsonElement) {
        if (jsonElement.isJsonPrimitive()) {
            JsonPrimitive asJsonPrimitive = jsonElement.getAsJsonPrimitive();
            if (asJsonPrimitive.isNumber()) {
                return String.valueOf(asJsonPrimitive.getAsNumber());
            }
            if (asJsonPrimitive.isBoolean()) {
                return Boolean.toString(asJsonPrimitive.getAsBoolean());
            }
            if (asJsonPrimitive.isString()) {
                return asJsonPrimitive.getAsString();
            }
            throw new AssertionError();
        }
        if (jsonElement.isJsonNull()) {
            return "null";
        }
        throw new AssertionError();
    }
}

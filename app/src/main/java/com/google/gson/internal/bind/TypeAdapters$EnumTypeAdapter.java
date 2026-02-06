package com.google.gson.internal.bind;

import com.google.gson.TypeAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.Enum;
import java.util.HashMap;
import java.util.Map;

final class TypeAdapters$EnumTypeAdapter<T extends Enum<T>> extends TypeAdapter<T> {
    private final Map<String, T> nameToConstant = new HashMap();
    private final Map<T, String> constantToName = new HashMap();

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
        return read(jsonReader);
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
        write(jsonWriter, (Enum) obj);
    }

    public TypeAdapters$EnumTypeAdapter(Class<T> cls) {
        try {
            for (T t : cls.getEnumConstants()) {
                String strName = t.name();
                SerializedName serializedName = (SerializedName) cls.getField(strName).getAnnotation(SerializedName.class);
                strName = serializedName != null ? serializedName.value() : strName;
                this.nameToConstant.put(strName, t);
                this.constantToName.put(t, strName);
            }
        } catch (NoSuchFieldException unused) {
            throw new AssertionError();
        }
    }

    @Override // com.google.gson.TypeAdapter
    public T read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        return this.nameToConstant.get(jsonReader.nextString());
    }

    public void write(JsonWriter jsonWriter, T t) throws IOException {
        jsonWriter.value(t == null ? null : this.constantToName.get(t));
    }
}

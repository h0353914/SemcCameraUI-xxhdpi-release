package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.Map;

public final class ReflectiveTypeAdapterFactory$Adapter<T> extends TypeAdapter<T> {
    private final Map<String, ReflectiveTypeAdapterFactory$BoundField> boundFields;
    private final ObjectConstructor<T> constructor;

    /* synthetic */ ReflectiveTypeAdapterFactory$Adapter(ObjectConstructor objectConstructor, Map map, ReflectiveTypeAdapterFactory$1 reflectiveTypeAdapterFactory$1) {
        this(objectConstructor, map);
    }

    private ReflectiveTypeAdapterFactory$Adapter(ObjectConstructor<T> objectConstructor, Map<String, ReflectiveTypeAdapterFactory$BoundField> map) {
        this.constructor = objectConstructor;
        this.boundFields = map;
    }

    @Override // com.google.gson.TypeAdapter
    public T read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        T tConstruct = this.constructor.construct();
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                ReflectiveTypeAdapterFactory$BoundField reflectiveTypeAdapterFactory$BoundField = this.boundFields.get(jsonReader.nextName());
                if (reflectiveTypeAdapterFactory$BoundField == null || !reflectiveTypeAdapterFactory$BoundField.deserialized) {
                    jsonReader.skipValue();
                } else {
                    reflectiveTypeAdapterFactory$BoundField.read(jsonReader, tConstruct);
                }
            }
            jsonReader.endObject();
            return tConstruct;
        } catch (IllegalAccessException e) {
            throw new AssertionError(e);
        } catch (IllegalStateException e2) {
            throw new JsonSyntaxException(e2);
        }
    }

    @Override // com.google.gson.TypeAdapter
    public void write(JsonWriter jsonWriter, T t) throws IOException {
        if (t == null) {
            jsonWriter.nullValue();
            return;
        }
        jsonWriter.beginObject();
        try {
            for (ReflectiveTypeAdapterFactory$BoundField reflectiveTypeAdapterFactory$BoundField : this.boundFields.values()) {
                if (reflectiveTypeAdapterFactory$BoundField.serialized) {
                    jsonWriter.name(reflectiveTypeAdapterFactory$BoundField.name);
                    reflectiveTypeAdapterFactory$BoundField.write(jsonWriter, t);
                }
            }
            jsonWriter.endObject();
        } catch (IllegalAccessException unused) {
            throw new AssertionError();
        }
    }
}

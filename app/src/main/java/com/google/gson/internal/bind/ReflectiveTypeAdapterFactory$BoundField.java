package com.google.gson.internal.bind;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
abstract class ReflectiveTypeAdapterFactory$BoundField {
    final boolean deserialized;
    final String name;
    final boolean serialized;

    abstract void read(JsonReader jsonReader, Object obj) throws IllegalAccessException, IOException;

    abstract void write(JsonWriter jsonWriter, Object obj) throws IllegalAccessException, IOException;

    protected ReflectiveTypeAdapterFactory$BoundField(String str, boolean z, boolean z2) {
        this.name = str;
        this.serialized = z;
        this.deserialized = z2;
    }
}

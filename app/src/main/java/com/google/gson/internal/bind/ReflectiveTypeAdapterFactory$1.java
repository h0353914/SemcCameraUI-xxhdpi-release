package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Field;

class ReflectiveTypeAdapterFactory$1 extends ReflectiveTypeAdapterFactory$BoundField {
    final /* synthetic */ ReflectiveTypeAdapterFactory this$0;
    final TypeAdapter<?> typeAdapter;
    final /* synthetic */ Gson val$context;
    final /* synthetic */ Field val$field;
    final /* synthetic */ TypeToken val$fieldType;
    final /* synthetic */ boolean val$isPrimitive;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ReflectiveTypeAdapterFactory$1(ReflectiveTypeAdapterFactory reflectiveTypeAdapterFactory, String str, boolean z, boolean z2, Gson gson, TypeToken typeToken, Field field, boolean z3) {
        super(str, z, z2);
        this.this$0 = reflectiveTypeAdapterFactory;
        this.val$context = gson;
        this.val$fieldType = typeToken;
        this.val$field = field;
        this.val$isPrimitive = z3;
        this.typeAdapter = this.val$context.getAdapter(this.val$fieldType);
    }

    @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$BoundField
    void write(JsonWriter jsonWriter, Object obj) throws IllegalAccessException, IOException {
        new TypeAdapterRuntimeTypeWrapper(this.val$context, this.typeAdapter, this.val$fieldType.getType()).write(jsonWriter, this.val$field.get(obj));
    }

    @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$BoundField
    void read(JsonReader jsonReader, Object obj) throws IllegalAccessException, IOException {
        Object obj2 = this.typeAdapter.read(jsonReader);
        if (obj2 == null && this.val$isPrimitive) {
            return;
        }
        this.val$field.set(obj, obj2);
    }
}

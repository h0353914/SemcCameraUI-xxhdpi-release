package com.google.gson.internal.bind;

import com.google.gson.FieldNamingStrategy;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.SerializedName;
import com.google.gson.internal.C$Gson$Types;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.Primitives;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class ReflectiveTypeAdapterFactory implements TypeAdapterFactory {
    private final ConstructorConstructor constructorConstructor;
    private final Excluder excluder;
    private final FieldNamingStrategy fieldNamingPolicy;

    public ReflectiveTypeAdapterFactory(ConstructorConstructor constructorConstructor, FieldNamingStrategy fieldNamingStrategy, Excluder excluder) {
        this.constructorConstructor = constructorConstructor;
        this.fieldNamingPolicy = fieldNamingStrategy;
        this.excluder = excluder;
    }

    public boolean excludeField(Field field, boolean z) {
        return (this.excluder.excludeClass(field.getType(), z) || this.excluder.excludeField(field, z)) ? false : true;
    }

    private String getFieldName(Field field) {
        SerializedName serializedName = (SerializedName) field.getAnnotation(SerializedName.class);
        return serializedName == null ? this.fieldNamingPolicy.translateName(field) : serializedName.value();
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        Class<? super T> rawType = typeToken.getRawType();
        if (Object.class.isAssignableFrom(rawType)) {
            return new ReflectiveTypeAdapterFactory$Adapter(this.constructorConstructor.get(typeToken), getBoundFields(gson, typeToken, rawType), null);
        }
        return null;
    }

    private ReflectiveTypeAdapterFactory$BoundField createBoundField(Gson gson, Field field, String str, TypeToken<?> typeToken, boolean z, boolean z2) {
        return new ReflectiveTypeAdapterFactory$1(this, str, z, z2, gson, typeToken, field, Primitives.isPrimitive(typeToken.getRawType()));
    }

    private Map<String, ReflectiveTypeAdapterFactory$BoundField> getBoundFields(Gson gson, TypeToken<?> typeToken, Class<?> cls) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        Type type = typeToken.getType();
        TypeToken<?> typeToken2 = typeToken;
        Class<?> rawType = cls;
        while (rawType != Object.class) {
            for (Field field : rawType.getDeclaredFields()) {
                boolean zExcludeField = excludeField(field, true);
                boolean zExcludeField2 = excludeField(field, false);
                if (zExcludeField || zExcludeField2) {
                    field.setAccessible(true);
                    ReflectiveTypeAdapterFactory$BoundField reflectiveTypeAdapterFactory$BoundFieldCreateBoundField = createBoundField(gson, field, getFieldName(field), TypeToken.get(C$Gson$Types.resolve(typeToken2.getType(), rawType, field.getGenericType())), zExcludeField, zExcludeField2);
                    ReflectiveTypeAdapterFactory$BoundField reflectiveTypeAdapterFactory$BoundField = (ReflectiveTypeAdapterFactory$BoundField) linkedHashMap.put(reflectiveTypeAdapterFactory$BoundFieldCreateBoundField.name, reflectiveTypeAdapterFactory$BoundFieldCreateBoundField);
                    if (reflectiveTypeAdapterFactory$BoundField != null) {
                        throw new IllegalArgumentException(type + " declares multiple JSON fields named " + reflectiveTypeAdapterFactory$BoundField.name);
                    }
                }
            }
            typeToken2 = TypeToken.get(C$Gson$Types.resolve(typeToken2.getType(), rawType, rawType.getGenericSuperclass()));
            rawType = typeToken2.getRawType();
        }
        return linkedHashMap;
    }
}

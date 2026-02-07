package com.google.gson;

import com.google.gson.internal.C$Gson$Preconditions;
import com.google.gson.reflect.TypeToken;

/* JADX INFO: loaded from: classes.dex */
class TreeTypeAdapter$SingleTypeFactory implements TypeAdapterFactory {
    private final JsonDeserializer<?> deserializer;
    private final TypeToken<?> exactType;
    private final Class<?> hierarchyType;
    private final boolean matchRawType;
    private final JsonSerializer<?> serializer;

    /* synthetic */ TreeTypeAdapter$SingleTypeFactory(Object obj, TypeToken typeToken, boolean z, Class cls, TreeTypeAdapter$1 treeTypeAdapter$1) {
        this(obj, typeToken, z, cls);
    }

    private TreeTypeAdapter$SingleTypeFactory(Object obj, TypeToken<?> typeToken, boolean z, Class<?> cls) {
        this.serializer = obj instanceof JsonSerializer ? (JsonSerializer) obj : null;
        this.deserializer = obj instanceof JsonDeserializer ? (JsonDeserializer) obj : null;
        C$Gson$Preconditions.checkArgument((this.serializer == null && this.deserializer == null) ? false : true);
        this.exactType = typeToken;
        this.matchRawType = z;
        this.hierarchyType = cls;
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        if (this.exactType != null ? this.exactType.equals(typeToken) || (this.matchRawType && this.exactType.getType() == typeToken.getRawType()) : this.hierarchyType.isAssignableFrom(typeToken.getRawType())) {
            return new TreeTypeAdapter(this.serializer, this.deserializer, gson, typeToken, this, null);
        }
        return null;
    }
}

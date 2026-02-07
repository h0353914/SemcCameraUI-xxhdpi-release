package com.google.gson;

/* JADX INFO: loaded from: classes.dex */
public final class JsonNull extends JsonElement {
    public static final JsonNull INSTANCE = new JsonNull();

    @Override // com.google.gson.JsonElement
    /* bridge */ /* synthetic */ JsonElement deepCopy() {
        return deepCopy();
    }

    @Deprecated
    public JsonNull() {
    }

    @Override // com.google.gson.JsonElement
    JsonNull deepCopy() {
        return INSTANCE;
    }

    public int hashCode() {
        return JsonNull.class.hashCode();
    }

    public boolean equals(Object obj) {
        return this == obj || (obj instanceof JsonNull);
    }
}

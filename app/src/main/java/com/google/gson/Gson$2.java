package com.google.gson;

import java.lang.reflect.Type;

class Gson$2 implements JsonSerializationContext {
    final /* synthetic */ Gson this$0;

    Gson$2(Gson gson) {
        this.this$0 = gson;
    }

    @Override // com.google.gson.JsonSerializationContext
    public JsonElement serialize(Object obj) {
        return this.this$0.toJsonTree(obj);
    }

    @Override // com.google.gson.JsonSerializationContext
    public JsonElement serialize(Object obj, Type type) {
        return this.this$0.toJsonTree(obj, type);
    }
}

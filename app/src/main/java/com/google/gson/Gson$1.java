package com.google.gson;

import java.lang.reflect.Type;

class Gson$1 implements JsonDeserializationContext {
    final /* synthetic */ Gson this$0;

    Gson$1(Gson gson) {
        this.this$0 = gson;
    }

    @Override // com.google.gson.JsonDeserializationContext
    public <T> T deserialize(JsonElement jsonElement, Type type) throws JsonParseException {
        return (T) this.this$0.fromJson(jsonElement, type);
    }
}

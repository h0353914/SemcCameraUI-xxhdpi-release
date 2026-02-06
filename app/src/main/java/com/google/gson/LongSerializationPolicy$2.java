package com.google.gson;

enum LongSerializationPolicy$2 extends LongSerializationPolicy {
    LongSerializationPolicy$2(String str, int i) {
        super(str, i, null);
    }

    @Override // com.google.gson.LongSerializationPolicy
    public JsonElement serialize(Long l) {
        return new JsonPrimitive(String.valueOf(l));
    }
}

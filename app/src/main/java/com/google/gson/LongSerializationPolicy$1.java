package com.google.gson;

enum LongSerializationPolicy$1 extends LongSerializationPolicy {
    LongSerializationPolicy$1(String str, int i) {
        super(str, i, null);
    }

    @Override // com.google.gson.LongSerializationPolicy
    public JsonElement serialize(Long l) {
        return new JsonPrimitive((Number) l);
    }
}

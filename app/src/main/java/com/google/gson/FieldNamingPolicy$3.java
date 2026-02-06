package com.google.gson;

import java.lang.reflect.Field;

enum FieldNamingPolicy$3 extends FieldNamingPolicy {
    FieldNamingPolicy$3(String str, int i) {
        super(str, i, null);
    }

    @Override // com.google.gson.FieldNamingStrategy
    public String translateName(Field field) {
        return FieldNamingPolicy.access$100(FieldNamingPolicy.access$200(field.getName(), " "));
    }
}

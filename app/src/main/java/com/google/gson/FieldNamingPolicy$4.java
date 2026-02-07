package com.google.gson;

import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
enum FieldNamingPolicy$4 extends FieldNamingPolicy {
    FieldNamingPolicy$4(String str, int i) {
        super(str, i, null);
    }

    @Override // com.google.gson.FieldNamingStrategy
    public String translateName(Field field) {
        return FieldNamingPolicy.access$200(field.getName(), "_").toLowerCase();
    }
}

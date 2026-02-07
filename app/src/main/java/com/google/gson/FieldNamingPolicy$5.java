package com.google.gson;

import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
enum FieldNamingPolicy$5 extends FieldNamingPolicy {
    FieldNamingPolicy$5(String str, int i) {
        super(str, i, null);
    }

    @Override // com.google.gson.FieldNamingStrategy
    public String translateName(Field field) {
        return FieldNamingPolicy.access$200(field.getName(), "-").toLowerCase();
    }
}

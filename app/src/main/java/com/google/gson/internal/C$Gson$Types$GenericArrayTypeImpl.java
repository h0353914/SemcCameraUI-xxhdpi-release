package com.google.gson.internal;

import java.io.Serializable;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

/* JADX INFO: renamed from: com.google.gson.internal.$Gson$Types$GenericArrayTypeImpl, reason: invalid class name */
final class C$Gson$Types$GenericArrayTypeImpl implements GenericArrayType, Serializable {
    private static final long serialVersionUID = 0;
    private final Type componentType;

    public C$Gson$Types$GenericArrayTypeImpl(Type type) {
        this.componentType = C$Gson$Types.canonicalize(type);
    }

    @Override // java.lang.reflect.GenericArrayType
    public Type getGenericComponentType() {
        return this.componentType;
    }

    public boolean equals(Object obj) {
        return (obj instanceof GenericArrayType) && C$Gson$Types.equals(this, (GenericArrayType) obj);
    }

    public int hashCode() {
        return this.componentType.hashCode();
    }

    public String toString() {
        return C$Gson$Types.typeToString(this.componentType) + "[]";
    }
}

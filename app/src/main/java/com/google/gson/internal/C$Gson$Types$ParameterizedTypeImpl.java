package com.google.gson.internal;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;

/* JADX INFO: renamed from: com.google.gson.internal.$Gson$Types$ParameterizedTypeImpl, reason: invalid class name */
/* JADX INFO: loaded from: classes.dex */
final class C$Gson$Types$ParameterizedTypeImpl implements ParameterizedType, Serializable {
    private static final long serialVersionUID = 0;
    private final Type ownerType;
    private final Type rawType;
    private final Type[] typeArguments;

    public C$Gson$Types$ParameterizedTypeImpl(Type type, Type type2, Type... typeArr) {
        if (type2 instanceof Class) {
            Class cls = (Class) type2;
            boolean z = true;
            C$Gson$Preconditions.checkArgument(type != null || cls.getEnclosingClass() == null);
            if (type != null && cls.getEnclosingClass() == null) {
                z = false;
            }
            C$Gson$Preconditions.checkArgument(z);
        }
        this.ownerType = type == null ? null : C$Gson$Types.canonicalize(type);
        this.rawType = C$Gson$Types.canonicalize(type2);
        this.typeArguments = (Type[]) typeArr.clone();
        for (int i = 0; i < this.typeArguments.length; i++) {
            C$Gson$Preconditions.checkNotNull(this.typeArguments[i]);
            C$Gson$Types.access$000(this.typeArguments[i]);
            this.typeArguments[i] = C$Gson$Types.canonicalize(this.typeArguments[i]);
        }
    }

    @Override // java.lang.reflect.ParameterizedType
    public Type[] getActualTypeArguments() {
        return (Type[]) this.typeArguments.clone();
    }

    @Override // java.lang.reflect.ParameterizedType
    public Type getRawType() {
        return this.rawType;
    }

    @Override // java.lang.reflect.ParameterizedType
    public Type getOwnerType() {
        return this.ownerType;
    }

    public boolean equals(Object obj) {
        return (obj instanceof ParameterizedType) && C$Gson$Types.equals(this, (ParameterizedType) obj);
    }

    public int hashCode() {
        return C$Gson$Types.access$100(this.ownerType) ^ (Arrays.hashCode(this.typeArguments) ^ this.rawType.hashCode());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(30 * (this.typeArguments.length + 1));
        sb.append(C$Gson$Types.typeToString(this.rawType));
        if (this.typeArguments.length == 0) {
            return sb.toString();
        }
        sb.append("<");
        sb.append(C$Gson$Types.typeToString(this.typeArguments[0]));
        for (int i = 1; i < this.typeArguments.length; i++) {
            sb.append(", ");
            sb.append(C$Gson$Types.typeToString(this.typeArguments[i]));
        }
        sb.append(">");
        return sb.toString();
    }
}

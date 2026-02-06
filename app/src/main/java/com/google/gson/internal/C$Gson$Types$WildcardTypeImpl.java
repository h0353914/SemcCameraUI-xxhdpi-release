package com.google.gson.internal;

import java.io.Serializable;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;

/* JADX INFO: renamed from: com.google.gson.internal.$Gson$Types$WildcardTypeImpl, reason: invalid class name */
final class C$Gson$Types$WildcardTypeImpl implements WildcardType, Serializable {
    private static final long serialVersionUID = 0;
    private final Type lowerBound;
    private final Type upperBound;

    public C$Gson$Types$WildcardTypeImpl(Type[] typeArr, Type[] typeArr2) {
        C$Gson$Preconditions.checkArgument(typeArr2.length <= 1);
        C$Gson$Preconditions.checkArgument(typeArr.length == 1);
        if (typeArr2.length == 1) {
            C$Gson$Preconditions.checkNotNull(typeArr2[0]);
            C$Gson$Types.access$000(typeArr2[0]);
            C$Gson$Preconditions.checkArgument(typeArr[0] == Object.class);
            this.lowerBound = C$Gson$Types.canonicalize(typeArr2[0]);
            this.upperBound = Object.class;
            return;
        }
        C$Gson$Preconditions.checkNotNull(typeArr[0]);
        C$Gson$Types.access$000(typeArr[0]);
        this.lowerBound = null;
        this.upperBound = C$Gson$Types.canonicalize(typeArr[0]);
    }

    @Override // java.lang.reflect.WildcardType
    public Type[] getUpperBounds() {
        return new Type[]{this.upperBound};
    }

    @Override // java.lang.reflect.WildcardType
    public Type[] getLowerBounds() {
        return this.lowerBound != null ? new Type[]{this.lowerBound} : C$Gson$Types.EMPTY_TYPE_ARRAY;
    }

    public boolean equals(Object obj) {
        return (obj instanceof WildcardType) && C$Gson$Types.equals(this, (WildcardType) obj);
    }

    public int hashCode() {
        return (this.lowerBound != null ? this.lowerBound.hashCode() + 31 : 1) ^ (31 + this.upperBound.hashCode());
    }

    public String toString() {
        if (this.lowerBound != null) {
            return "? super " + C$Gson$Types.typeToString(this.lowerBound);
        }
        if (this.upperBound == Object.class) {
            return "?";
        }
        return "? extends " + C$Gson$Types.typeToString(this.upperBound);
    }
}

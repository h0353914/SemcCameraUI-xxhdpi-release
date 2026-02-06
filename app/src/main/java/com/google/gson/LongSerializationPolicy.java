package com.google.gson;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public abstract class LongSerializationPolicy {
    public static final LongSerializationPolicy DEFAULT = new LongSerializationPolicy$1("DEFAULT", 0);
    public static final LongSerializationPolicy STRING = new LongSerializationPolicy$2("STRING", 1);
    private static final /* synthetic */ LongSerializationPolicy[] $VALUES = {DEFAULT, STRING};

    public abstract JsonElement serialize(Long l);

    private LongSerializationPolicy(String str, int i) {
    }

    /* synthetic */ LongSerializationPolicy(String str, int i, LongSerializationPolicy$1 longSerializationPolicy$1) {
        this(str, i);
    }

    public static LongSerializationPolicy valueOf(String str) {
        return (LongSerializationPolicy) Enum.valueOf(LongSerializationPolicy.class, str);
    }

    public static LongSerializationPolicy[] values() {
        return (LongSerializationPolicy[]) $VALUES.clone();
    }
}

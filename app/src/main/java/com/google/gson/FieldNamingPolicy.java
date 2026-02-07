package com.google.gson;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public abstract class FieldNamingPolicy implements FieldNamingStrategy {
    public static final FieldNamingPolicy IDENTITY = new FieldNamingPolicy$1("IDENTITY", 0);
    public static final FieldNamingPolicy UPPER_CAMEL_CASE = new FieldNamingPolicy$2("UPPER_CAMEL_CASE", 1);
    public static final FieldNamingPolicy UPPER_CAMEL_CASE_WITH_SPACES = new FieldNamingPolicy$3("UPPER_CAMEL_CASE_WITH_SPACES", 2);
    public static final FieldNamingPolicy LOWER_CASE_WITH_UNDERSCORES = new FieldNamingPolicy$4("LOWER_CASE_WITH_UNDERSCORES", 3);
    public static final FieldNamingPolicy LOWER_CASE_WITH_DASHES = new FieldNamingPolicy$5("LOWER_CASE_WITH_DASHES", 4);
    private static final /* synthetic */ FieldNamingPolicy[] $VALUES = {IDENTITY, UPPER_CAMEL_CASE, UPPER_CAMEL_CASE_WITH_SPACES, LOWER_CASE_WITH_UNDERSCORES, LOWER_CASE_WITH_DASHES};

    private FieldNamingPolicy(String str, int i) {
    }

    /* synthetic */ FieldNamingPolicy(String str, int i, FieldNamingPolicy$1 fieldNamingPolicy$1) {
        this(str, i);
    }

    static /* synthetic */ String access$100(String str) {
        return upperCaseFirstLetter(str);
    }

    static /* synthetic */ String access$200(String str, String str2) {
        return separateCamelCase(str, str2);
    }

    public static FieldNamingPolicy valueOf(String str) {
        return (FieldNamingPolicy) Enum.valueOf(FieldNamingPolicy.class, str);
    }

    public static FieldNamingPolicy[] values() {
        return (FieldNamingPolicy[]) $VALUES.clone();
    }

    private static String separateCamelCase(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (Character.isUpperCase(cCharAt) && sb.length() != 0) {
                sb.append(str2);
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    private static String upperCaseFirstLetter(String str) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        char cCharAt = str.charAt(0);
        while (i < str.length() - 1 && !Character.isLetter(cCharAt)) {
            sb.append(cCharAt);
            i++;
            cCharAt = str.charAt(i);
        }
        if (i == str.length()) {
            return sb.toString();
        }
        if (Character.isUpperCase(cCharAt)) {
            return str;
        }
        sb.append(modifyString(Character.toUpperCase(cCharAt), str, i + 1));
        return sb.toString();
    }

    private static String modifyString(char c, String str, int i) {
        if (i >= str.length()) {
            return String.valueOf(c);
        }
        return c + str.substring(i);
    }
}

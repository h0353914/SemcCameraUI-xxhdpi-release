package org.apache.commons.imaging.icc;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public abstract class IccTagDataTypes implements IccTagDataType {
    public final String name;
    public final int signature;
    public static final IccTagDataTypes DESC_TYPE = new IccTagDataTypes$1("DESC_TYPE", 0, "descType", 1684370275);
    public static final IccTagDataTypes DATA_TYPE = new IccTagDataTypes$2("DATA_TYPE", 1, "dataType", 1684108385);
    public static final IccTagDataTypes MULTI_LOCALIZED_UNICODE_TYPE = new IccTagDataTypes$3("MULTI_LOCALIZED_UNICODE_TYPE", 2, "multiLocalizedUnicodeType", 1835824483);
    public static final IccTagDataTypes SIGNATURE_TYPE = new IccTagDataTypes$4("SIGNATURE_TYPE", 3, "signatureType", 1936287520);
    public static final IccTagDataTypes TEXT_TYPE = new IccTagDataTypes$5("TEXT_TYPE", 4, "textType", 1952807028);
    private static final /* synthetic */ IccTagDataTypes[] $VALUES = {DESC_TYPE, DATA_TYPE, MULTI_LOCALIZED_UNICODE_TYPE, SIGNATURE_TYPE, TEXT_TYPE};

    /* synthetic */ IccTagDataTypes(String str, int i, String str2, int i2, IccTagDataTypes$1 iccTagDataTypes$1) {
        this(str, i, str2, i2);
    }

    public static IccTagDataTypes valueOf(String str) {
        return (IccTagDataTypes) Enum.valueOf(IccTagDataTypes.class, str);
    }

    public static IccTagDataTypes[] values() {
        return (IccTagDataTypes[]) $VALUES.clone();
    }

    private IccTagDataTypes(String str, int i, String str2, int i2) {
        this.name = str2;
        this.signature = i2;
    }

    @Override // org.apache.commons.imaging.icc.IccTagDataType
    public String getName() {
        return this.name;
    }

    @Override // org.apache.commons.imaging.icc.IccTagDataType
    public int getSignature() {
        return this.signature;
    }
}

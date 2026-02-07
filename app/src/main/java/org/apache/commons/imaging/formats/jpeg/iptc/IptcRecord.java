package org.apache.commons.imaging.formats.jpeg.iptc;

import java.io.UnsupportedEncodingException;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public class IptcRecord {
    public static final Comparator<IptcRecord> COMPARATOR = new IptcRecord$1();
    private final byte[] bytes;
    public final IptcType iptcType;
    public final String value;

    public IptcRecord(IptcType iptcType, byte[] bArr, String str) {
        this.iptcType = iptcType;
        this.bytes = bArr;
        this.value = str;
    }

    public IptcRecord(IptcType iptcType, String str) {
        byte[] bytes;
        this.iptcType = iptcType;
        try {
            bytes = str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException unused) {
            bytes = null;
        }
        this.bytes = bytes;
        this.value = str;
    }

    public byte[] getRawBytes() {
        return (byte[]) this.bytes.clone();
    }

    public String getValue() {
        return this.value;
    }

    public String getIptcTypeName() {
        return this.iptcType.getName();
    }
}

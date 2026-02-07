package org.apache.commons.imaging.icc;

import java.io.ByteArrayInputStream;
import java.nio.ByteOrder;
import org.apache.commons.imaging.common.BinaryFunctions;
import org.apache.commons.imaging.util.IoUtils;

/* JADX INFO: loaded from: classes.dex */
enum IccTagDataTypes$1 extends IccTagDataTypes {
    IccTagDataTypes$1(String str, int i, String str2, int i2) {
        super(str, i, str2, i2, null);
    }

    @Override // org.apache.commons.imaging.icc.IccTagDataType
    public void dump(String str, byte[] bArr) throws Throwable {
        ByteArrayInputStream byteArrayInputStream;
        try {
            byteArrayInputStream = new ByteArrayInputStream(bArr);
            try {
                BinaryFunctions.read4Bytes("type_signature", byteArrayInputStream, "ICC: corrupt tag data", ByteOrder.BIG_ENDIAN);
                BinaryFunctions.read4Bytes("ignore", byteArrayInputStream, "ICC: corrupt tag data", ByteOrder.BIG_ENDIAN);
                String str2 = new String(bArr, 12, BinaryFunctions.read4Bytes("stringLength", byteArrayInputStream, "ICC: corrupt tag data", ByteOrder.BIG_ENDIAN) - 1, "US-ASCII");
                System.out.println(str + "s: '" + str2 + "'");
                IoUtils.closeQuietly(true, byteArrayInputStream);
            } catch (Throwable th) {
                th = th;
                IoUtils.closeQuietly(false, byteArrayInputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            byteArrayInputStream = null;
        }
    }
}

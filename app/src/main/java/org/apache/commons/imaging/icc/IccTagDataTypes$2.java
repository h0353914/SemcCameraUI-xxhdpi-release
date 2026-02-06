package org.apache.commons.imaging.icc;

import java.io.ByteArrayInputStream;
import java.nio.ByteOrder;
import org.apache.commons.imaging.common.BinaryFunctions;
import org.apache.commons.imaging.util.IoUtils;

enum IccTagDataTypes$2 extends IccTagDataTypes {
    IccTagDataTypes$2(String str, int i, String str2, int i2) {
        super(str, i, str2, i2, null);
    }

    @Override // org.apache.commons.imaging.icc.IccTagDataType
    public void dump(String str, byte[] bArr) throws Throwable {
        ByteArrayInputStream byteArrayInputStream;
        try {
            byteArrayInputStream = new ByteArrayInputStream(bArr);
            try {
                BinaryFunctions.read4Bytes("type_signature", byteArrayInputStream, "ICC: corrupt tag data", ByteOrder.BIG_ENDIAN);
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

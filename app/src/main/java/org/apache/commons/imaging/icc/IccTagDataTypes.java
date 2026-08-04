package org.apache.commons.imaging.icc;

import org.apache.commons.imaging.ImageReadException;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.nio.ByteOrder;
import org.apache.commons.imaging.common.BinaryFunctions;
import org.apache.commons.imaging.util.IoUtils;

public enum IccTagDataTypes implements IccTagDataType {
    DESC_TYPE("descType", 1684370275) { // from class: org.apache.commons.imaging.icc.IccTagDataTypes.1
        @Override // org.apache.commons.imaging.icc.IccTagDataType
        public void dump(String str, byte[] bArr) throws IOException, ImageReadException {
            ByteArrayInputStream byteArrayInputStream;
            try {
                byteArrayInputStream = new ByteArrayInputStream(bArr);
                try {
                    BinaryFunctions.read4Bytes("type_signature", byteArrayInputStream, "ICC: corrupt tag data", ByteOrder.BIG_ENDIAN);
                    BinaryFunctions.read4Bytes("ignore", byteArrayInputStream, "ICC: corrupt tag data", ByteOrder.BIG_ENDIAN);
                    String str2 = new String(bArr, 12, BinaryFunctions.read4Bytes("stringLength", byteArrayInputStream, "ICC: corrupt tag data", ByteOrder.BIG_ENDIAN) - 1, "US-ASCII");
                    System.out.println(str + "s: '" + str2 + "'");
                    IoUtils.closeQuietly(true, byteArrayInputStream);
                } catch (Exception th) {
                    
                    IoUtils.closeQuietly(false, byteArrayInputStream);
                    throw new ImageReadException("Error", th);
                }
            } catch (Exception th2) {
                
                byteArrayInputStream = null;
            }
        }
    },
    DATA_TYPE("dataType", 1684108385) { // from class: org.apache.commons.imaging.icc.IccTagDataTypes.2
        @Override // org.apache.commons.imaging.icc.IccTagDataType
        public void dump(String str, byte[] bArr) throws IOException, ImageReadException {
            ByteArrayInputStream byteArrayInputStream;
            try {
                byteArrayInputStream = new ByteArrayInputStream(bArr);
                try {
                    BinaryFunctions.read4Bytes("type_signature", byteArrayInputStream, "ICC: corrupt tag data", ByteOrder.BIG_ENDIAN);
                    IoUtils.closeQuietly(true, byteArrayInputStream);
                } catch (Exception th) {
                    
                    IoUtils.closeQuietly(false, byteArrayInputStream);
                    throw new ImageReadException("Error", th);
                }
            } catch (Exception th2) {
                
                byteArrayInputStream = null;
            }
        }
    },
    MULTI_LOCALIZED_UNICODE_TYPE("multiLocalizedUnicodeType", 1835824483) { // from class: org.apache.commons.imaging.icc.IccTagDataTypes.3
        @Override // org.apache.commons.imaging.icc.IccTagDataType
        public void dump(String str, byte[] bArr) throws IOException, ImageReadException {
            ByteArrayInputStream byteArrayInputStream;
            try {
                byteArrayInputStream = new ByteArrayInputStream(bArr);
                try {
                    BinaryFunctions.read4Bytes("type_signature", byteArrayInputStream, "ICC: corrupt tag data", ByteOrder.BIG_ENDIAN);
                    IoUtils.closeQuietly(true, byteArrayInputStream);
                } catch (Exception th) {
                    
                    IoUtils.closeQuietly(false, byteArrayInputStream);
                    throw new ImageReadException("Error", th);
                }
            } catch (Exception th2) {
                
                byteArrayInputStream = null;
            }
        }
    },
    SIGNATURE_TYPE("signatureType", 1936287520) { // from class: org.apache.commons.imaging.icc.IccTagDataTypes.4
        @Override // org.apache.commons.imaging.icc.IccTagDataType
        public void dump(String str, byte[] bArr) throws IOException, ImageReadException {
            ByteArrayInputStream byteArrayInputStream;
            try {
                byteArrayInputStream = new ByteArrayInputStream(bArr);
                try {
                    BinaryFunctions.read4Bytes("type_signature", byteArrayInputStream, "ICC: corrupt tag data", ByteOrder.BIG_ENDIAN);
                    BinaryFunctions.read4Bytes("ignore", byteArrayInputStream, "ICC: corrupt tag data", ByteOrder.BIG_ENDIAN);
                    int i = BinaryFunctions.read4Bytes("thesignature ", byteArrayInputStream, "ICC: corrupt tag data", ByteOrder.BIG_ENDIAN);
                    System.out.println(str + "thesignature: " + Integer.toHexString(i) + " (" + new String(new byte[]{(byte) ((i >> 24) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 8) & 255), (byte) ((i >> 0) & 255)}, "US-ASCII") + ")");
                    IoUtils.closeQuietly(true, byteArrayInputStream);
                } catch (Exception th) {
                    
                    IoUtils.closeQuietly(false, byteArrayInputStream);
                    throw new ImageReadException("Error", th);
                }
            } catch (Exception th2) {
                
                byteArrayInputStream = null;
            }
        }
    },
    TEXT_TYPE("textType", 1952807028) { // from class: org.apache.commons.imaging.icc.IccTagDataTypes.5
        @Override // org.apache.commons.imaging.icc.IccTagDataType
        public void dump(String str, byte[] bArr) throws IOException, ImageReadException {
            ByteArrayInputStream byteArrayInputStream;
            try {
                byteArrayInputStream = new ByteArrayInputStream(bArr);
                try {
                    BinaryFunctions.read4Bytes("type_signature", byteArrayInputStream, "ICC: corrupt tag data", ByteOrder.BIG_ENDIAN);
                    BinaryFunctions.read4Bytes("ignore", byteArrayInputStream, "ICC: corrupt tag data", ByteOrder.BIG_ENDIAN);
                    String str2 = new String(bArr, 8, bArr.length - 8, "US-ASCII");
                    System.out.println(str + "s: '" + str2 + "'");
                    IoUtils.closeQuietly(true, byteArrayInputStream);
                } catch (Exception th) {
                    
                    IoUtils.closeQuietly(false, byteArrayInputStream);
                    throw new ImageReadException("Error", th);
                }
            } catch (Exception th2) {
                
                byteArrayInputStream = null;
            }
        }
    };

    public final String name;
    public final int signature;

    IccTagDataTypes(String str, int i) {
        this.name = str;
        this.signature = i;
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

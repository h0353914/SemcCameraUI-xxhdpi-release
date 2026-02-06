package org.apache.commons.imaging.formats.tiff.taginfos;

import java.nio.ByteOrder;
import org.apache.commons.imaging.formats.tiff.constants.TiffDirectoryType;
import org.apache.commons.imaging.formats.tiff.fieldtypes.FieldType;

public class TagInfoSByte extends TagInfo {
    public byte[] encodeValue(ByteOrder byteOrder, byte... bArr) {
        return bArr;
    }

    public TagInfoSByte(String str, int i, int i2, TiffDirectoryType tiffDirectoryType) {
        super(str, i, FieldType.SBYTE, i2, tiffDirectoryType);
    }
}

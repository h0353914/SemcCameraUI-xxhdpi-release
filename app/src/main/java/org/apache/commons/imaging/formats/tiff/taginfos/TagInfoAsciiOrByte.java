package org.apache.commons.imaging.formats.tiff.taginfos;

import org.apache.commons.imaging.formats.tiff.constants.TiffDirectoryType;
import org.apache.commons.imaging.formats.tiff.fieldtypes.FieldType;

public class TagInfoAsciiOrByte extends TagInfo {
    public TagInfoAsciiOrByte(String str, int i, int i2, TiffDirectoryType tiffDirectoryType) {

















        super(str, i, FieldType.ASCII_OR_BYTE, i2, tiffDirectoryType, false);
    }
}

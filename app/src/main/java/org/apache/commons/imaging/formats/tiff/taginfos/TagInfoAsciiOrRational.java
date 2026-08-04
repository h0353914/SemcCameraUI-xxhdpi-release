package org.apache.commons.imaging.formats.tiff.taginfos;

import org.apache.commons.imaging.formats.tiff.constants.TiffDirectoryType;
import org.apache.commons.imaging.formats.tiff.fieldtypes.FieldType;

public class TagInfoAsciiOrRational extends TagInfo {
    public TagInfoAsciiOrRational(String str, int i, int i2, TiffDirectoryType tiffDirectoryType) {

















        super(str, i, FieldType.ASCII_OR_RATIONAL, i2, tiffDirectoryType, false);
    }
}

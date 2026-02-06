package org.apache.commons.imaging.formats.tiff.taginfos;

import org.apache.commons.imaging.formats.tiff.constants.TiffDirectoryType;
import org.apache.commons.imaging.formats.tiff.fieldtypes.FieldType;

public class TagInfoUndefined extends TagInfoByte {
    public TagInfoUndefined(String str, int i, int i2, TiffDirectoryType tiffDirectoryType) {
        super(str, i, FieldType.UNDEFINED, i2, tiffDirectoryType);
    }
}

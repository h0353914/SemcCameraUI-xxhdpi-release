package org.apache.commons.imaging.formats.tiff;

import org.apache.commons.imaging.common.GenericImageMetadata$GenericImageMetadataItem;

public class TiffImageMetadata$TiffMetadataItem extends GenericImageMetadata$GenericImageMetadataItem {
    private final TiffField entry;

    public TiffImageMetadata$TiffMetadataItem(TiffField tiffField) {
        super(tiffField.getTagName(), tiffField.getValueDescription());
        this.entry = tiffField;
    }

    public TiffField getTiffField() {
        return this.entry;
    }
}

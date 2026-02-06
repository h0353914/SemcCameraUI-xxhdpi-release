package org.apache.commons.imaging.formats.tiff.write;

import org.apache.commons.imaging.formats.tiff.TiffElement$DataElement;

class ImageDataOffsets {
    final int[] imageDataOffsets;
    final TiffOutputField imageDataOffsetsField;
    final TiffOutputItem[] outputItems;

    ImageDataOffsets(TiffElement$DataElement[] tiffElement$DataElementArr, int[] iArr, TiffOutputField tiffOutputField) {
        this.imageDataOffsets = iArr;
        this.imageDataOffsetsField = tiffOutputField;
        this.outputItems = new TiffOutputItem[tiffElement$DataElementArr.length];
        for (int i = 0; i < tiffElement$DataElementArr.length; i++) {
            this.outputItems[i] = new TiffOutputItem$Value("TIFF image data", tiffElement$DataElementArr[i].getData());
        }
    }
}

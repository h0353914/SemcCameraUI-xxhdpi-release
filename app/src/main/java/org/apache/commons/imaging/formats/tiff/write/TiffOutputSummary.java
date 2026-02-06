package org.apache.commons.imaging.formats.tiff.write;

import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.apache.commons.imaging.ImageWriteException;
import org.apache.commons.imaging.formats.tiff.fieldtypes.FieldType;

class TiffOutputSummary {
    public final ByteOrder byteOrder;
    public final Map<Integer, TiffOutputDirectory> directoryTypeMap;
    public final TiffOutputDirectory rootDirectory;
    private final List<TiffOutputSummary$OffsetItem> offsetItems = new ArrayList();
    private final List<ImageDataOffsets> imageDataItems = new ArrayList();

    public TiffOutputSummary(ByteOrder byteOrder, TiffOutputDirectory tiffOutputDirectory, Map<Integer, TiffOutputDirectory> map) {
        this.byteOrder = byteOrder;
        this.rootDirectory = tiffOutputDirectory;
        this.directoryTypeMap = map;
    }

    public void add(TiffOutputItem tiffOutputItem, TiffOutputField tiffOutputField) {
        this.offsetItems.add(new TiffOutputSummary$OffsetItem(tiffOutputItem, tiffOutputField));
    }

    public void updateOffsets(ByteOrder byteOrder) throws ImageWriteException {
        for (TiffOutputSummary$OffsetItem tiffOutputSummary$OffsetItem : this.offsetItems) {
            tiffOutputSummary$OffsetItem.itemOffsetField.setData(FieldType.LONG.writeData(Integer.valueOf((int) tiffOutputSummary$OffsetItem.item.getOffset()), byteOrder));
        }
        for (ImageDataOffsets imageDataOffsets : this.imageDataItems) {
            for (int i = 0; i < imageDataOffsets.outputItems.length; i++) {
                imageDataOffsets.imageDataOffsets[i] = (int) imageDataOffsets.outputItems[i].getOffset();
            }
            imageDataOffsets.imageDataOffsetsField.setData(FieldType.LONG.writeData(imageDataOffsets.imageDataOffsets, byteOrder));
        }
    }

    public void addTiffImageData(ImageDataOffsets imageDataOffsets) {
        this.imageDataItems.add(imageDataOffsets);
    }
}

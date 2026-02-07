package org.apache.commons.imaging.formats.tiff;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.nio.ByteOrder;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.imaging.ImageReadException;
import org.apache.commons.imaging.ImageWriteException;
import org.apache.commons.imaging.common.GenericImageMetadata;
import org.apache.commons.imaging.common.ImageMetadata$ImageMetadataItem;
import org.apache.commons.imaging.formats.tiff.fieldtypes.FieldType;
import org.apache.commons.imaging.formats.tiff.taginfos.TagInfo;
import org.apache.commons.imaging.formats.tiff.write.TiffOutputDirectory;
import org.apache.commons.imaging.formats.tiff.write.TiffOutputField;

/* JADX INFO: loaded from: classes.dex */
public class TiffImageMetadata$Directory extends GenericImageMetadata implements ImageMetadata$ImageMetadataItem {
    private final ByteOrder byteOrder;
    private final TiffDirectory directory;
    public final int type;

    static /* synthetic */ TiffDirectory access$000(TiffImageMetadata$Directory tiffImageMetadata$Directory) {
        return tiffImageMetadata$Directory.directory;
    }

    public TiffImageMetadata$Directory(ByteOrder byteOrder, TiffDirectory tiffDirectory) {
        this.type = tiffDirectory.type;
        this.directory = tiffDirectory;
        this.byteOrder = byteOrder;
    }

    public void add(TiffField tiffField) {
        add(new TiffImageMetadata$TiffMetadataItem(tiffField));
    }

    public BufferedImage getThumbnail() throws IOException, ImageReadException {
        return this.directory.getTiffImage(this.byteOrder);
    }

    public TiffImageData getTiffImageData() {
        return this.directory.getTiffImageData();
    }

    public TiffField findField(TagInfo tagInfo) throws ImageReadException {
        return this.directory.findField(tagInfo);
    }

    public List<TiffField> getAllFields() {
        return this.directory.getDirectoryEntries();
    }

    public JpegImageData getJpegImageData() {
        return this.directory.getJpegImageData();
    }

    @Override // org.apache.commons.imaging.common.GenericImageMetadata, org.apache.commons.imaging.common.ImageMetadata
    public String toString(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str != null ? str : "");
        sb.append(this.directory.description());
        sb.append(": ");
        sb.append(getTiffImageData() != null ? " (tiffImageData)" : "");
        sb.append(getJpegImageData() != null ? " (jpegImageData)" : "");
        sb.append("\n");
        sb.append(super.toString(str));
        sb.append("\n");
        return sb.toString();
    }

    public TiffOutputDirectory getOutputDirectory(ByteOrder byteOrder) throws ImageWriteException {
        try {
            TiffOutputDirectory tiffOutputDirectory = new TiffOutputDirectory(this.type, byteOrder);
            Iterator<? extends ImageMetadata$ImageMetadataItem> it = getItems().iterator();
            while (it.hasNext()) {
                TiffField tiffField = ((TiffImageMetadata$TiffMetadataItem) it.next()).getTiffField();
                if (tiffOutputDirectory.findField(tiffField.getTag()) == null && !tiffField.getTagInfo().isOffset()) {
                    TagInfo tagInfo = tiffField.getTagInfo();
                    FieldType fieldType = tiffField.getFieldType();
                    byte[] bArrEncodeValue = tagInfo.encodeValue(fieldType, tiffField.getValue(), byteOrder);
                    TiffOutputField tiffOutputField = new TiffOutputField(tiffField.getTag(), tagInfo, fieldType, bArrEncodeValue.length / fieldType.getSize(), bArrEncodeValue);
                    tiffOutputField.setSortHint(tiffField.getSortHint());
                    tiffOutputDirectory.add(tiffOutputField);
                }
            }
            tiffOutputDirectory.setTiffImageData(getTiffImageData());
            tiffOutputDirectory.setJpegImageData(getJpegImageData());
            return tiffOutputDirectory;
        } catch (ImageReadException e) {
            throw new ImageWriteException(e.getMessage(), (Throwable) e);
        }
    }
}

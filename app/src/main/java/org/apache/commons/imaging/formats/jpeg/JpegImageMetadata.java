package org.apache.commons.imaging.formats.jpeg;

import java.awt.Dimension;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.List;
import org.apache.commons.imaging.ImageReadException;
import org.apache.commons.imaging.Imaging;
import org.apache.commons.imaging.common.ImageMetadata;
import org.apache.commons.imaging.formats.tiff.TiffField;
import org.apache.commons.imaging.formats.tiff.TiffImageData;
import org.apache.commons.imaging.formats.tiff.TiffImageMetadata;
import org.apache.commons.imaging.formats.tiff.taginfos.TagInfo;

public class JpegImageMetadata implements ImageMetadata {
    private static final String NEWLINE = System.getProperty("line.separator");
    private final TiffImageMetadata exif;
    private final JpegPhotoshopMetadata photoshop;

    public JpegImageMetadata(JpegPhotoshopMetadata photoshop, TiffImageMetadata exif) {
        this.photoshop = photoshop;
        this.exif = exif;
    }

    public TiffImageMetadata getExif() {
        return exif;
    }

    public JpegPhotoshopMetadata getPhotoshop() {
        return photoshop;
    }

    public TiffField findEXIFValue(TagInfo tagInfo) {
        try {
            return exif != null ? exif.findField(tagInfo) : null;
        } catch (ImageReadException e) {
            return null;
        }
    }

    public TiffField findEXIFValueWithExactMatch(TagInfo tagInfo) {
        try {
            return exif != null ? exif.findField(tagInfo, true) : null;
        } catch (ImageReadException e) {
            return null;
        }
    }

    public Dimension getEXIFThumbnailSize() throws IOException, ImageReadException {
        byte[] data = getEXIFThumbnailData();
        return data != null ? Imaging.getImageSize(data) : null;
    }

    public byte[] getEXIFThumbnailData() throws IOException, ImageReadException {
        if (exif == null) {
            return null;
        }
        for (ImageMetadata.ImageMetadataItem item : exif.getDirectories()) {
            TiffImageMetadata.Directory directory = (TiffImageMetadata.Directory) item;
            byte[] data = directory.getJpegImageData() != null ? directory.getJpegImageData().getData() : null;
            if (data != null) {
                return data;
            }
        }
        return null;
    }

    public BufferedImage getEXIFThumbnail() throws IOException, ImageReadException {
        if (exif == null) {
            return null;
        }
        for (ImageMetadata.ImageMetadataItem item : exif.getDirectories()) {
            TiffImageMetadata.Directory directory = (TiffImageMetadata.Directory) item;
            BufferedImage thumbnail = directory.getThumbnail();
            if (thumbnail != null) {
                return thumbnail;
            }
        }
        return null;
    }

    public TiffImageData getRawImageData() {
        if (exif == null) {
            return null;
        }
        for (ImageMetadata.ImageMetadataItem item : exif.getDirectories()) {
            TiffImageMetadata.Directory directory = (TiffImageMetadata.Directory) item;
            TiffImageData tiffImageData = directory.getTiffImageData();
            if (tiffImageData != null) {
                return tiffImageData;
            }
        }
        return null;
    }

    @Override
    public List<? extends ImageMetadata.ImageMetadataItem> getItems() {
        return exif != null ? exif.getItems() : null;
    }

    @Override
    public String toString(String prefix) {
        if (prefix == null) {
            prefix = "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        if (exif == null) {
            sb.append("No Exif metadata.");
        } else {
            sb.append("Exif metadata:");
            sb.append(NEWLINE);
            sb.append(exif.toString("\t"));
        }
        sb.append(NEWLINE);
        sb.append(prefix);
        if (photoshop == null) {
            sb.append("No Photoshop (IPTC) metadata.");
        } else {
            sb.append("Photoshop (IPTC) metadata:");
            sb.append(NEWLINE);
            sb.append(photoshop.toString("\t"));
        }
        return sb.toString();
    }
}

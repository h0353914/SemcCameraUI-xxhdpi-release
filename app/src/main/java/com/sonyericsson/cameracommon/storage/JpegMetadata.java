package com.sonyericsson.cameracommon.storage;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import org.apache.commons.imaging.ImageReadException;
import org.apache.commons.imaging.ImageWriteException;
import org.apache.commons.imaging.common.RationalNumber;
import org.apache.commons.imaging.common.bytesource.ByteSource;
import org.apache.commons.imaging.common.bytesource.ByteSourceFile;
import org.apache.commons.imaging.common.bytesource.ByteSourceInputStream;
import org.apache.commons.imaging.formats.jpeg.JpegImageParser;
import org.apache.commons.imaging.formats.jpeg.exif.ExifRewriter;
import org.apache.commons.imaging.formats.tiff.TiffField;
import org.apache.commons.imaging.formats.tiff.TiffImageMetadata;
import org.apache.commons.imaging.formats.tiff.constants.TiffDirectoryType;
import org.apache.commons.imaging.formats.tiff.taginfos.TagInfo;
import org.apache.commons.imaging.formats.tiff.taginfos.TagInfoAscii;
import org.apache.commons.imaging.formats.tiff.taginfos.TagInfoAsciiOrByte;
import org.apache.commons.imaging.formats.tiff.taginfos.TagInfoAsciiOrRational;
import org.apache.commons.imaging.formats.tiff.taginfos.TagInfoByte;
import org.apache.commons.imaging.formats.tiff.taginfos.TagInfoByteOrShort;
import org.apache.commons.imaging.formats.tiff.taginfos.TagInfoDouble;
import org.apache.commons.imaging.formats.tiff.taginfos.TagInfoFloat;
import org.apache.commons.imaging.formats.tiff.taginfos.TagInfoGpsText;
import org.apache.commons.imaging.formats.tiff.taginfos.TagInfoLong;
import org.apache.commons.imaging.formats.tiff.taginfos.TagInfoRational;
import org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSByte;
import org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSLong;
import org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSRational;
import org.apache.commons.imaging.formats.tiff.taginfos.TagInfoSShort;
import org.apache.commons.imaging.formats.tiff.taginfos.TagInfoShort;
import org.apache.commons.imaging.formats.tiff.taginfos.TagInfoShortOrLong;
import org.apache.commons.imaging.formats.tiff.taginfos.TagInfoShortOrLongOrRational;
import org.apache.commons.imaging.formats.tiff.taginfos.TagInfoShortOrRational;
import org.apache.commons.imaging.formats.tiff.taginfos.TagInfoXpString;
import org.apache.commons.imaging.formats.tiff.write.TiffOutputDirectory;
import org.apache.commons.imaging.formats.tiff.write.TiffOutputField;
import org.apache.commons.imaging.formats.tiff.write.TiffOutputSet;

public class JpegMetadata {
    private TiffImageMetadata mMetadata;
    private TiffOutputSet mOutput;

    JpegMetadata() {
    }

    JpegMetadata(InputStream inputStream) throws IOException, ImageReadException {
        this.mMetadata = parse(new ByteSourceInputStream(inputStream, null));
    }

    JpegMetadata(File file) throws IOException, ImageReadException {
        this.mMetadata = parse(new ByteSourceFile(file));
    }

    boolean hasMetadata() {
        return this.mMetadata != null ? this.mMetadata.findDirectory(0) != null : this.mOutput != null;
    }

    TiffField getOriginalInputField(TagInfo tagInfo) throws ImageReadException {
        if (this.mMetadata != null) {
            return this.mMetadata.findField(tagInfo, false);
        }
        return null;
    }

    boolean contains(TagInfo tagInfo) throws ImageReadException {
        if (this.mOutput != null) {
            if (this.mOutput.findField(tagInfo) == null) {
                return false;
            }
        } else if (this.mMetadata == null || this.mMetadata.findField(tagInfo) == null) {
            return false;
        }
        return true;
    }

    boolean remove(TagInfo tagInfo) throws ImageWriteException {
        if (this.mMetadata == null && this.mOutput == null) {
            return false;
        }
        TiffOutputSet outputSet = getOutputSet();
        if (outputSet.findField(tagInfo) == null) {
            return false;
        }
        outputSet.removeField(tagInfo);
        return true;
    }

    void rewrite(InputStream inputStream, OutputStream outputStream) throws ImageWriteException, IOException, ImageReadException {
        rewrite(inputStream, outputStream, true);
    }

    void rewrite(File file, OutputStream outputStream) throws ImageWriteException, IOException, ImageReadException {
        rewrite(file, outputStream, true);
    }

    void rewrite(InputStream inputStream, OutputStream outputStream, boolean z) throws ImageWriteException, IOException, ImageReadException {
        rewrite(new ByteSourceInputStream(inputStream, null), outputStream, z);
    }

    void rewrite(File file, OutputStream outputStream, boolean z) throws ImageWriteException, IOException, ImageReadException {
        rewrite(new ByteSourceFile(file), outputStream, z);
    }

    void add(TagInfoByte tagInfoByte, byte... bArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoByte);
        for (byte b : bArr) {
            directoryForTag.add(tagInfoByte, b);
        }
    }

    void add(TagInfoAscii tagInfoAscii, String... strArr) throws ImageWriteException {
        getDirectoryForTag(tagInfoAscii).add(tagInfoAscii, strArr);
    }

    void add(TagInfoShort tagInfoShort, short... sArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoShort);
        for (short s : sArr) {
            directoryForTag.add(tagInfoShort, s);
        }
    }

    void add(TagInfoLong tagInfoLong, int... iArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoLong);
        for (int i : iArr) {
            directoryForTag.add(tagInfoLong, i);
        }
    }

    void add(TagInfoRational tagInfoRational, RationalNumber... rationalNumberArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoRational);
        for (RationalNumber rationalNumber : rationalNumberArr) {
            directoryForTag.add(tagInfoRational, rationalNumber);
        }
    }

    void add(TagInfoSByte tagInfoSByte, byte... bArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoSByte);
        for (byte b : bArr) {
            directoryForTag.add(tagInfoSByte, b);
        }
    }

    void add(TagInfoSShort tagInfoSShort, short... sArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoSShort);
        for (short s : sArr) {
            directoryForTag.add(tagInfoSShort, s);
        }
    }

    void add(TagInfoSLong tagInfoSLong, int... iArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoSLong);
        for (int i : iArr) {
            directoryForTag.add(tagInfoSLong, i);
        }
    }

    void add(TagInfoSRational tagInfoSRational, RationalNumber... rationalNumberArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoSRational);
        for (RationalNumber rationalNumber : rationalNumberArr) {
            directoryForTag.add(tagInfoSRational, rationalNumber);
        }
    }

    void add(TagInfoFloat tagInfoFloat, float... fArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoFloat);
        for (float f : fArr) {
            directoryForTag.add(tagInfoFloat, f);
        }
    }

    void add(TagInfoDouble tagInfoDouble, double... dArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoDouble);
        for (double d : dArr) {
            directoryForTag.add(tagInfoDouble, d);
        }
    }

    void add(TagInfoByteOrShort tagInfoByteOrShort, byte... bArr) throws ImageWriteException {
        getDirectoryForTag(tagInfoByteOrShort).add(tagInfoByteOrShort, bArr);
    }

    void add(TagInfoByteOrShort tagInfoByteOrShort, short... sArr) throws ImageWriteException {
        getDirectoryForTag(tagInfoByteOrShort).add(tagInfoByteOrShort, sArr);
    }

    void add(TagInfoShortOrLong tagInfoShortOrLong, short... sArr) throws ImageWriteException {
        getDirectoryForTag(tagInfoShortOrLong).add(tagInfoShortOrLong, sArr);
    }

    void add(TagInfoShortOrLong tagInfoShortOrLong, int... iArr) throws ImageWriteException {
        getDirectoryForTag(tagInfoShortOrLong).add(tagInfoShortOrLong, iArr);
    }

    void add(TagInfoShortOrLongOrRational tagInfoShortOrLongOrRational, short... sArr) throws ImageWriteException {
        getDirectoryForTag(tagInfoShortOrLongOrRational).add(tagInfoShortOrLongOrRational, sArr);
    }

    void add(TagInfoShortOrLongOrRational tagInfoShortOrLongOrRational, int... iArr) throws ImageWriteException {
        getDirectoryForTag(tagInfoShortOrLongOrRational).add(tagInfoShortOrLongOrRational, iArr);
    }

    void add(TagInfoShortOrLongOrRational tagInfoShortOrLongOrRational, RationalNumber... rationalNumberArr) throws ImageWriteException {
        getDirectoryForTag(tagInfoShortOrLongOrRational).add(tagInfoShortOrLongOrRational, rationalNumberArr);
    }

    void add(TagInfoShortOrRational tagInfoShortOrRational, short... sArr) throws ImageWriteException {
        getDirectoryForTag(tagInfoShortOrRational).add(tagInfoShortOrRational, sArr);
    }

    void add(TagInfoShortOrRational tagInfoShortOrRational, RationalNumber... rationalNumberArr) throws ImageWriteException {
        getDirectoryForTag(tagInfoShortOrRational).add(tagInfoShortOrRational, rationalNumberArr);
    }

    void add(TagInfoGpsText tagInfoGpsText, String str) throws ImageWriteException {
        getDirectoryForTag(tagInfoGpsText).add(tagInfoGpsText, str);
    }

    void add(TagInfoXpString tagInfoXpString, String str) throws ImageWriteException {
        getDirectoryForTag(tagInfoXpString).add(tagInfoXpString, str);
    }

    void add(TagInfoAsciiOrByte tagInfoAsciiOrByte, String... strArr) throws ImageWriteException {
        getDirectoryForTag(tagInfoAsciiOrByte).add(tagInfoAsciiOrByte, strArr);
    }

    void add(TagInfoAsciiOrRational tagInfoAsciiOrRational, String... strArr) throws ImageWriteException {
        getDirectoryForTag(tagInfoAsciiOrRational).add(tagInfoAsciiOrRational, strArr);
    }

    void add(TagInfoAsciiOrRational tagInfoAsciiOrRational, RationalNumber... rationalNumberArr) throws ImageWriteException {
        getDirectoryForTag(tagInfoAsciiOrRational).add(tagInfoAsciiOrRational, rationalNumberArr);
    }

    void add(TiffOutputField tiffOutputField) throws ImageWriteException {
        getDirectoryForTag(tiffOutputField.tagInfo).add(tiffOutputField);
    }

    void set(TagInfoByte tagInfoByte, byte... bArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoByte);
        directoryForTag.removeField(tagInfoByte);
        for (byte b : bArr) {
            directoryForTag.add(tagInfoByte, b);
        }
    }

    void set(TagInfoAscii tagInfoAscii, String... strArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoAscii);
        directoryForTag.removeField(tagInfoAscii);
        directoryForTag.add(tagInfoAscii, strArr);
    }

    void set(TagInfoShort tagInfoShort, short... sArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoShort);
        directoryForTag.removeField(tagInfoShort);
        for (short s : sArr) {
            directoryForTag.add(tagInfoShort, s);
        }
    }

    void set(TagInfoLong tagInfoLong, int... iArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoLong);
        directoryForTag.removeField(tagInfoLong);
        for (int i : iArr) {
            directoryForTag.add(tagInfoLong, i);
        }
    }

    void set(TagInfoRational tagInfoRational, RationalNumber... rationalNumberArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoRational);
        directoryForTag.removeField(tagInfoRational);
        for (RationalNumber rationalNumber : rationalNumberArr) {
            directoryForTag.add(tagInfoRational, rationalNumber);
        }
    }

    void set(TagInfoSByte tagInfoSByte, byte... bArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoSByte);
        directoryForTag.removeField(tagInfoSByte);
        for (byte b : bArr) {
            directoryForTag.add(tagInfoSByte, b);
        }
    }

    void set(TagInfoSShort tagInfoSShort, short... sArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoSShort);
        directoryForTag.removeField(tagInfoSShort);
        for (short s : sArr) {
            directoryForTag.add(tagInfoSShort, s);
        }
    }

    void set(TagInfoSLong tagInfoSLong, int... iArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoSLong);
        directoryForTag.removeField(tagInfoSLong);
        for (int i : iArr) {
            directoryForTag.add(tagInfoSLong, i);
        }
    }

    void set(TagInfoSRational tagInfoSRational, RationalNumber... rationalNumberArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoSRational);
        directoryForTag.removeField(tagInfoSRational);
        for (RationalNumber rationalNumber : rationalNumberArr) {
            directoryForTag.add(tagInfoSRational, rationalNumber);
        }
    }

    void set(TagInfoFloat tagInfoFloat, float... fArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoFloat);
        directoryForTag.removeField(tagInfoFloat);
        for (float f : fArr) {
            directoryForTag.add(tagInfoFloat, f);
        }
    }

    void set(TagInfoDouble tagInfoDouble, double... dArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoDouble);
        directoryForTag.removeField(tagInfoDouble);
        for (double d : dArr) {
            directoryForTag.add(tagInfoDouble, d);
        }
    }

    void set(TagInfoByteOrShort tagInfoByteOrShort, byte... bArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoByteOrShort);
        directoryForTag.removeField(tagInfoByteOrShort);
        directoryForTag.add(tagInfoByteOrShort, bArr);
    }

    void set(TagInfoByteOrShort tagInfoByteOrShort, short... sArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoByteOrShort);
        directoryForTag.removeField(tagInfoByteOrShort);
        directoryForTag.add(tagInfoByteOrShort, sArr);
    }

    void set(TagInfoShortOrLong tagInfoShortOrLong, short... sArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoShortOrLong);
        directoryForTag.removeField(tagInfoShortOrLong);
        directoryForTag.add(tagInfoShortOrLong, sArr);
    }

    void set(TagInfoShortOrLong tagInfoShortOrLong, int... iArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoShortOrLong);
        directoryForTag.removeField(tagInfoShortOrLong);
        directoryForTag.add(tagInfoShortOrLong, iArr);
    }

    void set(TagInfoShortOrLongOrRational tagInfoShortOrLongOrRational, short... sArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoShortOrLongOrRational);
        directoryForTag.removeField(tagInfoShortOrLongOrRational);
        directoryForTag.add(tagInfoShortOrLongOrRational, sArr);
    }

    void set(TagInfoShortOrLongOrRational tagInfoShortOrLongOrRational, int... iArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoShortOrLongOrRational);
        directoryForTag.removeField(tagInfoShortOrLongOrRational);
        directoryForTag.add(tagInfoShortOrLongOrRational, iArr);
    }

    void set(TagInfoShortOrLongOrRational tagInfoShortOrLongOrRational, RationalNumber... rationalNumberArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoShortOrLongOrRational);
        directoryForTag.removeField(tagInfoShortOrLongOrRational);
        directoryForTag.add(tagInfoShortOrLongOrRational, rationalNumberArr);
    }

    void set(TagInfoShortOrRational tagInfoShortOrRational, short... sArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoShortOrRational);
        directoryForTag.removeField(tagInfoShortOrRational);
        directoryForTag.add(tagInfoShortOrRational, sArr);
    }

    void set(TagInfoShortOrRational tagInfoShortOrRational, RationalNumber... rationalNumberArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoShortOrRational);
        directoryForTag.removeField(tagInfoShortOrRational);
        directoryForTag.add(tagInfoShortOrRational, rationalNumberArr);
    }

    void set(TagInfoGpsText tagInfoGpsText, String str) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoGpsText);
        directoryForTag.removeField(tagInfoGpsText);
        directoryForTag.add(tagInfoGpsText, str);
    }

    void set(TagInfoXpString tagInfoXpString, String str) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoXpString);
        directoryForTag.removeField(tagInfoXpString);
        directoryForTag.add(tagInfoXpString, str);
    }

    void set(TagInfoAsciiOrByte tagInfoAsciiOrByte, String... strArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoAsciiOrByte);
        directoryForTag.removeField(tagInfoAsciiOrByte);
        directoryForTag.add(tagInfoAsciiOrByte, strArr);
    }

    void set(TagInfoAsciiOrRational tagInfoAsciiOrRational, String... strArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoAsciiOrRational);
        directoryForTag.removeField(tagInfoAsciiOrRational);
        directoryForTag.add(tagInfoAsciiOrRational, strArr);
    }

    void set(TagInfoAsciiOrRational tagInfoAsciiOrRational, RationalNumber... rationalNumberArr) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tagInfoAsciiOrRational);
        directoryForTag.removeField(tagInfoAsciiOrRational);
        directoryForTag.add(tagInfoAsciiOrRational, rationalNumberArr);
    }

    void set(TiffOutputField tiffOutputField) throws ImageWriteException {
        TiffOutputDirectory directoryForTag = getDirectoryForTag(tiffOutputField.tagInfo);
        directoryForTag.removeField(tiffOutputField.tagInfo);
        directoryForTag.add(tiffOutputField);
    }

    private TiffOutputDirectory getDirectoryForTag(TagInfo tagInfo) throws ImageWriteException {
        TiffOutputSet outputSet = getOutputSet();
        int i = tagInfo.directoryType == TiffDirectoryType.EXIF_DIRECTORY_UNKNOWN ? -2 : tagInfo.directoryType.directoryType;
        checkHasRoot();
        TiffOutputDirectory tiffOutputDirectoryFindDirectory = outputSet.findDirectory(i);
        if (tiffOutputDirectoryFindDirectory != null) {
            return tiffOutputDirectoryFindDirectory;
        }
        TiffOutputDirectory tiffOutputDirectory = new TiffOutputDirectory(i, outputSet.byteOrder);
        outputSet.addDirectory(tiffOutputDirectory);
        return tiffOutputDirectory;
    }

    private void rewrite(ByteSource byteSource, OutputStream outputStream, boolean z) throws ImageWriteException, IOException, ImageReadException {
        ExifRewriter exifRewriter = new ExifRewriter();
        if (!hasMetadata()) {
            exifRewriter.removeExifMetadata(byteSource, outputStream);
        } else if (z) {
            exifRewriter.updateExifMetadataLossy(byteSource, outputStream, getOutputSet());
        } else {
            exifRewriter.updateExifMetadataLossless(byteSource, outputStream, getOutputSet());
        }
    }

    private void checkHasRoot() throws ImageWriteException {
        if (getOutputSet().getRootDirectory() == null) {
            getOutputSet().addRootDirectory();
        }
    }

    private TiffOutputSet getOutputSet() throws ImageWriteException {
        if (this.mOutput == null) {
            if (this.mMetadata == null) {
                this.mOutput = new TiffOutputSet();
            } else {
                this.mOutput = this.mMetadata.getOutputSet();
            }
        }
        return this.mOutput;
    }

    private TiffImageMetadata parse(ByteSource byteSource) throws IOException, ImageReadException {
        return new JpegImageParser().getExifMetadata(byteSource, new HashMap());
    }
}

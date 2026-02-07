package org.apache.commons.imaging.formats.tiff.write;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.apache.commons.imaging.ImageWriteException;
import org.apache.commons.imaging.PixelDensity;
import org.apache.commons.imaging.common.BinaryOutputStream;
import org.apache.commons.imaging.common.PackBits;
import org.apache.commons.imaging.common.RationalNumber;
import org.apache.commons.imaging.common.itu_t4.T4AndT6Compression;
import org.apache.commons.imaging.common.mylzw.MyLzwCompressor;
import org.apache.commons.imaging.formats.tiff.TiffElement$DataElement;
import org.apache.commons.imaging.formats.tiff.TiffImageData$Data;
import org.apache.commons.imaging.formats.tiff.TiffImageData$Strips;
import org.apache.commons.imaging.formats.tiff.constants.ExifTagConstants;
import org.apache.commons.imaging.formats.tiff.constants.TiffConstants;
import org.apache.commons.imaging.formats.tiff.constants.TiffTagConstants;

/* JADX INFO: loaded from: classes.dex */
public abstract class TiffImageWriterBase {
    protected final ByteOrder byteOrder;

    public abstract void write(OutputStream outputStream, TiffOutputSet tiffOutputSet) throws ImageWriteException, IOException;

    public TiffImageWriterBase() {
        this.byteOrder = TiffConstants.DEFAULT_TIFF_BYTE_ORDER;
    }

    public TiffImageWriterBase(ByteOrder byteOrder) {
        this.byteOrder = byteOrder;
    }

    protected static int imageDataPaddingLength(int i) {
        return (4 - (i % 4)) % 4;
    }

    protected TiffOutputSummary validateDirectories(TiffOutputSet tiffOutputSet) throws ImageWriteException {
        List<TiffOutputDirectory> directories = tiffOutputSet.getDirectories();
        if (directories.isEmpty()) {
            throw new ImageWriteException("No directories.");
        }
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        TiffOutputDirectory tiffOutputDirectory = null;
        TiffOutputDirectory tiffOutputDirectory2 = null;
        TiffOutputDirectory tiffOutputDirectoryAddExifDirectory = null;
        TiffOutputField tiffOutputFieldCreateOffsetField = null;
        TiffOutputField tiffOutputFieldCreateOffsetField2 = null;
        TiffOutputField tiffOutputFieldCreateOffsetField3 = null;
        for (TiffOutputDirectory tiffOutputDirectory3 : directories) {
            int i = tiffOutputDirectory3.type;
            map.put(Integer.valueOf(i), tiffOutputDirectory3);
            if (i < 0) {
                switch (i) {
                    case -4:
                        if (tiffOutputDirectory != null) {
                            throw new ImageWriteException("More than one Interoperability directory.");
                        }
                        tiffOutputDirectory = tiffOutputDirectory3;
                        break;
                        break;
                    case -3:
                        if (tiffOutputDirectory2 != null) {
                            throw new ImageWriteException("More than one GPS directory.");
                        }
                        tiffOutputDirectory2 = tiffOutputDirectory3;
                        break;
                        break;
                    case -2:
                        if (tiffOutputDirectoryAddExifDirectory != null) {
                            throw new ImageWriteException("More than one EXIF directory.");
                        }
                        tiffOutputDirectoryAddExifDirectory = tiffOutputDirectory3;
                        break;
                        break;
                    default:
                        throw new ImageWriteException("Unknown directory: " + i);
                }
            } else {
                if (arrayList.contains(Integer.valueOf(i))) {
                    throw new ImageWriteException("More than one directory with index: " + i + ".");
                }
                arrayList.add(Integer.valueOf(i));
            }
            HashSet hashSet = new HashSet();
            for (TiffOutputField tiffOutputField : tiffOutputDirectory3.getFields()) {
                if (hashSet.contains(Integer.valueOf(tiffOutputField.tag))) {
                    throw new ImageWriteException("Tag (" + tiffOutputField.tagInfo.getDescription() + ") appears twice in directory.");
                }
                hashSet.add(Integer.valueOf(tiffOutputField.tag));
                if (tiffOutputField.tag == ExifTagConstants.EXIF_TAG_EXIF_OFFSET.tag) {
                    if (tiffOutputFieldCreateOffsetField2 != null) {
                        throw new ImageWriteException("More than one Exif directory offset field.");
                    }
                    tiffOutputFieldCreateOffsetField2 = tiffOutputField;
                } else if (tiffOutputField.tag == ExifTagConstants.EXIF_TAG_INTEROP_OFFSET.tag) {
                    if (tiffOutputFieldCreateOffsetField != null) {
                        throw new ImageWriteException("More than one Interoperability directory offset field.");
                    }
                    tiffOutputFieldCreateOffsetField = tiffOutputField;
                } else if (tiffOutputField.tag != ExifTagConstants.EXIF_TAG_GPSINFO.tag) {
                    continue;
                } else {
                    if (tiffOutputFieldCreateOffsetField3 != null) {
                        throw new ImageWriteException("More than one GPS directory offset field.");
                    }
                    tiffOutputFieldCreateOffsetField3 = tiffOutputField;
                }
            }
        }
        if (arrayList.isEmpty()) {
            throw new ImageWriteException("Missing root directory.");
        }
        Collections.sort(arrayList);
        TiffOutputDirectory tiffOutputDirectory4 = null;
        int i2 = 0;
        while (i2 < arrayList.size()) {
            Integer num = (Integer) arrayList.get(i2);
            if (num.intValue() != i2) {
                throw new ImageWriteException("Missing directory: " + i2 + ".");
            }
            TiffOutputDirectory tiffOutputDirectory5 = (TiffOutputDirectory) map.get(num);
            if (tiffOutputDirectory4 != null) {
                tiffOutputDirectory4.setNextDirectory(tiffOutputDirectory5);
            }
            i2++;
            tiffOutputDirectory4 = tiffOutputDirectory5;
        }
        TiffOutputDirectory tiffOutputDirectory6 = (TiffOutputDirectory) map.get(0);
        TiffOutputSummary tiffOutputSummary = new TiffOutputSummary(this.byteOrder, tiffOutputDirectory6, map);
        if (tiffOutputDirectory == null && tiffOutputFieldCreateOffsetField != null) {
            throw new ImageWriteException("Output set has Interoperability Directory Offset field, but no Interoperability Directory");
        }
        if (tiffOutputDirectory != null) {
            if (tiffOutputDirectoryAddExifDirectory == null) {
                tiffOutputDirectoryAddExifDirectory = tiffOutputSet.addExifDirectory();
            }
            if (tiffOutputFieldCreateOffsetField == null) {
                tiffOutputFieldCreateOffsetField = TiffOutputField.createOffsetField(ExifTagConstants.EXIF_TAG_INTEROP_OFFSET, this.byteOrder);
                tiffOutputDirectoryAddExifDirectory.add(tiffOutputFieldCreateOffsetField);
            }
            tiffOutputSummary.add(tiffOutputDirectory, tiffOutputFieldCreateOffsetField);
        }
        if (tiffOutputDirectoryAddExifDirectory == null && tiffOutputFieldCreateOffsetField2 != null) {
            throw new ImageWriteException("Output set has Exif Directory Offset field, but no Exif Directory");
        }
        if (tiffOutputDirectoryAddExifDirectory != null) {
            if (tiffOutputFieldCreateOffsetField2 == null) {
                tiffOutputFieldCreateOffsetField2 = TiffOutputField.createOffsetField(ExifTagConstants.EXIF_TAG_EXIF_OFFSET, this.byteOrder);
                tiffOutputDirectory6.add(tiffOutputFieldCreateOffsetField2);
            }
            tiffOutputSummary.add(tiffOutputDirectoryAddExifDirectory, tiffOutputFieldCreateOffsetField2);
        }
        if (tiffOutputDirectory2 == null && tiffOutputFieldCreateOffsetField3 != null) {
            throw new ImageWriteException("Output set has GPS Directory Offset field, but no GPS Directory");
        }
        if (tiffOutputDirectory2 != null) {
            if (tiffOutputFieldCreateOffsetField3 == null) {
                tiffOutputFieldCreateOffsetField3 = TiffOutputField.createOffsetField(ExifTagConstants.EXIF_TAG_GPSINFO, this.byteOrder);
                tiffOutputDirectory6.add(tiffOutputFieldCreateOffsetField3);
            }
            tiffOutputSummary.add(tiffOutputDirectory2, tiffOutputFieldCreateOffsetField3);
        }
        return tiffOutputSummary;
    }

    /* JADX WARN: Removed duplicated region for block: B:119:0x025e A[LOOP:1: B:117:0x025b->B:119:0x025e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0376  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0381  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x038c  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x03a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void writeImage(BufferedImage bufferedImage, OutputStream outputStream, Map<String, Object> map) throws ImageWriteException, IOException {
        int iIntValue;
        int i;
        int i2;
        int i3;
        TiffOutputSet tiffOutputSet;
        int iIntValue2;
        int i4;
        int i5;
        int i6;
        String str;
        PixelDensity pixelDensity;
        HashMap map2 = new HashMap(map);
        if (map2.containsKey("FORMAT")) {
            map2.remove("FORMAT");
        }
        String str2 = null;
        TiffOutputSet tiffOutputSet2 = map2.containsKey("EXIF") ? (TiffOutputSet) map2.remove("EXIF") : null;
        if (map2.containsKey("XMP_XML")) {
            str2 = (String) map2.get("XMP_XML");
            map2.remove("XMP_XML");
        }
        PixelDensity pixelDensityCreateFromPixelsPerInch = (PixelDensity) map2.remove("PIXEL_DENSITY");
        if (pixelDensityCreateFromPixelsPerInch == null) {
            pixelDensityCreateFromPixelsPerInch = PixelDensity.createFromPixelsPerInch(72.0d, 72.0d);
        }
        int width = bufferedImage.getWidth();
        int height = bufferedImage.getHeight();
        int i7 = 64000;
        if (map2.containsKey("COMPRESSION")) {
            Object obj = map2.get("COMPRESSION");
            if (obj == null) {
                iIntValue = 5;
            } else {
                if (!(obj instanceof Number)) {
                    throw new ImageWriteException("Invalid compression parameter, must be numeric: " + obj);
                }
                iIntValue = ((Number) obj).intValue();
            }
            map2.remove("COMPRESSION");
            if (map2.containsKey("PARAM_KEY_LZW_COMPRESSION_BLOCK_SIZE")) {
                Object obj2 = map2.get("PARAM_KEY_LZW_COMPRESSION_BLOCK_SIZE");
                if (!(obj2 instanceof Number)) {
                    throw new ImageWriteException("Invalid compression block-size parameter: " + obj);
                }
                int iIntValue3 = ((Number) obj2).intValue();
                if (iIntValue3 < 8000) {
                    throw new ImageWriteException("Block size parameter " + iIntValue3 + " is less than 8000 minimum");
                }
                i7 = iIntValue3 * 8;
                map2.remove("PARAM_KEY_LZW_COMPRESSION_BLOCK_SIZE");
            }
        } else {
            iIntValue = 5;
        }
        HashMap map3 = new HashMap(map2);
        map2.remove("T4_OPTIONS");
        map2.remove("T6_OPTIONS");
        if (!map2.isEmpty()) {
            throw new ImageWriteException("Unknown parameter: " + map2.keySet().iterator().next());
        }
        if (iIntValue == 2 || iIntValue == 3 || iIntValue == 4) {
            i = 1;
            i2 = 1;
            i3 = 0;
        } else {
            i2 = 8;
            i = 3;
            i3 = 2;
        }
        int iMax = Math.max(1, i7 / ((width * i2) * i));
        byte[][] strips = getStrips(bufferedImage, i, i2, iMax);
        if (iIntValue == 2) {
            for (int i8 = 0; i8 < strips.length; i8++) {
                strips[i8] = T4AndT6Compression.compressModifiedHuffman(strips[i8], width, strips[i8].length / ((width + 7) / 8));
            }
        } else {
            if (iIntValue == 3) {
                Integer num = (Integer) map3.get("T4_OPTIONS");
                int iIntValue4 = (num != null ? num.intValue() : 0) & 7;
                boolean z = (iIntValue4 & 1) != 0;
                if ((iIntValue4 & 2) != 0) {
                    throw new ImageWriteException("T.4 compression with the uncompressed mode extension is not yet supported");
                }
                boolean z2 = (iIntValue4 & 4) != 0;
                int i9 = 0;
                while (i9 < strips.length) {
                    if (z) {
                        i5 = iIntValue4;
                        strips[i9] = T4AndT6Compression.compressT4_2D(strips[i9], width, strips[i9].length / ((width + 7) / 8), z2, iMax);
                    } else {
                        i5 = iIntValue4;
                        strips[i9] = T4AndT6Compression.compressT4_1D(strips[i9], width, strips[i9].length / ((width + 7) / 8), z2);
                    }
                    i9++;
                    iIntValue4 = i5;
                }
                i4 = iIntValue4;
                tiffOutputSet = tiffOutputSet2;
                iIntValue2 = 0;
                TiffElement$DataElement[] tiffElement$DataElementArr = new TiffElement$DataElement[strips.length];
                i6 = 0;
                while (i6 < strips.length) {
                    tiffElement$DataElementArr[i6] = new TiffImageData$Data(0L, strips[i6].length, strips[i6]);
                    i6++;
                    str2 = str2;
                    pixelDensityCreateFromPixelsPerInch = pixelDensityCreateFromPixelsPerInch;
                }
                str = str2;
                pixelDensity = pixelDensityCreateFromPixelsPerInch;
                TiffOutputSet tiffOutputSet3 = new TiffOutputSet(this.byteOrder);
                TiffOutputDirectory tiffOutputDirectoryAddRootDirectory = tiffOutputSet3.addRootDirectory();
                tiffOutputDirectoryAddRootDirectory.add(TiffTagConstants.TIFF_TAG_IMAGE_WIDTH, width);
                tiffOutputDirectoryAddRootDirectory.add(TiffTagConstants.TIFF_TAG_IMAGE_LENGTH, height);
                tiffOutputDirectoryAddRootDirectory.add(TiffTagConstants.TIFF_TAG_PHOTOMETRIC_INTERPRETATION, (short) i3);
                tiffOutputDirectoryAddRootDirectory.add(TiffTagConstants.TIFF_TAG_COMPRESSION, (short) iIntValue);
                tiffOutputDirectoryAddRootDirectory.add(TiffTagConstants.TIFF_TAG_SAMPLES_PER_PIXEL, (short) i);
                if (i != 3) {
                    short s = (short) i2;
                    tiffOutputDirectoryAddRootDirectory.add(TiffTagConstants.TIFF_TAG_BITS_PER_SAMPLE, s, s, s);
                } else if (i == 1) {
                    tiffOutputDirectoryAddRootDirectory.add(TiffTagConstants.TIFF_TAG_BITS_PER_SAMPLE, (short) i2);
                }
                tiffOutputDirectoryAddRootDirectory.add(TiffTagConstants.TIFF_TAG_ROWS_PER_STRIP, iMax);
                if (!pixelDensity.isUnitless()) {
                    tiffOutputDirectoryAddRootDirectory.add(TiffTagConstants.TIFF_TAG_RESOLUTION_UNIT, 0);
                    tiffOutputDirectoryAddRootDirectory.add(TiffTagConstants.TIFF_TAG_XRESOLUTION, RationalNumber.valueOf(pixelDensity.getRawHorizontalDensity()));
                    tiffOutputDirectoryAddRootDirectory.add(TiffTagConstants.TIFF_TAG_YRESOLUTION, RationalNumber.valueOf(pixelDensity.getRawVerticalDensity()));
                } else if (pixelDensity.isInInches()) {
                    tiffOutputDirectoryAddRootDirectory.add(TiffTagConstants.TIFF_TAG_RESOLUTION_UNIT, 2);
                    tiffOutputDirectoryAddRootDirectory.add(TiffTagConstants.TIFF_TAG_XRESOLUTION, RationalNumber.valueOf(pixelDensity.horizontalDensityInches()));
                    tiffOutputDirectoryAddRootDirectory.add(TiffTagConstants.TIFF_TAG_YRESOLUTION, RationalNumber.valueOf(pixelDensity.verticalDensityInches()));
                } else {
                    tiffOutputDirectoryAddRootDirectory.add(TiffTagConstants.TIFF_TAG_RESOLUTION_UNIT, 1);
                    tiffOutputDirectoryAddRootDirectory.add(TiffTagConstants.TIFF_TAG_XRESOLUTION, RationalNumber.valueOf(pixelDensity.horizontalDensityCentimetres()));
                    tiffOutputDirectoryAddRootDirectory.add(TiffTagConstants.TIFF_TAG_YRESOLUTION, RationalNumber.valueOf(pixelDensity.verticalDensityCentimetres()));
                }
                if (i4 != 0) {
                    tiffOutputDirectoryAddRootDirectory.add(TiffTagConstants.TIFF_TAG_T4_OPTIONS, i4);
                }
                if (iIntValue2 != 0) {
                    tiffOutputDirectoryAddRootDirectory.add(TiffTagConstants.TIFF_TAG_T6_OPTIONS, iIntValue2);
                }
                if (str != null) {
                    tiffOutputDirectoryAddRootDirectory.add(TiffTagConstants.TIFF_TAG_XMP, str.getBytes("utf-8"));
                }
                tiffOutputDirectoryAddRootDirectory.setTiffImageData(new TiffImageData$Strips(tiffElement$DataElementArr, iMax));
                if (tiffOutputSet != null) {
                    combineUserExifIntoFinalExif(tiffOutputSet, tiffOutputSet3);
                }
                write(outputStream, tiffOutputSet3);
            }
            if (iIntValue == 4) {
                Integer num2 = (Integer) map3.get("T6_OPTIONS");
                iIntValue2 = 4 & (num2 != null ? num2.intValue() : 0);
                if ((iIntValue2 & 2) != 0) {
                    throw new ImageWriteException("T.6 compression with the uncompressed mode extension is not yet supported");
                }
                for (int i10 = 0; i10 < strips.length; i10++) {
                    strips[i10] = T4AndT6Compression.compressT6(strips[i10], width, strips[i10].length / ((width + 7) / 8));
                }
                tiffOutputSet = tiffOutputSet2;
                i4 = 0;
                TiffElement$DataElement[] tiffElement$DataElementArr2 = new TiffElement$DataElement[strips.length];
                i6 = 0;
                while (i6 < strips.length) {
                }
                str = str2;
                pixelDensity = pixelDensityCreateFromPixelsPerInch;
                TiffOutputSet tiffOutputSet32 = new TiffOutputSet(this.byteOrder);
                TiffOutputDirectory tiffOutputDirectoryAddRootDirectory2 = tiffOutputSet32.addRootDirectory();
                tiffOutputDirectoryAddRootDirectory2.add(TiffTagConstants.TIFF_TAG_IMAGE_WIDTH, width);
                tiffOutputDirectoryAddRootDirectory2.add(TiffTagConstants.TIFF_TAG_IMAGE_LENGTH, height);
                tiffOutputDirectoryAddRootDirectory2.add(TiffTagConstants.TIFF_TAG_PHOTOMETRIC_INTERPRETATION, (short) i3);
                tiffOutputDirectoryAddRootDirectory2.add(TiffTagConstants.TIFF_TAG_COMPRESSION, (short) iIntValue);
                tiffOutputDirectoryAddRootDirectory2.add(TiffTagConstants.TIFF_TAG_SAMPLES_PER_PIXEL, (short) i);
                if (i != 3) {
                }
                tiffOutputDirectoryAddRootDirectory2.add(TiffTagConstants.TIFF_TAG_ROWS_PER_STRIP, iMax);
                if (!pixelDensity.isUnitless()) {
                }
                if (i4 != 0) {
                }
                if (iIntValue2 != 0) {
                }
                if (str != null) {
                }
                tiffOutputDirectoryAddRootDirectory2.setTiffImageData(new TiffImageData$Strips(tiffElement$DataElementArr2, iMax));
                if (tiffOutputSet != null) {
                }
                write(outputStream, tiffOutputSet32);
            }
            if (iIntValue == 32773) {
                for (int i11 = 0; i11 < strips.length; i11++) {
                    strips[i11] = new PackBits().compress(strips[i11]);
                }
            } else if (iIntValue == 5) {
                int i12 = 0;
                while (i12 < strips.length) {
                    strips[i12] = new MyLzwCompressor(8, ByteOrder.BIG_ENDIAN, true).compress(strips[i12]);
                    i12++;
                    tiffOutputSet2 = tiffOutputSet2;
                }
            } else {
                tiffOutputSet = tiffOutputSet2;
                if (iIntValue != 1) {
                    throw new ImageWriteException("Invalid compression parameter (Only CCITT 1D/Group 3/Group 4, LZW, Packbits and uncompressed supported).");
                }
                iIntValue2 = 0;
                i4 = 0;
                TiffElement$DataElement[] tiffElement$DataElementArr22 = new TiffElement$DataElement[strips.length];
                i6 = 0;
                while (i6 < strips.length) {
                }
                str = str2;
                pixelDensity = pixelDensityCreateFromPixelsPerInch;
                TiffOutputSet tiffOutputSet322 = new TiffOutputSet(this.byteOrder);
                TiffOutputDirectory tiffOutputDirectoryAddRootDirectory22 = tiffOutputSet322.addRootDirectory();
                tiffOutputDirectoryAddRootDirectory22.add(TiffTagConstants.TIFF_TAG_IMAGE_WIDTH, width);
                tiffOutputDirectoryAddRootDirectory22.add(TiffTagConstants.TIFF_TAG_IMAGE_LENGTH, height);
                tiffOutputDirectoryAddRootDirectory22.add(TiffTagConstants.TIFF_TAG_PHOTOMETRIC_INTERPRETATION, (short) i3);
                tiffOutputDirectoryAddRootDirectory22.add(TiffTagConstants.TIFF_TAG_COMPRESSION, (short) iIntValue);
                tiffOutputDirectoryAddRootDirectory22.add(TiffTagConstants.TIFF_TAG_SAMPLES_PER_PIXEL, (short) i);
                if (i != 3) {
                }
                tiffOutputDirectoryAddRootDirectory22.add(TiffTagConstants.TIFF_TAG_ROWS_PER_STRIP, iMax);
                if (!pixelDensity.isUnitless()) {
                }
                if (i4 != 0) {
                }
                if (iIntValue2 != 0) {
                }
                if (str != null) {
                }
                tiffOutputDirectoryAddRootDirectory22.setTiffImageData(new TiffImageData$Strips(tiffElement$DataElementArr22, iMax));
                if (tiffOutputSet != null) {
                }
                write(outputStream, tiffOutputSet322);
            }
        }
        tiffOutputSet = tiffOutputSet2;
        iIntValue2 = 0;
        i4 = 0;
        TiffElement$DataElement[] tiffElement$DataElementArr222 = new TiffElement$DataElement[strips.length];
        i6 = 0;
        while (i6 < strips.length) {
        }
        str = str2;
        pixelDensity = pixelDensityCreateFromPixelsPerInch;
        TiffOutputSet tiffOutputSet3222 = new TiffOutputSet(this.byteOrder);
        TiffOutputDirectory tiffOutputDirectoryAddRootDirectory222 = tiffOutputSet3222.addRootDirectory();
        tiffOutputDirectoryAddRootDirectory222.add(TiffTagConstants.TIFF_TAG_IMAGE_WIDTH, width);
        tiffOutputDirectoryAddRootDirectory222.add(TiffTagConstants.TIFF_TAG_IMAGE_LENGTH, height);
        tiffOutputDirectoryAddRootDirectory222.add(TiffTagConstants.TIFF_TAG_PHOTOMETRIC_INTERPRETATION, (short) i3);
        tiffOutputDirectoryAddRootDirectory222.add(TiffTagConstants.TIFF_TAG_COMPRESSION, (short) iIntValue);
        tiffOutputDirectoryAddRootDirectory222.add(TiffTagConstants.TIFF_TAG_SAMPLES_PER_PIXEL, (short) i);
        if (i != 3) {
        }
        tiffOutputDirectoryAddRootDirectory222.add(TiffTagConstants.TIFF_TAG_ROWS_PER_STRIP, iMax);
        if (!pixelDensity.isUnitless()) {
        }
        if (i4 != 0) {
        }
        if (iIntValue2 != 0) {
        }
        if (str != null) {
        }
        tiffOutputDirectoryAddRootDirectory222.setTiffImageData(new TiffImageData$Strips(tiffElement$DataElementArr222, iMax));
        if (tiffOutputSet != null) {
        }
        write(outputStream, tiffOutputSet3222);
    }

    private void combineUserExifIntoFinalExif(TiffOutputSet tiffOutputSet, TiffOutputSet tiffOutputSet2) throws ImageWriteException {
        List<TiffOutputDirectory> directories = tiffOutputSet2.getDirectories();
        Collections.sort(directories, TiffOutputDirectory.COMPARATOR);
        for (TiffOutputDirectory tiffOutputDirectory : tiffOutputSet.getDirectories()) {
            int iBinarySearch = Collections.binarySearch(directories, tiffOutputDirectory, TiffOutputDirectory.COMPARATOR);
            if (iBinarySearch < 0) {
                tiffOutputSet2.addDirectory(tiffOutputDirectory);
            } else {
                TiffOutputDirectory tiffOutputDirectory2 = directories.get(iBinarySearch);
                for (TiffOutputField tiffOutputField : tiffOutputDirectory.getFields()) {
                    if (tiffOutputDirectory2.findField(tiffOutputField.tagInfo) == null) {
                        tiffOutputDirectory2.add(tiffOutputField);
                    }
                }
            }
        }
    }

    private byte[][] getStrips(BufferedImage bufferedImage, int i, int i2, int i3) {
        char c;
        int i4 = i3;
        int width = bufferedImage.getWidth();
        int height = bufferedImage.getHeight();
        boolean z = true;
        int i5 = ((height + i4) - 1) / i4;
        byte[][] bArr = new byte[i5][];
        int i6 = 0;
        int i7 = height;
        int i8 = 0;
        while (i8 < i5) {
            int iMin = Math.min(i4, i7);
            i7 -= iMin;
            byte[] bArr2 = new byte[iMin * ((((i2 * i) * width) + 7) / 8)];
            int i9 = i8 * i4;
            int i10 = i9 + i4;
            int i11 = i6;
            while (i9 < height && i9 < i10) {
                int i12 = i6;
                int i13 = i12;
                int i14 = i11;
                int i15 = i13;
                while (i15 < width) {
                    int rgb = bufferedImage.getRGB(i15, i9);
                    int i16 = 255 & (rgb >> 16);
                    int i17 = 255 & (rgb >> 8);
                    int i18 = 255 & (rgb >> 0);
                    int i19 = width;
                    if (i2 == 1) {
                        int i20 = (i13 << 1) | (((i16 + i17) + i18) / 3 > 127 ? 0 : 1);
                        int i21 = i12 + 1;
                        if (i21 == 8) {
                            bArr2[i14] = (byte) i20;
                            i14++;
                            i21 = 0;
                            i20 = 0;
                        }
                        i12 = i21;
                        i13 = i20;
                    } else {
                        int i22 = i14 + 1;
                        bArr2[i14] = (byte) i16;
                        int i23 = i22 + 1;
                        bArr2[i22] = (byte) i17;
                        bArr2[i23] = (byte) i18;
                        i14 = i23 + 1;
                    }
                    i15++;
                    z = true;
                    width = i19;
                }
                int i24 = width;
                boolean z2 = z;
                if (i12 > 0) {
                    c = '\b';
                    bArr2[i14] = (byte) (i13 << (8 - i12));
                    i11 = i14 + 1;
                } else {
                    c = '\b';
                    i11 = i14;
                }
                i9++;
                z = z2;
                width = i24;
                i6 = 0;
            }
            bArr[i8] = bArr2;
            i8++;
            z = z;
            width = width;
            i4 = i3;
            i6 = 0;
        }
        return bArr;
    }

    protected void writeImageFileHeader(BinaryOutputStream binaryOutputStream) throws IOException {
        writeImageFileHeader(binaryOutputStream, 8L);
    }

    protected void writeImageFileHeader(BinaryOutputStream binaryOutputStream, long j) throws IOException {
        if (this.byteOrder == ByteOrder.LITTLE_ENDIAN) {
            binaryOutputStream.write(73);
            binaryOutputStream.write(73);
        } else {
            binaryOutputStream.write(77);
            binaryOutputStream.write(77);
        }
        binaryOutputStream.write2Bytes(42);
        binaryOutputStream.write4Bytes((int) j);
    }
}

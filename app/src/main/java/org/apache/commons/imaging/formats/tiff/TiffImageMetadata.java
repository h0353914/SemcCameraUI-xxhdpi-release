package org.apache.commons.imaging.formats.tiff;

import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.imaging.ImageReadException;
import org.apache.commons.imaging.ImageWriteException;
import org.apache.commons.imaging.common.GenericImageMetadata;
import org.apache.commons.imaging.common.ImageMetadata$ImageMetadataItem;
import org.apache.commons.imaging.common.RationalNumber;
import org.apache.commons.imaging.formats.tiff.constants.GpsTagConstants;
import org.apache.commons.imaging.formats.tiff.constants.TiffDirectoryType;
import org.apache.commons.imaging.formats.tiff.taginfos.TagInfo;
import org.apache.commons.imaging.formats.tiff.taginfos.TagInfoAscii;
import org.apache.commons.imaging.formats.tiff.taginfos.TagInfoByte;
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
import org.apache.commons.imaging.formats.tiff.taginfos.TagInfoXpString;
import org.apache.commons.imaging.formats.tiff.write.TiffOutputSet;

public class TiffImageMetadata extends GenericImageMetadata {
    public final TiffContents contents;

    public TiffImageMetadata(TiffContents tiffContents) {
        this.contents = tiffContents;
    }

    public List<? extends ImageMetadata$ImageMetadataItem> getDirectories() {
        return super.getItems();
    }

    @Override // org.apache.commons.imaging.common.GenericImageMetadata, org.apache.commons.imaging.common.ImageMetadata
    public List<? extends ImageMetadata$ImageMetadataItem> getItems() {
        ArrayList arrayList = new ArrayList();
        Iterator<? extends ImageMetadata$ImageMetadataItem> it = super.getItems().iterator();
        while (it.hasNext()) {
            arrayList.addAll(((TiffImageMetadata$Directory) it.next()).getItems());
        }
        return arrayList;
    }

    public TiffOutputSet getOutputSet() throws ImageWriteException {
        ByteOrder byteOrder = this.contents.header.byteOrder;
        TiffOutputSet tiffOutputSet = new TiffOutputSet(byteOrder);
        Iterator<? extends ImageMetadata$ImageMetadataItem> it = getDirectories().iterator();
        while (it.hasNext()) {
            TiffImageMetadata$Directory tiffImageMetadata$Directory = (TiffImageMetadata$Directory) it.next();
            if (tiffOutputSet.findDirectory(tiffImageMetadata$Directory.type) == null) {
                tiffOutputSet.addDirectory(tiffImageMetadata$Directory.getOutputDirectory(byteOrder));
            }
        }
        return tiffOutputSet;
    }

    public TiffField findField(TagInfo tagInfo) throws ImageReadException {
        return findField(tagInfo, false);
    }

    public TiffField findField(TagInfo tagInfo, boolean z) throws ImageReadException {
        TiffField tiffFieldFindField;
        TiffField tiffFieldFindField2;
        Integer tagCount = TiffTags.getTagCount(tagInfo.tag);
        int iIntValue = tagCount == null ? 0 : tagCount.intValue();
        List<? extends ImageMetadata$ImageMetadataItem> directories = getDirectories();
        if (z || tagInfo.directoryType != TiffDirectoryType.EXIF_DIRECTORY_UNKNOWN) {
            Iterator<? extends ImageMetadata$ImageMetadataItem> it = directories.iterator();
            while (it.hasNext()) {
                TiffImageMetadata$Directory tiffImageMetadata$Directory = (TiffImageMetadata$Directory) it.next();
                if (tiffImageMetadata$Directory.type == tagInfo.directoryType.directoryType && (tiffFieldFindField2 = tiffImageMetadata$Directory.findField(tagInfo)) != null) {
                    return tiffFieldFindField2;
                }
            }
            if (z || iIntValue > 1) {
                return null;
            }
            Iterator<? extends ImageMetadata$ImageMetadataItem> it2 = directories.iterator();
            while (it2.hasNext()) {
                TiffImageMetadata$Directory tiffImageMetadata$Directory2 = (TiffImageMetadata$Directory) it2.next();
                if (tagInfo.directoryType.isImageDirectory() && tiffImageMetadata$Directory2.type >= 0) {
                    TiffField tiffFieldFindField3 = tiffImageMetadata$Directory2.findField(tagInfo);
                    if (tiffFieldFindField3 != null) {
                        return tiffFieldFindField3;
                    }
                } else if (!tagInfo.directoryType.isImageDirectory() && tiffImageMetadata$Directory2.type < 0 && (tiffFieldFindField = tiffImageMetadata$Directory2.findField(tagInfo)) != null) {
                    return tiffFieldFindField;
                }
            }
        }
        Iterator<? extends ImageMetadata$ImageMetadataItem> it3 = directories.iterator();
        while (it3.hasNext()) {
            TiffField tiffFieldFindField4 = ((TiffImageMetadata$Directory) it3.next()).findField(tagInfo);
            if (tiffFieldFindField4 != null) {
                return tiffFieldFindField4;
            }
        }
        return null;
    }

    public Object getFieldValue(TagInfo tagInfo) throws ImageReadException {
        TiffField tiffFieldFindField = findField(tagInfo);
        if (tiffFieldFindField == null) {
            return null;
        }
        return tiffFieldFindField.getValue();
    }

    public byte[] getFieldValue(TagInfoByte tagInfoByte) throws ImageReadException {
        TiffField tiffFieldFindField = findField(tagInfoByte);
        if (tiffFieldFindField != null && tagInfoByte.dataTypes.contains(tiffFieldFindField.getFieldType())) {
            return tiffFieldFindField.getByteArrayValue();
        }
        return null;
    }

    public String[] getFieldValue(TagInfoAscii tagInfoAscii) throws ImageReadException {
        TiffField tiffFieldFindField = findField(tagInfoAscii);
        if (tiffFieldFindField == null || !tagInfoAscii.dataTypes.contains(tiffFieldFindField.getFieldType())) {
            return null;
        }
        return tagInfoAscii.getValue(tiffFieldFindField.getByteOrder(), tiffFieldFindField.getByteArrayValue());
    }

    public short[] getFieldValue(TagInfoShort tagInfoShort) throws ImageReadException {
        TiffField tiffFieldFindField = findField(tagInfoShort);
        if (tiffFieldFindField == null || !tagInfoShort.dataTypes.contains(tiffFieldFindField.getFieldType())) {
            return null;
        }
        return tagInfoShort.getValue(tiffFieldFindField.getByteOrder(), tiffFieldFindField.getByteArrayValue());
    }

    public int[] getFieldValue(TagInfoLong tagInfoLong) throws ImageReadException {
        TiffField tiffFieldFindField = findField(tagInfoLong);
        if (tiffFieldFindField == null || !tagInfoLong.dataTypes.contains(tiffFieldFindField.getFieldType())) {
            return null;
        }
        return tagInfoLong.getValue(tiffFieldFindField.getByteOrder(), tiffFieldFindField.getByteArrayValue());
    }

    public RationalNumber[] getFieldValue(TagInfoRational tagInfoRational) throws ImageReadException {
        TiffField tiffFieldFindField = findField(tagInfoRational);
        if (tiffFieldFindField == null || !tagInfoRational.dataTypes.contains(tiffFieldFindField.getFieldType())) {
            return null;
        }
        return tagInfoRational.getValue(tiffFieldFindField.getByteOrder(), tiffFieldFindField.getByteArrayValue());
    }

    public byte[] getFieldValue(TagInfoSByte tagInfoSByte) throws ImageReadException {
        TiffField tiffFieldFindField = findField(tagInfoSByte);
        if (tiffFieldFindField != null && tagInfoSByte.dataTypes.contains(tiffFieldFindField.getFieldType())) {
            return tiffFieldFindField.getByteArrayValue();
        }
        return null;
    }

    public short[] getFieldValue(TagInfoSShort tagInfoSShort) throws ImageReadException {
        TiffField tiffFieldFindField = findField(tagInfoSShort);
        if (tiffFieldFindField == null || !tagInfoSShort.dataTypes.contains(tiffFieldFindField.getFieldType())) {
            return null;
        }
        return tagInfoSShort.getValue(tiffFieldFindField.getByteOrder(), tiffFieldFindField.getByteArrayValue());
    }

    public int[] getFieldValue(TagInfoSLong tagInfoSLong) throws ImageReadException {
        TiffField tiffFieldFindField = findField(tagInfoSLong);
        if (tiffFieldFindField == null || !tagInfoSLong.dataTypes.contains(tiffFieldFindField.getFieldType())) {
            return null;
        }
        return tagInfoSLong.getValue(tiffFieldFindField.getByteOrder(), tiffFieldFindField.getByteArrayValue());
    }

    public RationalNumber[] getFieldValue(TagInfoSRational tagInfoSRational) throws ImageReadException {
        TiffField tiffFieldFindField = findField(tagInfoSRational);
        if (tiffFieldFindField == null || !tagInfoSRational.dataTypes.contains(tiffFieldFindField.getFieldType())) {
            return null;
        }
        return tagInfoSRational.getValue(tiffFieldFindField.getByteOrder(), tiffFieldFindField.getByteArrayValue());
    }

    public float[] getFieldValue(TagInfoFloat tagInfoFloat) throws ImageReadException {
        TiffField tiffFieldFindField = findField(tagInfoFloat);
        if (tiffFieldFindField == null || !tagInfoFloat.dataTypes.contains(tiffFieldFindField.getFieldType())) {
            return null;
        }
        return tagInfoFloat.getValue(tiffFieldFindField.getByteOrder(), tiffFieldFindField.getByteArrayValue());
    }

    public double[] getFieldValue(TagInfoDouble tagInfoDouble) throws ImageReadException {
        TiffField tiffFieldFindField = findField(tagInfoDouble);
        if (tiffFieldFindField == null || !tagInfoDouble.dataTypes.contains(tiffFieldFindField.getFieldType())) {
            return null;
        }
        return tagInfoDouble.getValue(tiffFieldFindField.getByteOrder(), tiffFieldFindField.getByteArrayValue());
    }

    public String getFieldValue(TagInfoGpsText tagInfoGpsText) throws ImageReadException {
        TiffField tiffFieldFindField = findField(tagInfoGpsText);
        if (tiffFieldFindField == null) {
            return null;
        }
        return tagInfoGpsText.getValue(tiffFieldFindField);
    }

    public String getFieldValue(TagInfoXpString tagInfoXpString) throws ImageReadException {
        TiffField tiffFieldFindField = findField(tagInfoXpString);
        if (tiffFieldFindField == null) {
            return null;
        }
        return tagInfoXpString.getValue(tiffFieldFindField);
    }

    public TiffDirectory findDirectory(int i) {
        Iterator<? extends ImageMetadata$ImageMetadataItem> it = getDirectories().iterator();
        while (it.hasNext()) {
            TiffImageMetadata$Directory tiffImageMetadata$Directory = (TiffImageMetadata$Directory) it.next();
            if (tiffImageMetadata$Directory.type == i) {
                return TiffImageMetadata$Directory.access$000(tiffImageMetadata$Directory);
            }
        }
        return null;
    }

    public List<TiffField> getAllFields() {
        ArrayList arrayList = new ArrayList();
        Iterator<? extends ImageMetadata$ImageMetadataItem> it = getDirectories().iterator();
        while (it.hasNext()) {
            arrayList.addAll(((TiffImageMetadata$Directory) it.next()).getAllFields());
        }
        return arrayList;
    }

    public TiffImageMetadata$GPSInfo getGPS() throws ImageReadException {
        TiffDirectory tiffDirectoryFindDirectory = findDirectory(-3);
        if (tiffDirectoryFindDirectory == null) {
            return null;
        }
        TiffField tiffFieldFindField = tiffDirectoryFindDirectory.findField(GpsTagConstants.GPS_TAG_GPS_LATITUDE_REF);
        TiffField tiffFieldFindField2 = tiffDirectoryFindDirectory.findField(GpsTagConstants.GPS_TAG_GPS_LATITUDE);
        TiffField tiffFieldFindField3 = tiffDirectoryFindDirectory.findField(GpsTagConstants.GPS_TAG_GPS_LONGITUDE_REF);
        TiffField tiffFieldFindField4 = tiffDirectoryFindDirectory.findField(GpsTagConstants.GPS_TAG_GPS_LONGITUDE);
        if (tiffFieldFindField == null || tiffFieldFindField2 == null || tiffFieldFindField3 == null || tiffFieldFindField4 == null) {
            return null;
        }
        String stringValue = tiffFieldFindField.getStringValue();
        RationalNumber[] rationalNumberArr = (RationalNumber[]) tiffFieldFindField2.getValue();
        String stringValue2 = tiffFieldFindField3.getStringValue();
        RationalNumber[] rationalNumberArr2 = (RationalNumber[]) tiffFieldFindField4.getValue();
        if (rationalNumberArr.length != 3 || rationalNumberArr2.length != 3) {
            throw new ImageReadException("Expected three values for latitude and longitude.");
        }
        return new TiffImageMetadata$GPSInfo(stringValue, stringValue2, rationalNumberArr[0], rationalNumberArr[1], rationalNumberArr[2], rationalNumberArr2[0], rationalNumberArr2[1], rationalNumberArr2[2]);
    }
}

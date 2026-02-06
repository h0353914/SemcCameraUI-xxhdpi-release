package org.apache.commons.imaging.formats.tiff;

import java.io.IOException;
import java.nio.ByteOrder;
import org.apache.commons.imaging.ImageReadException;
import org.apache.commons.imaging.formats.tiff.datareaders.DataReader;
import org.apache.commons.imaging.formats.tiff.datareaders.DataReaderStrips;
import org.apache.commons.imaging.formats.tiff.photometricinterpreters.PhotometricInterpreter;

public class TiffImageData$Strips extends TiffImageData {
    public final int rowsPerStrip;
    private final TiffElement$DataElement[] strips;

    @Override // org.apache.commons.imaging.formats.tiff.TiffImageData
    public boolean stripsNotTiles() {
        return true;
    }

    public TiffImageData$Strips(TiffElement$DataElement[] tiffElement$DataElementArr, int i) {
        this.strips = tiffElement$DataElementArr;
        this.rowsPerStrip = i;
    }

    @Override // org.apache.commons.imaging.formats.tiff.TiffImageData
    public TiffElement$DataElement[] getImageData() {
        return this.strips;
    }

    public TiffElement$DataElement getImageData(int i) {
        return this.strips[i];
    }

    public int getImageDataLength() {
        return this.strips.length;
    }

    @Override // org.apache.commons.imaging.formats.tiff.TiffImageData
    public DataReader getDataReader(TiffDirectory tiffDirectory, PhotometricInterpreter photometricInterpreter, int i, int[] iArr, int i2, int i3, int i4, int i5, int i6, ByteOrder byteOrder) throws IOException, ImageReadException {
        return new DataReaderStrips(tiffDirectory, photometricInterpreter, i, iArr, i2, i3, i4, i5, i6, byteOrder, this.rowsPerStrip, this);
    }
}

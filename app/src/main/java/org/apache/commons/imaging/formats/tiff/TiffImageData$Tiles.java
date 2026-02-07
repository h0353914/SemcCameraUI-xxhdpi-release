package org.apache.commons.imaging.formats.tiff;

import java.io.IOException;
import java.nio.ByteOrder;
import org.apache.commons.imaging.ImageReadException;
import org.apache.commons.imaging.formats.tiff.datareaders.DataReader;
import org.apache.commons.imaging.formats.tiff.datareaders.DataReaderTiled;
import org.apache.commons.imaging.formats.tiff.photometricinterpreters.PhotometricInterpreter;

/* JADX INFO: loaded from: classes.dex */
public class TiffImageData$Tiles extends TiffImageData {
    private final int tileLength;
    private final int tileWidth;
    public final TiffElement$DataElement[] tiles;

    @Override // org.apache.commons.imaging.formats.tiff.TiffImageData
    public boolean stripsNotTiles() {
        return false;
    }

    public TiffImageData$Tiles(TiffElement$DataElement[] tiffElement$DataElementArr, int i, int i2) {
        this.tiles = tiffElement$DataElementArr;
        this.tileWidth = i;
        this.tileLength = i2;
    }

    @Override // org.apache.commons.imaging.formats.tiff.TiffImageData
    public TiffElement$DataElement[] getImageData() {
        return this.tiles;
    }

    @Override // org.apache.commons.imaging.formats.tiff.TiffImageData
    public DataReader getDataReader(TiffDirectory tiffDirectory, PhotometricInterpreter photometricInterpreter, int i, int[] iArr, int i2, int i3, int i4, int i5, int i6, ByteOrder byteOrder) throws IOException, ImageReadException {
        return new DataReaderTiled(tiffDirectory, photometricInterpreter, this.tileWidth, this.tileLength, i, iArr, i2, i3, i4, i5, i6, byteOrder, this);
    }

    public int getTileWidth() {
        return this.tileWidth;
    }

    public int getTileHeight() {
        return this.tileLength;
    }
}

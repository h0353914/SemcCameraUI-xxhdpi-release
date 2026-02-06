package org.apache.commons.imaging.formats.tiff;

import java.io.IOException;
import java.nio.ByteOrder;
import org.apache.commons.imaging.ImageReadException;
import org.apache.commons.imaging.formats.tiff.datareaders.DataReader;
import org.apache.commons.imaging.formats.tiff.photometricinterpreters.PhotometricInterpreter;

public abstract class TiffImageData {
    public abstract DataReader getDataReader(TiffDirectory tiffDirectory, PhotometricInterpreter photometricInterpreter, int i, int[] iArr, int i2, int i3, int i4, int i5, int i6, ByteOrder byteOrder) throws IOException, ImageReadException;

    public abstract TiffElement$DataElement[] getImageData();

    public abstract boolean stripsNotTiles();
}

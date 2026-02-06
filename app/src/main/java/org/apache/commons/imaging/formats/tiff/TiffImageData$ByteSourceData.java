package org.apache.commons.imaging.formats.tiff;

import java.io.IOException;
import org.apache.commons.imaging.common.bytesource.ByteSourceFile;

public class TiffImageData$ByteSourceData extends TiffImageData$Data {
    ByteSourceFile byteSourceFile;

    public TiffImageData$ByteSourceData(long j, int i, ByteSourceFile byteSourceFile) {
        super(j, i, new byte[0]);
        this.byteSourceFile = byteSourceFile;
    }

    @Override // org.apache.commons.imaging.formats.tiff.TiffImageData$Data, org.apache.commons.imaging.formats.tiff.TiffElement
    public String getElementDescription(boolean z) {
        return "Tiff image data: " + getDataLength() + " bytes";
    }

    @Override // org.apache.commons.imaging.formats.tiff.TiffElement$DataElement
    public byte[] getData() {
        try {
            return this.byteSourceFile.getBlock(this.offset, this.length);
        } catch (IOException unused) {
            return new byte[0];
        }
    }
}

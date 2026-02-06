package org.apache.commons.imaging.formats.jpeg.segments;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.imaging.ImageReadException;
import org.apache.commons.imaging.common.BinaryFunctions;

public class DqtSegment extends Segment {
    public final List<DqtSegment$QuantizationTable> quantizationTables;

    public DqtSegment(int i, byte[] bArr) throws IOException, ImageReadException {
        this(i, bArr.length, new ByteArrayInputStream(bArr));
    }

    public DqtSegment(int i, int i2, InputStream inputStream) throws IOException, ImageReadException {
        super(i, i2);
        this.quantizationTables = new ArrayList();
        while (i2 > 0) {
            byte b = BinaryFunctions.readByte("QuantizationTablePrecisionAndDestination", inputStream, "Not a Valid JPEG File");
            i2--;
            int i3 = (b >> 4) & 15;
            int i4 = b & 15;
            int[] iArr = new int[64];
            for (int i5 = 0; i5 < 64; i5++) {
                if (i3 == 0) {
                    iArr[i5] = 255 & BinaryFunctions.readByte("QuantizationTableElement", inputStream, "Not a Valid JPEG File");
                    i2--;
                } else if (i3 == 1) {
                    iArr[i5] = BinaryFunctions.read2Bytes("QuantizationTableElement", inputStream, "Not a Valid JPEG File", getByteOrder());
                    i2 -= 2;
                } else {
                    throw new ImageReadException("Quantization table precision '" + i3 + "' is invalid");
                }
            }
            this.quantizationTables.add(new DqtSegment$QuantizationTable(i3, i4, iArr));
        }
    }

    @Override // org.apache.commons.imaging.formats.jpeg.segments.Segment
    public String getDescription() {
        return "DQT (" + getSegmentType() + ")";
    }
}

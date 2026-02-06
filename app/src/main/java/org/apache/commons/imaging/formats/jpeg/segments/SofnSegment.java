package org.apache.commons.imaging.formats.jpeg.segments;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.imaging.common.BinaryFunctions;

public class SofnSegment extends Segment {
    private final SofnSegment$Component[] components;
    public final int height;
    public final int numberOfComponents;
    public final int precision;
    public final int width;

    public SofnSegment(int i, byte[] bArr) throws IOException {
        this(i, bArr.length, new ByteArrayInputStream(bArr));
    }

    public SofnSegment(int i, int i2, InputStream inputStream) throws IOException {
        super(i, i2);
        if (getDebug()) {
            System.out.println("SOF0Segment marker_length: " + i2);
        }
        this.precision = BinaryFunctions.readByte("Data_precision", inputStream, "Not a Valid JPEG File");
        this.height = BinaryFunctions.read2Bytes("Image_height", inputStream, "Not a Valid JPEG File", getByteOrder());
        this.width = BinaryFunctions.read2Bytes("Image_Width", inputStream, "Not a Valid JPEG File", getByteOrder());
        this.numberOfComponents = BinaryFunctions.readByte("Number_of_components", inputStream, "Not a Valid JPEG File");
        this.components = new SofnSegment$Component[this.numberOfComponents];
        for (int i3 = 0; i3 < this.numberOfComponents; i3++) {
            byte b = BinaryFunctions.readByte("ComponentIdentifier", inputStream, "Not a Valid JPEG File");
            byte b2 = BinaryFunctions.readByte("SamplingFactors", inputStream, "Not a Valid JPEG File");
            this.components[i3] = new SofnSegment$Component(b, (b2 >> 4) & 15, b2 & 15, BinaryFunctions.readByte("QuantTabDestSel", inputStream, "Not a Valid JPEG File"));
        }
        if (getDebug()) {
            System.out.println("");
        }
    }

    public SofnSegment$Component[] getComponents() {
        return (SofnSegment$Component[]) this.components.clone();
    }

    public SofnSegment$Component getComponents(int i) {
        return this.components[i];
    }

    @Override // org.apache.commons.imaging.formats.jpeg.segments.Segment
    public String getDescription() {
        return "SOFN (SOF" + (this.marker - 65472) + ") (" + getSegmentType() + ")";
    }
}

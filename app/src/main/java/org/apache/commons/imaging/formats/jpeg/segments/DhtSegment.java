package org.apache.commons.imaging.formats.jpeg.segments;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.apache.commons.imaging.common.BinaryFunctions;

/* JADX INFO: loaded from: classes.dex */
public class DhtSegment extends Segment {
    public final List<DhtSegment$HuffmanTable> huffmanTables;

    public DhtSegment(int i, byte[] bArr) throws IOException {
        this(i, bArr.length, new ByteArrayInputStream(bArr));
    }

    public DhtSegment(int i, int i2, InputStream inputStream) throws IOException {
        super(i, i2);
        ArrayList arrayList = new ArrayList();
        while (i2 > 0) {
            int i3 = BinaryFunctions.readByte("TableClassAndDestinationId", inputStream, "Not a Valid JPEG File") & 255;
            i2--;
            int i4 = (i3 >> 4) & 15;
            int i5 = i3 & 15;
            int[] iArr = new int[17];
            int i6 = 0;
            for (int i7 = 1; i7 < iArr.length; i7++) {
                iArr[i7] = BinaryFunctions.readByte("Li", inputStream, "Not a Valid JPEG File") & 255;
                i2--;
                i6 += iArr[i7];
            }
            int[] iArr2 = new int[i6];
            for (int i8 = 0; i8 < i6; i8++) {
                iArr2[i8] = BinaryFunctions.readByte("Vij", inputStream, "Not a Valid JPEG File") & 255;
                i2--;
            }
            arrayList.add(new DhtSegment$HuffmanTable(i4, i5, iArr, iArr2));
        }
        this.huffmanTables = Collections.unmodifiableList(arrayList);
    }

    @Override // org.apache.commons.imaging.formats.jpeg.segments.Segment
    public String getDescription() {
        return "DHT (" + getSegmentType() + ")";
    }
}

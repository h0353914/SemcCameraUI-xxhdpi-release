package org.apache.commons.imaging.formats.jpeg.segments;

/* JADX INFO: loaded from: classes.dex */
public class DqtSegment$QuantizationTable {
    public final int destinationIdentifier;
    private final int[] elements;
    public final int precision;

    public DqtSegment$QuantizationTable(int i, int i2, int[] iArr) {
        this.precision = i;
        this.destinationIdentifier = i2;
        this.elements = iArr;
    }

    public int[] getElements() {
        return this.elements;
    }
}

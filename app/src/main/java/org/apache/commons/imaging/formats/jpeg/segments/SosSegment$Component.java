package org.apache.commons.imaging.formats.jpeg.segments;

public class SosSegment$Component {
    public final int acCodingTableSelector;
    public final int dcCodingTableSelector;
    public final int scanComponentSelector;

    public SosSegment$Component(int i, int i2, int i3) {
        this.scanComponentSelector = i;
        this.dcCodingTableSelector = i2;
        this.acCodingTableSelector = i3;
    }
}

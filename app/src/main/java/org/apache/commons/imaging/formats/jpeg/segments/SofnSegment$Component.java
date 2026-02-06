package org.apache.commons.imaging.formats.jpeg.segments;

public class SofnSegment$Component {
    public final int componentIdentifier;
    public final int horizontalSamplingFactor;
    public final int quantTabDestSelector;
    public final int verticalSamplingFactor;

    public SofnSegment$Component(int i, int i2, int i3, int i4) {
        this.componentIdentifier = i;
        this.horizontalSamplingFactor = i2;
        this.verticalSamplingFactor = i3;
        this.quantTabDestSelector = i4;
    }
}

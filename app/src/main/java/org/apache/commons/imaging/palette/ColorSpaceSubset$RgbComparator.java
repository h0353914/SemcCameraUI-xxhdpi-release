package org.apache.commons.imaging.palette;

import java.io.Serializable;
import java.util.Comparator;

public class ColorSpaceSubset$RgbComparator implements Comparator<ColorSpaceSubset>, Serializable {
    private static final long serialVersionUID = 509214838111679029L;

    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(ColorSpaceSubset colorSpaceSubset, ColorSpaceSubset colorSpaceSubset2) {
        return compare2(colorSpaceSubset, colorSpaceSubset2);
    }

    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(ColorSpaceSubset colorSpaceSubset, ColorSpaceSubset colorSpaceSubset2) {
        return colorSpaceSubset.rgb - colorSpaceSubset2.rgb;
    }
}

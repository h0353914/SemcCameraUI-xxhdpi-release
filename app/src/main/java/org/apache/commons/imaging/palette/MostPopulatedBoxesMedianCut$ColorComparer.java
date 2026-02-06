package org.apache.commons.imaging.palette;

import java.io.Serializable;
import java.util.Comparator;

class MostPopulatedBoxesMedianCut$ColorComparer implements Comparator<ColorCount>, Serializable {
    private static final long serialVersionUID = 1;
    private final ColorComponent colorComponent;

    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(ColorCount colorCount, ColorCount colorCount2) {
        return compare2(colorCount, colorCount2);
    }

    public MostPopulatedBoxesMedianCut$ColorComparer(ColorComponent colorComponent) {
        this.colorComponent = colorComponent;
    }

    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(ColorCount colorCount, ColorCount colorCount2) {
        switch (this.colorComponent) {
            case ALPHA:
                return colorCount.alpha - colorCount2.alpha;
            case RED:
                return colorCount.red - colorCount2.red;
            case GREEN:
                return colorCount.green - colorCount2.green;
            case BLUE:
                return colorCount.blue - colorCount2.blue;
            default:
                return 0;
        }
    }
}

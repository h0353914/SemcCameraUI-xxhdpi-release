package org.apache.commons.imaging.palette;

import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
class LongestAxisMedianCut$2 implements Comparator<ColorCount> {
    final /* synthetic */ LongestAxisMedianCut this$0;
    final /* synthetic */ ColorComponent val$mode;

    LongestAxisMedianCut$2(LongestAxisMedianCut longestAxisMedianCut, ColorComponent colorComponent) {
        this.this$0 = longestAxisMedianCut;
        this.val$mode = colorComponent;
    }

    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(ColorCount colorCount, ColorCount colorCount2) {
        return compare2(colorCount, colorCount2);
    }

    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(ColorCount colorCount, ColorCount colorCount2) {
        switch (LongestAxisMedianCut$3.$SwitchMap$org$apache$commons$imaging$palette$ColorComponent[this.val$mode.ordinal()]) {
            case 1:
                return colorCount.alpha - colorCount2.alpha;
            case 2:
                return colorCount.red - colorCount2.red;
            case 3:
                return colorCount.green - colorCount2.green;
            case 4:
                return colorCount.blue - colorCount2.blue;
            default:
                return 0;
        }
    }
}

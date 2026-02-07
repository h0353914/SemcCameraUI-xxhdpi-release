package org.apache.commons.imaging.palette;

import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
class LongestAxisMedianCut$1 implements Comparator<ColorGroup> {
    LongestAxisMedianCut$1() {
    }

    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(ColorGroup colorGroup, ColorGroup colorGroup2) {
        return compare2(colorGroup, colorGroup2);
    }

    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(ColorGroup colorGroup, ColorGroup colorGroup2) {
        if (colorGroup.maxDiff == colorGroup2.maxDiff) {
            return colorGroup2.diffTotal - colorGroup.diffTotal;
        }
        return colorGroup2.maxDiff - colorGroup.maxDiff;
    }
}

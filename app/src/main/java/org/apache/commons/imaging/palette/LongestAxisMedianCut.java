package org.apache.commons.imaging.palette;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.apache.commons.imaging.ImageWriteException;

/* JADX INFO: loaded from: classes.dex */
public class LongestAxisMedianCut implements MedianCut {
    private static final Comparator<ColorGroup> COMPARATOR = new LongestAxisMedianCut$1();

    @Override // org.apache.commons.imaging.palette.MedianCut
    public boolean performNextMedianCut(List<ColorGroup> list, boolean z) throws ImageWriteException {
        Collections.sort(list, COMPARATOR);
        ColorGroup colorGroup = list.get(0);
        if (colorGroup.maxDiff == 0) {
            return false;
        }
        if (!z && colorGroup.alphaDiff > colorGroup.redDiff && colorGroup.alphaDiff > colorGroup.greenDiff && colorGroup.alphaDiff > colorGroup.blueDiff) {
            doCut(colorGroup, ColorComponent.ALPHA, list, z);
            return true;
        }
        if (colorGroup.redDiff > colorGroup.greenDiff && colorGroup.redDiff > colorGroup.blueDiff) {
            doCut(colorGroup, ColorComponent.RED, list, z);
            return true;
        }
        if (colorGroup.greenDiff > colorGroup.blueDiff) {
            doCut(colorGroup, ColorComponent.GREEN, list, z);
            return true;
        }
        doCut(colorGroup, ColorComponent.BLUE, list, z);
        return true;
    }

    private void doCut(ColorGroup colorGroup, ColorComponent colorComponent, List<ColorGroup> list, boolean z) throws ImageWriteException {
        int i;
        int i2;
        Collections.sort(colorGroup.colorCounts, new LongestAxisMedianCut$2(this, colorComponent));
        int iRound = (int) Math.round(((double) colorGroup.totalPoints) / 2.0d);
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = i4;
            if (i3 >= colorGroup.colorCounts.size() || (i4 = i4 + colorGroup.colorCounts.get(i3).count) >= iRound) {
                break;
            } else {
                i3++;
            }
        }
        if (i3 == colorGroup.colorCounts.size() - 1) {
            i3--;
        } else if (i3 > 0) {
            if (Math.abs(iRound - i) < Math.abs(i4 - iRound)) {
                i3--;
            }
        }
        list.remove(colorGroup);
        int i5 = i3 + 1;
        ArrayList arrayList = new ArrayList(colorGroup.colorCounts.subList(0, i5));
        ArrayList arrayList2 = new ArrayList(colorGroup.colorCounts.subList(i5, colorGroup.colorCounts.size()));
        ColorGroup colorGroup2 = new ColorGroup(new ArrayList(arrayList), z);
        list.add(colorGroup2);
        ColorGroup colorGroup3 = new ColorGroup(new ArrayList(arrayList2), z);
        list.add(colorGroup3);
        ColorCount colorCount = colorGroup.colorCounts.get(i3);
        switch (colorComponent) {
            case ALPHA:
                i2 = colorCount.alpha;
                break;
            case RED:
                i2 = colorCount.red;
                break;
            case GREEN:
                i2 = colorCount.green;
                break;
            case BLUE:
                i2 = colorCount.blue;
                break;
            default:
                throw new Error("Bad mode.");
        }
        colorGroup.cut = new ColorGroupCut(colorGroup2, colorGroup3, colorComponent, i2);
    }
}

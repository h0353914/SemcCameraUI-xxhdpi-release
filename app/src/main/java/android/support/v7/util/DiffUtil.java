package android.support.v7.util;

import android.support.annotation.NonNull;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class DiffUtil {
    private static final Comparator<DiffUtil$Snake> SNAKE_COMPARATOR = new DiffUtil$1();

    private DiffUtil() {
    }

    @NonNull
    public static DiffUtil$DiffResult calculateDiff(@NonNull DiffUtil$Callback diffUtil$Callback) {
        return calculateDiff(diffUtil$Callback, true);
    }

    @NonNull
    public static DiffUtil$DiffResult calculateDiff(@NonNull DiffUtil$Callback diffUtil$Callback, boolean z) {
        int oldListSize = diffUtil$Callback.getOldListSize();
        int newListSize = diffUtil$Callback.getNewListSize();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new DiffUtil$Range(0, oldListSize, 0, newListSize));
        int iAbs = Math.abs(oldListSize - newListSize) + oldListSize + newListSize;
        int i = iAbs * 2;
        int[] iArr = new int[i];
        int[] iArr2 = new int[i];
        ArrayList arrayList3 = new ArrayList();
        while (!arrayList2.isEmpty()) {
            DiffUtil$Range diffUtil$Range = (DiffUtil$Range) arrayList2.remove(arrayList2.size() - 1);
            DiffUtil$Snake diffUtil$SnakeDiffPartial = diffPartial(diffUtil$Callback, diffUtil$Range.oldListStart, diffUtil$Range.oldListEnd, diffUtil$Range.newListStart, diffUtil$Range.newListEnd, iArr, iArr2, iAbs);
            if (diffUtil$SnakeDiffPartial != null) {
                if (diffUtil$SnakeDiffPartial.size > 0) {
                    arrayList.add(diffUtil$SnakeDiffPartial);
                }
                diffUtil$SnakeDiffPartial.x += diffUtil$Range.oldListStart;
                diffUtil$SnakeDiffPartial.y += diffUtil$Range.newListStart;
                DiffUtil$Range diffUtil$Range2 = arrayList3.isEmpty() ? new DiffUtil$Range() : (DiffUtil$Range) arrayList3.remove(arrayList3.size() - 1);
                diffUtil$Range2.oldListStart = diffUtil$Range.oldListStart;
                diffUtil$Range2.newListStart = diffUtil$Range.newListStart;
                if (diffUtil$SnakeDiffPartial.reverse) {
                    diffUtil$Range2.oldListEnd = diffUtil$SnakeDiffPartial.x;
                    diffUtil$Range2.newListEnd = diffUtil$SnakeDiffPartial.y;
                } else if (diffUtil$SnakeDiffPartial.removal) {
                    diffUtil$Range2.oldListEnd = diffUtil$SnakeDiffPartial.x - 1;
                    diffUtil$Range2.newListEnd = diffUtil$SnakeDiffPartial.y;
                } else {
                    diffUtil$Range2.oldListEnd = diffUtil$SnakeDiffPartial.x;
                    diffUtil$Range2.newListEnd = diffUtil$SnakeDiffPartial.y - 1;
                }
                arrayList2.add(diffUtil$Range2);
                if (diffUtil$SnakeDiffPartial.reverse) {
                    if (diffUtil$SnakeDiffPartial.removal) {
                        diffUtil$Range.oldListStart = diffUtil$SnakeDiffPartial.x + diffUtil$SnakeDiffPartial.size + 1;
                        diffUtil$Range.newListStart = diffUtil$SnakeDiffPartial.y + diffUtil$SnakeDiffPartial.size;
                    } else {
                        diffUtil$Range.oldListStart = diffUtil$SnakeDiffPartial.x + diffUtil$SnakeDiffPartial.size;
                        diffUtil$Range.newListStart = diffUtil$SnakeDiffPartial.y + diffUtil$SnakeDiffPartial.size + 1;
                    }
                } else {
                    diffUtil$Range.oldListStart = diffUtil$SnakeDiffPartial.x + diffUtil$SnakeDiffPartial.size;
                    diffUtil$Range.newListStart = diffUtil$SnakeDiffPartial.y + diffUtil$SnakeDiffPartial.size;
                }
                arrayList2.add(diffUtil$Range);
            } else {
                arrayList3.add(diffUtil$Range);
            }
        }
        Collections.sort(arrayList, SNAKE_COMPARATOR);
        return new DiffUtil$DiffResult(diffUtil$Callback, arrayList, iArr, iArr2, z);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:23:0x0062
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:226)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:196)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:63)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:125)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:125)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:102)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    private static android.support.v7.util.DiffUtil$Snake diffPartial(android.support.v7.util.DiffUtil$Callback r22, int r23, int r24, int r25, int r26, int[] r27, int[] r28, int r29) {
        /*
            Method dump skipped, instruction units count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.util.DiffUtil.diffPartial(android.support.v7.util.DiffUtil$Callback, int, int, int, int, int[], int[], int):android.support.v7.util.DiffUtil$Snake");
    }
}

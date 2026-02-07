package android.support.v7.widget;

import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
class GapWorker$1 implements Comparator<GapWorker$Task> {
    GapWorker$1() {
    }

    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(GapWorker$Task gapWorker$Task, GapWorker$Task gapWorker$Task2) {
        return compare2(gapWorker$Task, gapWorker$Task2);
    }

    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(GapWorker$Task gapWorker$Task, GapWorker$Task gapWorker$Task2) {
        if ((gapWorker$Task.view == null) != (gapWorker$Task2.view == null)) {
            return gapWorker$Task.view == null ? 1 : -1;
        }
        if (gapWorker$Task.immediate != gapWorker$Task2.immediate) {
            return gapWorker$Task.immediate ? -1 : 1;
        }
        int i = gapWorker$Task2.viewVelocity - gapWorker$Task.viewVelocity;
        if (i != 0) {
            return i;
        }
        int i2 = gapWorker$Task.distanceToItem - gapWorker$Task2.distanceToItem;
        if (i2 != 0) {
            return i2;
        }
        return 0;
    }
}

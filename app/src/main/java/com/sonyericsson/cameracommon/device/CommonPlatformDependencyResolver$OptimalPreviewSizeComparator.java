package com.sonyericsson.cameracommon.device;

import android.graphics.Rect;
import java.util.Comparator;

class CommonPlatformDependencyResolver$OptimalPreviewSizeComparator implements Comparator<Rect> {
    private final Rect mTarget;

    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(Rect rect, Rect rect2) {
        return compare2(rect, rect2);
    }

    public CommonPlatformDependencyResolver$OptimalPreviewSizeComparator(Rect rect) {
        this.mTarget = rect;
    }

    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(Rect rect, Rect rect2) {
        return Math.abs(rect.height() - this.mTarget.height()) - Math.abs(rect2.height() - this.mTarget.height());
    }
}

package com.sonyericsson.android.camera.parameter.dependency;

import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import java.util.Comparator;

class AspectRatioApplier$1 implements Comparator<Resolution> {
    final /* synthetic */ AspectRatioApplier this$0;

    AspectRatioApplier$1(AspectRatioApplier aspectRatioApplier) {
        this.this$0 = aspectRatioApplier;
    }

    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(Resolution resolution, Resolution resolution2) {
        return compare2(resolution, resolution2);
    }

    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(Resolution resolution, Resolution resolution2) {
        return -(resolution.getPictureRect().width() - resolution2.getPictureRect().width());
    }
}

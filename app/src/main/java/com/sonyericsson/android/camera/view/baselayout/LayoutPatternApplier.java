package com.sonyericsson.android.camera.view.baselayout;

import com.sonyericsson.cameracommon.viewfinder.LayoutPattern;

/* JADX INFO: loaded from: classes.dex */
public interface LayoutPatternApplier {
    void apply(LayoutPattern layoutPattern);

    void setup(BaseLayout baseLayout, boolean z);
}

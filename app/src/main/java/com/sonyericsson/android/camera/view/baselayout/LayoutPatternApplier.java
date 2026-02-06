package com.sonyericsson.android.camera.view.baselayout;

import com.sonyericsson.cameracommon.viewfinder.LayoutPattern;

public interface LayoutPatternApplier {
    void apply(LayoutPattern layoutPattern);

    void setup(BaseLayout baseLayout, boolean z);
}

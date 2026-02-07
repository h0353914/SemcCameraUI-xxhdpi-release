package com.sonyericsson.android.camera.view.baselayout;

/* JADX INFO: loaded from: classes.dex */
enum BaseLayout$ViewRootChild {
    PREFERRED_FOCUS(0),
    PREVIEW_CONTAINER_LAYOUT(1),
    SWITCH_ANIMATION_CONTAINER(2),
    CAPTURE_BUTTON_LAYOUT(3),
    HEAD_UP_DISPLAY_CONTAINER(4),
    PREDICTIVE_LAUNCH_COVER_CONTAINER(5);

    private int mIndex;

    BaseLayout$ViewRootChild(int i) {
        this.mIndex = i;
    }

    public int getIndex() {
        return this.mIndex;
    }
}

package com.sonyericsson.android.camera.view;

import com.sonyericsson.cameracommon.viewfinder.InflateItem;

public enum LayoutAsyncInflateItems$CameraInflateItem implements InflateItem {
    HEAD_UP_DISPLAY(2131492899, 1),
    RECTANGLE_FACE(2131492923, 5),
    RECTANGLE_FAST_SINGLE(2131492924, 1),
    RECTANGLE_FAST_TOUCH(2131492924, 1),
    RECTANGLE_FAST_OBJECT_TRACKING(2131492894, 1),
    AUTO_REVIEW(2131492936, 1),
    FAST_CAPTURING_VIEWFINDER_ITEMS(2131492925, 1);

    protected final int mInflateId;
    protected final int mViewCount;

    LayoutAsyncInflateItems$CameraInflateItem(int i, int i2) {
        this.mInflateId = i;
        this.mViewCount = i2;
    }

    @Override // com.sonyericsson.cameracommon.viewfinder.InflateItem
    public int getLayoutId() {
        return this.mInflateId;
    }

    @Override // com.sonyericsson.cameracommon.viewfinder.InflateItem
    public int getViewCount() {
        return this.mViewCount;
    }
}

package com.sonyericsson.android.camera.view.tutorial;

import com.sonyericsson.android.camera.device.CameraInfo$CameraId;
import com.sonyericsson.android.camera.setting.StoredSettings;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;

/* JADX INFO: loaded from: classes.dex */
protected final class PagingTutorialContentView$DualCameraTutorialContent extends PagingTutorialContentView$PagingTutorialContent {
    protected PagingTutorialContentView$DualCameraTutorialContent(int i) {
        super(i);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.PagingTutorialContentView$PagingTutorialContent, com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected void setupResource() {
        super.setupResource();
        this.mPageResources.add(Integer.valueOf(isPortrait() ? 2131493024 : 2131493023));
        this.mMediaContentsResourceId.add(new PagingTutorialContentView$MediaContentsResource(isPortrait() ? 2131231372 : 2131231371, PagingTutorialContentView$MediaContentsResourceType.IMAGE));
        this.mTitleResourceId.add(2131690175);
        this.mDescriptionResourceId.add(2131690176);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected boolean canShowContent(StoredSettings storedSettings) {
        return PlatformCapability.isHighSensitivityFusionSupported(CameraInfo$CameraId.BACK);
    }
}

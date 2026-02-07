package com.sonyericsson.android.camera.view.tutorial;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.setting.MessageType;
import com.sonyericsson.android.camera.setting.StoredSettings;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;

/* JADX INFO: loaded from: classes.dex */
protected final class PagingTutorialContentView$VideoFusionTutorialContent extends PagingTutorialContentView$PagingTutorialContent {
    protected PagingTutorialContentView$VideoFusionTutorialContent(int i) {
        super(i);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.PagingTutorialContentView$PagingTutorialContent, com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected void setupResource() {
        super.setupResource();
        this.mNavigatorType = PagingTutorialContentView$TutorialNavigatorType.CONFIRM;
        this.mPageResources.add(Integer.valueOf(isPortrait() ? 2131493024 : 2131493023));
        this.mPageResources.add(Integer.valueOf(isPortrait() ? 2131493024 : 2131493023));
        this.mMediaContentsResourceId.add(new PagingTutorialContentView$MediaContentsResource(isPortrait() ? 2131231411 : 2131231410, PagingTutorialContentView$MediaContentsResourceType.IMAGE));
        this.mMediaContentsResourceId.add(new PagingTutorialContentView$MediaContentsResource(isPortrait() ? 2131231413 : 2131231412, PagingTutorialContentView$MediaContentsResourceType.IMAGE));
        this.mTitleResourceId.add(2131690218);
        this.mTitleResourceId.add(2131690220);
        this.mDescriptionResourceId.add(2131690219);
        this.mDescriptionResourceId.add(2131690221);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected boolean canShowContent(StoredSettings storedSettings) {
        CapturingMode capturingMode = (CapturingMode) storedSettings.getUserSettings().get(UserSettingKey.CAPTURING_MODE);
        return capturingMode.isVideo() && capturingMode != CapturingMode.SLOW_MOTION && !storedSettings.getMessageSettings().isNeverShow(MessageType.TUTORIAL_VIDEO_FUSION) && PlatformCapability.isHighSensitivityFusionSupported(capturingMode.getCameraId());
    }
}

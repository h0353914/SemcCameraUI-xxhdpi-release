package com.sonyericsson.android.camera.view.tutorial;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.SlowMotion;
import com.sonyericsson.android.camera.setting.MessageType;
import com.sonyericsson.android.camera.setting.StoredSettings;
import com.sonyericsson.android.camera.setting.UserSettings;

protected final class PagingTutorialContentView$StandardSlowTutorialContent extends PagingTutorialContentView$PagingTutorialContent {
    protected PagingTutorialContentView$StandardSlowTutorialContent(int i) {
        super(i);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.PagingTutorialContentView$PagingTutorialContent, com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected void setupResource() {
        super.setupResource();
        this.mPageResources.add(Integer.valueOf(isPortrait() ? 2131493024 : 2131493023));
        this.mPageResources.add(Integer.valueOf(isPortrait() ? 2131493024 : 2131493023));
        this.mMediaContentsResourceId.add(new PagingTutorialContentView$MediaContentsResource(isPortrait() ? 2131231348 : 2131231347, PagingTutorialContentView$MediaContentsResourceType.IMAGE));
        this.mMediaContentsResourceId.add(new PagingTutorialContentView$MediaContentsResource(isPortrait() ? 2131231350 : 2131231349, PagingTutorialContentView$MediaContentsResourceType.IMAGE));
        this.mTitleResourceId.add(2131690134);
        this.mTitleResourceId.add(2131690147);
        this.mDescriptionResourceId.add(2131690144);
        this.mDescriptionResourceId.add(2131690145);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected boolean canShowContent(StoredSettings storedSettings) {
        UserSettings userSettings = storedSettings.getUserSettings();
        if (((CapturingMode) userSettings.get(UserSettingKey.CAPTURING_MODE)).isFront() || ((SlowMotion) userSettings.get(UserSettingKey.SLOW_MOTION)) != SlowMotion.STANDARD_SLOW_MOTION) {
            return false;
        }
        return !storedSettings.getMessageSettings().isNeverShow(MessageType.TUTORIAL_STANDARD_SLOW_MOTION);
    }
}

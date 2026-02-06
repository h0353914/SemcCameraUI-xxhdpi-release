package com.sonyericsson.android.camera.view.tutorial;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.setting.MessageType;
import com.sonyericsson.android.camera.setting.StoredSettings;

protected final class PagingTutorialContentView$EyeGuideTutorialContent extends PagingTutorialContentView$PagingTutorialContent {
    protected PagingTutorialContentView$EyeGuideTutorialContent(int i) {
        super(i);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.PagingTutorialContentView$PagingTutorialContent, com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected void setupResource() {
        super.setupResource();
        this.mPageResources.add(Integer.valueOf(isPortrait() ? 2131493024 : 2131493023));
        this.mMediaContentsResourceId.add(new PagingTutorialContentView$MediaContentsResource(isPortrait() ? 2131231227 : 2131231226, PagingTutorialContentView$MediaContentsResourceType.IMAGE));
        this.mTitleResourceId.add(2131689813);
        this.mDescriptionResourceId.add(2131689814);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected boolean canShowContent(StoredSettings storedSettings) {
        if (((CapturingMode) storedSettings.getUserSettings().get(UserSettingKey.CAPTURING_MODE)).isFront()) {
            return !storedSettings.getMessageSettings().isNeverShow(MessageType.TUTORIAL_EYE_GUIDE);
        }
        return false;
    }
}

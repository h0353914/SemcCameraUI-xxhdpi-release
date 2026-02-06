package com.sonyericsson.android.camera.view.tutorial;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.setting.MessageSettings;
import com.sonyericsson.android.camera.setting.MessageType;
import com.sonyericsson.android.camera.setting.StoredSettings;
import com.sonyericsson.android.camera.setting.UserSettings;

protected final class PagingTutorialContentView$HandShutterTutorialContent extends PagingTutorialContentView$PagingTutorialContent {
    protected PagingTutorialContentView$HandShutterTutorialContent(int i) {
        super(i);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.PagingTutorialContentView$PagingTutorialContent, com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected void setupResource() {
        super.setupResource();
        this.mPageResources.add(Integer.valueOf(isPortrait() ? 2131493024 : 2131493023));
        this.mMediaContentsResourceId.add(new PagingTutorialContentView$MediaContentsResource(isPortrait() ? 2131231237 : 2131231236, PagingTutorialContentView$MediaContentsResourceType.IMAGE));
        this.mTitleResourceId.add(2131689868);
        this.mDescriptionResourceId.add(2131689866);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected boolean canShowContent(StoredSettings storedSettings) {
        UserSettings userSettings = storedSettings.getUserSettings();
        MessageSettings messageSettings = storedSettings.getMessageSettings();
        CapturingMode capturingMode = (CapturingMode) userSettings.get(UserSettingKey.CAPTURING_MODE);
        if (!capturingMode.isFront() || capturingMode.isVideo()) {
            return false;
        }
        return !messageSettings.isNeverShow(MessageType.TUTORIAL_HAND_SHUTTER);
    }
}

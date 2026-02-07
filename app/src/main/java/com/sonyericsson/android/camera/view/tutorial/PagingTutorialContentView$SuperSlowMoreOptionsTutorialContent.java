package com.sonyericsson.android.camera.view.tutorial;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.TextView;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.SlowMotion;
import com.sonyericsson.android.camera.setting.MessageType;
import com.sonyericsson.android.camera.setting.StoredSettings;
import com.sonyericsson.android.camera.setting.UserSettings;

/* JADX INFO: loaded from: classes.dex */
protected final class PagingTutorialContentView$SuperSlowMoreOptionsTutorialContent extends PagingTutorialContentView$PagingTutorialContent {
    protected PagingTutorialContentView$SuperSlowMoreOptionsTutorialContent(int i) {
        super(i);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.PagingTutorialContentView$PagingTutorialContent, com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected void setupResource() {
        super.setupResource();
        this.mPageResources.add(Integer.valueOf(isPortrait() ? 2131493024 : 2131493023));
        this.mPageResources.add(Integer.valueOf(isPortrait() ? 2131493024 : 2131493023));
        this.mPageResources.add(Integer.valueOf(isPortrait() ? 2131493024 : 2131493023));
        this.mPageResources.add(Integer.valueOf(isPortrait() ? 2131493024 : 2131493023));
        this.mMediaContentsResourceId.add(new PagingTutorialContentView$MediaContentsResource(isPortrait() ? 2131231360 : 2131231359, PagingTutorialContentView$MediaContentsResourceType.IMAGE));
        this.mMediaContentsResourceId.add(new PagingTutorialContentView$MediaContentsResource(isPortrait() ? 2131231362 : 2131231361, PagingTutorialContentView$MediaContentsResourceType.IMAGE));
        this.mMediaContentsResourceId.add(new PagingTutorialContentView$MediaContentsResource(isPortrait() ? 2131231364 : 2131231363, PagingTutorialContentView$MediaContentsResourceType.IMAGE));
        this.mMediaContentsResourceId.add(new PagingTutorialContentView$MediaContentsResource(isPortrait() ? 2131231336 : 2131231335, PagingTutorialContentView$MediaContentsResourceType.IMAGE));
        this.mTitleResourceId.add(2131690135);
        this.mTitleResourceId.add(2131690171);
        this.mTitleResourceId.add(2131690171);
        this.mTitleResourceId.add(2131690137);
        this.mDescriptionResourceId.add(2131690149);
        this.mDescriptionResourceId.add(2131690154);
        this.mDescriptionResourceId.add(2131690155);
        this.mDescriptionResourceId.add(2131690136);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.PagingTutorialContentView$PagingTutorialContent
    protected ViewGroup getPageContentView(Context context, int i) {
        ViewGroup pageContentView = super.getPageContentView(context, i);
        if (i > 0 && i < 3) {
            TextView titleView = getTitleView(pageContentView);
            String stepText = getStepText(context, i, this.mPageResources.size() - 2);
            titleView.setText(stepText);
            titleView.setContentDescription(stepText);
        }
        return pageContentView;
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected boolean canShowContent(StoredSettings storedSettings) {
        UserSettings userSettings = storedSettings.getUserSettings();
        if (((CapturingMode) userSettings.get(UserSettingKey.CAPTURING_MODE)).isFront() || ((SlowMotion) userSettings.get(UserSettingKey.SLOW_MOTION)) != SlowMotion.SUPER_SLOW_MOTION) {
            return false;
        }
        return !storedSettings.getMessageSettings().isNeverShow(MessageType.TUTORIAL_SUPER_SLOW_MOTION);
    }
}

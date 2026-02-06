package com.sonyericsson.android.camera.view.tutorial;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.ViewGroup;
import android.widget.TextView;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.SlowMotion;
import com.sonyericsson.android.camera.setting.MessageType;
import com.sonyericsson.android.camera.setting.StoredSettings;
import com.sonyericsson.android.camera.setting.UserSettings;

protected final class PagingTutorialContentView$OneShotSlowTutorialContent extends PagingTutorialContentView$PagingTutorialContent {
    protected PagingTutorialContentView$OneShotSlowTutorialContent(int i) {
        super(i);
    }

    protected PagingTutorialContentView$OneShotSlowTutorialContent(int i, Object... objArr) {
        super(i, objArr);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.PagingTutorialContentView$PagingTutorialContent, com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected void setupResource() {
        super.setupResource();
        this.mPageResources.add(Integer.valueOf(isPortrait() ? 2131493024 : 2131493023));
        this.mMediaContentsResourceId.add(new PagingTutorialContentView$MediaContentsResource(isPortrait() ? 2131231342 : 2131231341, PagingTutorialContentView$MediaContentsResourceType.IMAGE));
        this.mTitleResourceId.add(2131690133);
        this.mDescriptionResourceId.add(2131690138);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.PagingTutorialContentView$PagingTutorialContent
    @SuppressLint({"StringFormatInvalid"})
    protected ViewGroup getPageContentView(Context context, int i) {
        int iIntValue = ((Integer) this.mParams[0]).intValue();
        ViewGroup pageContentView = super.getPageContentView(context, i);
        if (i == 0) {
            TextView descriptionView = getDescriptionView(pageContentView);
            String string = context.getString(2131690140, Integer.toString(iIntValue));
            descriptionView.setText(string);
            descriptionView.setContentDescription(string);
        }
        return pageContentView;
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected boolean canShowContent(StoredSettings storedSettings) {
        UserSettings userSettings = storedSettings.getUserSettings();
        if (((CapturingMode) userSettings.get(UserSettingKey.CAPTURING_MODE)).isFront() || ((SlowMotion) userSettings.get(UserSettingKey.SLOW_MOTION)) != SlowMotion.SUPER_SLOW_SHOT) {
            return false;
        }
        return !storedSettings.getMessageSettings().isNeverShow(MessageType.TUTORIAL_SUPER_SLOW_MOTION_SHOT);
    }
}

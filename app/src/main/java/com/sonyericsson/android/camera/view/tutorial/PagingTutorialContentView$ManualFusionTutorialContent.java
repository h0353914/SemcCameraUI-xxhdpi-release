package com.sonyericsson.android.camera.view.tutorial;

import com.sonyericsson.android.camera.setting.MessageType;
import com.sonyericsson.android.camera.setting.StoredSettings;

protected final class PagingTutorialContentView$ManualFusionTutorialContent extends PagingTutorialContentView$PagingTutorialContent {
    protected PagingTutorialContentView$ManualFusionTutorialContent(int i) {
        super(i);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.PagingTutorialContentView$PagingTutorialContent, com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected void setupResource() {
        super.setupResource();
        this.mPageResources.add(Integer.valueOf(isPortrait() ? 2131493024 : 2131493023));
        this.mPageResources.add(Integer.valueOf(isPortrait() ? 2131493024 : 2131493023));
        this.mMediaContentsResourceId.add(new PagingTutorialContentView$MediaContentsResource(isPortrait() ? 2131231243 : 2131231242, PagingTutorialContentView$MediaContentsResourceType.IMAGE));
        this.mMediaContentsResourceId.add(new PagingTutorialContentView$MediaContentsResource(isPortrait() ? 2131231411 : 2131231410, PagingTutorialContentView$MediaContentsResourceType.IMAGE));
        this.mTitleResourceId.add(2131689940);
        this.mTitleResourceId.add(2131689938);
        this.mDescriptionResourceId.add(2131689941);
        this.mDescriptionResourceId.add(2131689939);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected boolean canShowContent(StoredSettings storedSettings) {
        return !storedSettings.getMessageSettings().isNeverShow(MessageType.TUTORIAL_MANUAL_FUSION);
    }
}

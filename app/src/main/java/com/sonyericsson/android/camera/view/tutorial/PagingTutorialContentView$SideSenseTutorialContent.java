package com.sonyericsson.android.camera.view.tutorial;

import com.sonyericsson.android.camera.setting.StoredSettings;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;

protected final class PagingTutorialContentView$SideSenseTutorialContent extends PagingTutorialContentView$PagingTutorialContent {
    public PagingTutorialContentView$SideSenseTutorialContent(int i) {
        super(i);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.PagingTutorialContentView$PagingTutorialContent, com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected void setupResource() {
        super.setupResource();
        this.mPageResources.add(Integer.valueOf(isPortrait() ? 2131493024 : 2131493023));
        this.mMediaContentsResourceId.add(new PagingTutorialContentView$MediaContentsResource(2131623937, PagingTutorialContentView$MediaContentsResourceType.VIDEO));
        this.mTitleResourceId.add(2131690126);
        this.mDescriptionResourceId.add(2131690130);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected boolean canShowContent(StoredSettings storedSettings) {
        return PlatformCapability.isSideTouchSupported();
    }
}

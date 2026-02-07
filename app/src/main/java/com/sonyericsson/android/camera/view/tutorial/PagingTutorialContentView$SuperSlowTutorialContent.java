package com.sonyericsson.android.camera.view.tutorial;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
protected final class PagingTutorialContentView$SuperSlowTutorialContent extends PagingTutorialContentView$PagingTutorialContent {
    protected PagingTutorialContentView$SuperSlowTutorialContent(int i) {
        super(i);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.PagingTutorialContentView$PagingTutorialContent, com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected void setupResource() {
        super.setupResource();
        this.mPageResources.add(Integer.valueOf(isPortrait() ? 2131493024 : 2131493023));
        this.mPageResources.add(Integer.valueOf(isPortrait() ? 2131493024 : 2131493023));
        this.mPageResources.add(Integer.valueOf(isPortrait() ? 2131493024 : 2131493023));
        this.mMediaContentsResourceId.add(new PagingTutorialContentView$MediaContentsResource(isPortrait() ? 2131231360 : 2131231359, PagingTutorialContentView$MediaContentsResourceType.IMAGE));
        this.mMediaContentsResourceId.add(new PagingTutorialContentView$MediaContentsResource(isPortrait() ? 2131231362 : 2131231361, PagingTutorialContentView$MediaContentsResourceType.IMAGE));
        this.mMediaContentsResourceId.add(new PagingTutorialContentView$MediaContentsResource(isPortrait() ? 2131231364 : 2131231363, PagingTutorialContentView$MediaContentsResourceType.IMAGE));
        this.mTitleResourceId.add(2131690135);
        this.mTitleResourceId.add(2131690171);
        this.mTitleResourceId.add(2131690171);
        this.mDescriptionResourceId.add(2131690149);
        this.mDescriptionResourceId.add(2131690154);
        this.mDescriptionResourceId.add(2131690155);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.PagingTutorialContentView$PagingTutorialContent
    protected ViewGroup getPageContentView(Context context, int i) {
        ViewGroup pageContentView = super.getPageContentView(context, i);
        if (i > 0) {
            TextView titleView = getTitleView(pageContentView);
            String stepText = getStepText(context, i, this.mPageResources.size() - 1);
            titleView.setText(stepText);
            titleView.setContentDescription(stepText);
        }
        return pageContentView;
    }
}

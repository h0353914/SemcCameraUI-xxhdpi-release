package com.sonyericsson.android.camera.view.tutorial;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
protected final class PagingTutorialContentView$CustomTutorialContent extends PagingTutorialContentView$PagingTutorialContent {
    public PagingTutorialContentView$CustomTutorialContent(int i, List<TutorialController$TutorialType> list, List<TutorialContentView$TutorialContent> list2) {
        super(i);
        this.mTutorialTypes = list;
        this.mTutorialContents = list2;
        this.mNavigatorType = ((PagingTutorialContentView$PagingTutorialContent) list2.get(0)).getNavigatorType();
        mergeContents(list2);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.PagingTutorialContentView$PagingTutorialContent, com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected void setupResource() {
        super.setupResource();
        if (this.mTutorialContents != null) {
            for (TutorialContentView$TutorialContent tutorialContentView$TutorialContent : this.mTutorialContents) {
                tutorialContentView$TutorialContent.mOrientation = this.mOrientation;
                tutorialContentView$TutorialContent.setupResource();
            }
            mergeContents(this.mTutorialContents);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.sonyericsson.android.camera.view.tutorial.PagingTutorialContentView$PagingTutorialContent
    protected ViewGroup getPageContentView(Context context, int i) {
        TutorialController$TutorialType tutorialController$TutorialType = getCurrentTutorialPageInfo().type;
        int i2 = getCurrentTutorialPageInfo(i).pageIndexByType;
        TutorialContentView$TutorialContent tutorialContent = getTutorialContent(tutorialController$TutorialType);
        ViewGroup pageContentView = super.getPageContentView(context, i);
        switch (tutorialController$TutorialType) {
            case SUPER_SLOW_MOTION:
                if (i2 > 0) {
                    TextView titleView = getTitleView(pageContentView);
                    String stepText = getStepText(context, i2, this.mPageResources.size() - 1);
                    titleView.setText(stepText);
                    titleView.setContentDescription(stepText);
                }
                return pageContentView;
            case SUPER_SLOW_MOTION_MORE_OPTIONS:
                if (i2 > 0 && i2 < 3) {
                    TextView titleView2 = getTitleView(pageContentView);
                    String stepText2 = getStepText(context, i2, this.mPageResources.size() - 2);
                    titleView2.setText(stepText2);
                    titleView2.setContentDescription(stepText2);
                }
                return pageContentView;
            case SUPER_SLOW_MOTION_SHOT:
                int iIntValue = ((Integer) tutorialContent.mParams[0]).intValue();
                if (i2 == 0) {
                    TextView descriptionView = getDescriptionView(pageContentView);
                    String string = context.getString(2131690140, Integer.toString(iIntValue));
                    descriptionView.setText(string);
                    descriptionView.setContentDescription(string);
                }
                return pageContentView;
            default:
                return pageContentView;
        }
    }

    private void mergeContents(List<TutorialContentView$TutorialContent> list) {
        for (TutorialContentView$TutorialContent tutorialContentView$TutorialContent : list) {
            if (tutorialContentView$TutorialContent instanceof PagingTutorialContentView$PagingTutorialContent) {
                PagingTutorialContentView$PagingTutorialContent pagingTutorialContentView$PagingTutorialContent = (PagingTutorialContentView$PagingTutorialContent) tutorialContentView$TutorialContent;
                Iterator<Integer> it = pagingTutorialContentView$PagingTutorialContent.getPageResources().iterator();
                while (it.hasNext()) {
                    this.mPageResources.add(Integer.valueOf(it.next().intValue()));
                }
                Iterator<Integer> it2 = pagingTutorialContentView$PagingTutorialContent.getTitleResources().iterator();
                while (it2.hasNext()) {
                    this.mTitleResourceId.add(Integer.valueOf(it2.next().intValue()));
                }
                Iterator<Integer> it3 = pagingTutorialContentView$PagingTutorialContent.getDescriptionResources().iterator();
                while (it3.hasNext()) {
                    this.mDescriptionResourceId.add(Integer.valueOf(it3.next().intValue()));
                }
                Iterator<PagingTutorialContentView$MediaContentsResource> it4 = pagingTutorialContentView$PagingTutorialContent.getMediaContentsResources().iterator();
                while (it4.hasNext()) {
                    this.mMediaContentsResourceId.add(it4.next());
                }
            }
        }
    }
}

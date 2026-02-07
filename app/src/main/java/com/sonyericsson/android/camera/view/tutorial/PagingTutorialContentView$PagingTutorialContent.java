package com.sonyericsson.android.camera.view.tutorial;

import android.content.Context;
import android.text.method.ScrollingMovementMethod;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
abstract class PagingTutorialContentView$PagingTutorialContent extends TutorialContentView$TutorialContent {
    protected ArrayList<Integer> mDescriptionResourceId;
    protected ArrayList<PagingTutorialContentView$MediaContentsResource> mMediaContentsResourceId;
    protected PagingTutorialContentView$TutorialNavigatorType mNavigatorType;
    protected int mPageIndex;
    protected ArrayList<Integer> mPageResources;
    protected ArrayList<Integer> mTitleResourceId;
    protected List<TutorialContentView$TutorialContent> mTutorialContents;
    protected List<TutorialController$TutorialType> mTutorialTypes;

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected boolean isSimpleTutorialContent() {
        return false;
    }

    protected PagingTutorialContentView$PagingTutorialContent(int i) {
        super(i);
        this.mPageIndex = 0;
    }

    protected PagingTutorialContentView$PagingTutorialContent(int i, Object... objArr) {
        super(i, objArr);
        this.mPageIndex = 0;
    }

    protected PagingTutorialContentView$PagingTutorialContent(int i, List<TutorialController$TutorialType> list, List<TutorialContentView$TutorialContent> list2) {
        super(i, list2);
        this.mPageIndex = 0;
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected TutorialContentView$TutorialPageInfo getCurrentTutorialPageInfo() {
        return getCurrentTutorialPageInfo(this.mPageIndex);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected TutorialContentView$TutorialPageInfo getCurrentTutorialPageInfo(int i) {
        int size = this.mTutorialTypes.size();
        int i2 = i;
        int pages = 0;
        for (int i3 = 0; i3 < size; i3++) {
            pages += this.mTutorialContents.get(i3).getPages();
            if (i <= pages - 1) {
                return new TutorialContentView$TutorialPageInfo(this.mTutorialTypes.get(i3), i2);
            }
            i2 -= pages;
        }
        return new TutorialContentView$TutorialPageInfo(this.mTutorialTypes.get(size - 1), i2);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected TutorialContentView$TutorialContent getTutorialContent(TutorialController$TutorialType tutorialController$TutorialType) {
        for (int i = 0; i < this.mTutorialTypes.size(); i++) {
            if (this.mTutorialTypes.get(i) == tutorialController$TutorialType) {
                return this.mTutorialContents.get(i);
            }
        }
        return null;
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected List<TutorialController$TutorialType> getTutorialTypes() {
        return this.mTutorialTypes;
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected void setupResource() {
        this.mPageResources = new ArrayList<>();
        this.mTitleResourceId = new ArrayList<>();
        this.mDescriptionResourceId = new ArrayList<>();
        this.mMediaContentsResourceId = new ArrayList<>();
        if (this.mNavigatorType == null) {
            this.mNavigatorType = PagingTutorialContentView$TutorialNavigatorType.NORMAL;
        }
        this.mLayoutId = isPortrait() ? 2131492962 : 2131492961;
    }

    protected ViewGroup getPageContentView(Context context, int i) {
        ViewGroup viewGroup = (ViewGroup) View.inflate(context, this.mPageResources.get(i).intValue(), null);
        TextView titleView = getTitleView(viewGroup);
        titleView.setText(this.mTitleResourceId.get(i).intValue());
        titleView.setContentDescription(viewGroup.getResources().getString(this.mTitleResourceId.get(i).intValue()));
        TextView descriptionView = getDescriptionView(viewGroup);
        descriptionView.setText(this.mDescriptionResourceId.get(i).intValue());
        descriptionView.setContentDescription(viewGroup.getResources().getString(this.mDescriptionResourceId.get(i).intValue()));
        descriptionView.setVerticalScrollBarEnabled(true);
        descriptionView.setMovementMethod(ScrollingMovementMethod.getInstance());
        return viewGroup;
    }

    protected TextView getTitleView(ViewGroup viewGroup) {
        return (TextView) viewGroup.findViewById(2131296679);
    }

    protected TextView getDescriptionView(ViewGroup viewGroup) {
        return (TextView) viewGroup.findViewById(2131296677);
    }

    protected String getStepText(Context context, int i, int i2) {
        return context.getString(2131690171, Integer.toString(i), Integer.toString(i2));
    }

    public final List<Integer> getPageResources() {
        return this.mPageResources;
    }

    public final List<Integer> getTitleResources() {
        return this.mTitleResourceId;
    }

    public final List<Integer> getDescriptionResources() {
        return this.mDescriptionResourceId;
    }

    public final List<PagingTutorialContentView$MediaContentsResource> getMediaContentsResources() {
        return this.mMediaContentsResourceId;
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected int getPages() {
        return this.mPageResources.size();
    }

    protected PagingTutorialContentView$TutorialNavigatorType getNavigatorType() {
        return this.mNavigatorType;
    }
}

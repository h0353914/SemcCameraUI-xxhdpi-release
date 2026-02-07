package com.sonyericsson.android.camera.view.tutorial;

import android.content.Context;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class PagingTutorialNormalNavigator extends PagingTutorialNavigator {

    @Nullable
    private TextView mGotIt;

    @Nullable
    private TextView mNext;

    @Nullable
    private LinearLayout mPageIcons;

    @Nullable
    private ImageView mPrevIcon;

    @Nullable
    private TextView mSkip;

    public PagingTutorialNormalNavigator(Context context) {
        super(context);
    }

    public PagingTutorialNormalNavigator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public PagingTutorialNormalNavigator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public void setRotationY(float f) {
        super.setRotationY(f);
        this.mSkip.setRotationY(f);
        this.mNext.setRotationY(f);
        this.mGotIt.setRotationY(f);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.PagingTutorialNavigator
    protected void setPageSize(int i) {
        if (this.mPageIcons == null) {
            throw new IllegalStateException("called before inflation");
        }
        for (int i2 = 0; i2 < i; i2++) {
            ImageView imageView = new ImageView(getContext());
            LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(-1, -1);
            linearLayout$LayoutParams.width = (int) getResources().getDimension(2131165484);
            linearLayout$LayoutParams.height = (int) getResources().getDimension(2131165484);
            imageView.setLayoutParams(linearLayout$LayoutParams);
            imageView.setImageResource(2131231573);
            this.mPageIcons.addView(imageView);
        }
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.PagingTutorialNavigator
    protected int getPageCount() {
        if (this.mPageIcons == null) {
            throw new IllegalStateException("called before inflation");
        }
        return this.mPageIcons.getChildCount();
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.PagingTutorialNavigator
    protected void updatePageSelected(int i) {
        if (this.mPageIcons == null) {
            throw new IllegalStateException("called before inflation");
        }
        for (int i2 = 0; i2 < getPageCount(); i2++) {
            this.mPageIcons.getChildAt(i2).setSelected(false);
        }
        this.mPageIcons.getChildAt(i).setSelected(true);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.PagingTutorialNavigator
    protected void doSingleContent() {
        if (this.mPrevIcon == null || this.mSkip == null || this.mNext == null || this.mGotIt == null) {
            throw new IllegalStateException("called before inflation");
        }
        this.mSkip.setVisibility(4);
        this.mNext.setVisibility(4);
        this.mPrevIcon.setVisibility(4);
        this.mGotIt.setVisibility(0);
        this.mPageIcons.setVisibility(4);
        updateClickEventActivation();
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.PagingTutorialNavigator
    protected void doFirstPage() {
        if (this.mPrevIcon == null || this.mSkip == null || this.mNext == null || this.mGotIt == null) {
            throw new IllegalStateException("called before inflation");
        }
        if (this.mPrevIcon.getVisibility() == 0) {
            this.mPrevIcon.setVisibility(4);
            this.mSkip.setVisibility(0);
        }
        if (this.mGotIt.getVisibility() == 0) {
            this.mGotIt.setVisibility(4);
            this.mNext.setVisibility(0);
        }
        updateClickEventActivation();
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.PagingTutorialNavigator
    protected void doMiddlePage() {
        if (this.mPrevIcon == null || this.mSkip == null || this.mNext == null || this.mGotIt == null) {
            throw new IllegalStateException("called before inflation");
        }
        if (this.mSkip.getVisibility() == 0) {
            this.mSkip.setVisibility(4);
            this.mPrevIcon.setVisibility(0);
        }
        if (this.mGotIt.getVisibility() == 0) {
            this.mGotIt.setVisibility(4);
            this.mNext.setVisibility(0);
        }
        updateClickEventActivation();
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.PagingTutorialNavigator
    protected void doLastPage() {
        if (this.mPrevIcon == null || this.mSkip == null || this.mNext == null || this.mGotIt == null) {
            throw new IllegalStateException("called before inflation");
        }
        if (this.mSkip.getVisibility() == 0) {
            this.mSkip.setVisibility(4);
            this.mPrevIcon.setVisibility(0);
        }
        if (this.mNext.getVisibility() == 0) {
            this.mNext.setVisibility(4);
            this.mGotIt.setVisibility(0);
        }
        updateClickEventActivation();
    }

    private void updateClickEventActivation() {
        updateClickEventListener(this.mSkip);
        updateClickEventListener(this.mNext);
        updateClickEventListener(this.mPrevIcon);
        updateClickEventListener(this.mGotIt);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        this.mSkip = (TextView) findViewById(2131296491);
        this.mNext = (TextView) findViewById(2131296488);
        this.mGotIt = (TextView) findViewById(2131296487);
        this.mPrevIcon = (ImageView) findViewById(2131296490);
        this.mPageIcons = (LinearLayout) findViewById(2131296489);
        super.onFinishInflate();
    }
}

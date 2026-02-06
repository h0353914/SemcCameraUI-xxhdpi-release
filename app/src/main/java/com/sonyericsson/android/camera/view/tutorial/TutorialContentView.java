package com.sonyericsson.android.camera.view.tutorial;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.RelativeLayout;

public abstract class TutorialContentView extends RelativeLayout implements View$OnClickListener {
    protected TutorialContentView$TutorialContent mContent;
    private TutorialContentView$OnClickCloseButtonListener mOnClickCloseButtonListener;

    protected abstract void onUpdateViewContent();

    public TutorialContentView(Context context) {
        super(context);
    }

    public TutorialContentView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public TutorialContentView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    protected final void setContent(TutorialContentView$TutorialContent tutorialContentView$TutorialContent) {
        this.mContent = tutorialContentView$TutorialContent;
        if (this.mContent.isPortrait()) {
            onLayoutToPortrait();
        } else {
            onLayoutToLandscape();
        }
    }

    protected final void setOnClickCloseButtonListener(TutorialContentView$OnClickCloseButtonListener tutorialContentView$OnClickCloseButtonListener) {
        this.mOnClickCloseButtonListener = tutorialContentView$OnClickCloseButtonListener;
    }

    protected void onLayoutToLandscape() {
        onUpdateViewContent();
    }

    protected void onLayoutToPortrait() {
        onUpdateViewContent();
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        notifyOnDoneClicked(view);
    }

    protected void notifyOnDoneClicked(View view) {
        if (this.mOnClickCloseButtonListener != null) {
            this.mOnClickCloseButtonListener.onClickCloseButton(view);
        }
    }
}

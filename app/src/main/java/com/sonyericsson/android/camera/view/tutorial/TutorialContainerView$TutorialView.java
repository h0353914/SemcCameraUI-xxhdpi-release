package com.sonyericsson.android.camera.view.tutorial;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup$LayoutParams;
import android.widget.RelativeLayout;
import com.sonyericsson.android.camera.view.baselayout.LayoutDependencyResolver;

public final class TutorialContainerView$TutorialView extends RelativeLayout {
    private static final int ANGLE_PORTRAIT_DEGREE = -90;
    private TutorialContentView$TutorialContent mContent;
    private TutorialContentView mContentView;
    private TutorialContentView$OnClickCloseButtonListener mOnClickCloseButtonListener;

    public TutorialContainerView$TutorialView(Context context) {
        super(context);
    }

    public TutorialContainerView$TutorialView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public TutorialContainerView$TutorialView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public boolean getGlobalVisibleRect(Rect rect, Point point) {
        if (this.mContentView == null) {
            rect.set(0, 0, 0, 0);
            return false;
        }
        return this.mContentView.getGlobalVisibleRect(rect, point);
    }

    protected void setOnClickCloseButtonListener(TutorialContentView$OnClickCloseButtonListener tutorialContentView$OnClickCloseButtonListener) {
        if (this.mContent == null) {
            return;
        }
        this.mOnClickCloseButtonListener = tutorialContentView$OnClickCloseButtonListener;
        if (this.mContentView != null) {
            this.mContentView.setOnClickCloseButtonListener(this.mOnClickCloseButtonListener);
        }
    }

    protected TutorialContentView$TutorialContent getContent() {
        return this.mContent;
    }

    protected boolean setContent(TutorialContentView$TutorialContent tutorialContentView$TutorialContent) {
        if (this.mContent != null && this.mContent.equalsWith(tutorialContentView$TutorialContent)) {
            return false;
        }
        this.mContent = tutorialContentView$TutorialContent;
        if (this.mContent == null) {
            return false;
        }
        if (this.mContent.isPortrait()) {
            onLayoutToPortrait();
        } else {
            onLayoutToLandscape();
        }
        if (this.mContentView == null) {
            return false;
        }
        this.mContentView.setVisibility(0);
        return true;
    }

    protected boolean isPortrait() {
        if (this.mContent != null) {
            return this.mContent.isPortrait();
        }
        return false;
    }

    protected void setUiOrientation(int i) {
        if (this.mContent != null && this.mContent.changeOrientation(i)) {
            removeAllViews();
            if (this.mContent.isPortrait()) {
                onLayoutToPortrait();
            } else {
                onLayoutToLandscape();
            }
        }
    }

    protected void release() {
        removeAllViews();
        this.mContentView = null;
        this.mContent = null;
    }

    private TutorialContentView attachContentView(int i) {
        inflate(getContext(), i, this);
        View childAt = getChildAt(getChildCount() - 1);
        if (!TutorialContentView.class.isAssignableFrom(childAt.getClass())) {
            removeAllViews();
            return null;
        }
        return (TutorialContentView) childAt;
    }

    private void onLayoutToLandscape() {
        this.mContentView = attachContentView(this.mContent.mLayoutId);
        if (this.mContentView == null) {
            return;
        }
        Rect viewFinderSize = LayoutDependencyResolver.getViewFinderSize(getContext());
        int iWidth = viewFinderSize.width();
        setCustomParameters(this, iWidth - LayoutDependencyResolver.getNavigationBarMargin(getContext()), viewFinderSize.height(), 0, 0, 0);
        this.mContentView.setContent(this.mContent);
        this.mContentView.setOnClickCloseButtonListener(this.mOnClickCloseButtonListener);
    }

    private void onLayoutToPortrait() {
        this.mContentView = attachContentView(this.mContent.mLayoutId);
        if (this.mContentView == null) {
            return;
        }
        Rect viewFinderSize = LayoutDependencyResolver.getViewFinderSize(getContext());
        setCustomParameters(this, viewFinderSize.height(), viewFinderSize.width() - LayoutDependencyResolver.getNavigationBarMargin(getContext()), 0, 0, -90);
        this.mContentView.setContent(this.mContent);
        this.mContentView.setOnClickCloseButtonListener(this.mOnClickCloseButtonListener);
    }

    private void setCustomParameters(View view, int i, int i2, int i3, int i4, int i5) {
        ViewGroup$LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = i2;
        view.setLayoutParams(layoutParams);
        view.setPivotX(i3);
        view.setPivotY(i4);
        view.setRotation(i5);
        alignView(view, layoutParams.width, layoutParams.height, i5);
    }

    private void alignView(View view, int i, int i2, int i3) {
        if (i3 == -90) {
            view.setTranslationY(i);
        } else {
            view.setTranslationY(0.0f);
        }
    }
}

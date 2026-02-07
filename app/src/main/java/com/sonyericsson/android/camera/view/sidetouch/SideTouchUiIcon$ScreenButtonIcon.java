package com.sonyericsson.android.camera.view.sidetouch;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout$LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import com.sonyericsson.android.camera.view.ViewFinderImpl$SideTouchUiButtonListenerFactory;
import com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonGroup;
import com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonItemFactory;
import com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonItemFactory$ButtonType;

/* JADX INFO: loaded from: classes.dex */
protected abstract class SideTouchUiIcon$ScreenButtonIcon extends SideTouchUiIcon {
    private final ViewFinderImpl$SideTouchUiButtonListenerFactory mListenerFactory;
    protected OnScreenButtonGroup mOnScreenButtonGroup;
    protected final int mOrientation;

    protected abstract void setupButtons();

    public SideTouchUiIcon$ScreenButtonIcon(Context context, int i, ViewFinderImpl$SideTouchUiButtonListenerFactory viewFinderImpl$SideTouchUiButtonListenerFactory) {
        super(context);
        this.mOrientation = i;
        this.mListenerFactory = viewFinderImpl$SideTouchUiButtonListenerFactory;
    }

    @Override // com.sonyericsson.android.camera.view.sidetouch.SideTouchUiIcon
    protected void attachView(ViewGroup viewGroup) {
        View.inflate(this.mContext, 2131493012, viewGroup);
        this.mOnScreenButtonGroup = (OnScreenButtonGroup) viewGroup.findViewById(2131296608);
        setupButtons();
        updateIconSize();
    }

    @Override // com.sonyericsson.android.camera.view.sidetouch.SideTouchUiIcon
    protected View getIconView() {
        return this.mOnScreenButtonGroup;
    }

    @Override // com.sonyericsson.android.camera.view.sidetouch.SideTouchUi$Icon
    public void show() {
        this.mOnScreenButtonGroup.show();
    }

    @Override // com.sonyericsson.android.camera.view.sidetouch.SideTouchUi$Icon
    public void setUiOrientation(int i) {
        this.mOnScreenButtonGroup.setUiOrientation(i);
    }

    protected void setupButtonMain(OnScreenButtonItemFactory$ButtonType onScreenButtonItemFactory$ButtonType, int i, boolean z) {
        this.mOnScreenButtonGroup.setMain(OnScreenButtonItemFactory.createButton(onScreenButtonItemFactory$ButtonType, this.mListenerFactory.create(onScreenButtonItemFactory$ButtonType)), i, z);
    }

    protected void setupButtonOption1(OnScreenButtonItemFactory$ButtonType onScreenButtonItemFactory$ButtonType, int i, boolean z) {
        this.mOnScreenButtonGroup.setOption1(OnScreenButtonItemFactory.createButton(onScreenButtonItemFactory$ButtonType, this.mListenerFactory.create(onScreenButtonItemFactory$ButtonType)), i, z);
    }

    protected void setupButtonOption2(OnScreenButtonItemFactory$ButtonType onScreenButtonItemFactory$ButtonType, int i, boolean z) {
        this.mOnScreenButtonGroup.setOption2(OnScreenButtonItemFactory.createButton(onScreenButtonItemFactory$ButtonType, this.mListenerFactory.create(onScreenButtonItemFactory$ButtonType)), i, z);
    }

    protected void updateIconSize() {
        FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams) this.mOnScreenButtonGroup.getLayoutParams();
        LinearLayout linearLayout = (LinearLayout) this.mOnScreenButtonGroup.findViewById(2131296343);
        int i = 0;
        for (int i2 = 0; i2 < linearLayout.getChildCount(); i2++) {
            View childAt = linearLayout.getChildAt(i2);
            if (childAt.getVisibility() == 0) {
                LinearLayout$LayoutParams linearLayout$LayoutParams = (LinearLayout$LayoutParams) childAt.getLayoutParams();
                if (i > 0) {
                    linearLayout$LayoutParams.leftMargin = getDimensionPixelSize(2131165625);
                    i += linearLayout$LayoutParams.leftMargin;
                }
                i += linearLayout$LayoutParams.width;
            }
        }
        frameLayout$LayoutParams.width = i;
    }
}

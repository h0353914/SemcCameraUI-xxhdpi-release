package com.sonyericsson.android.camera.view.baselayout.onscreenbutton;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
public class OnScreenButtonGroup extends FrameLayout {
    private static final String TAG = "OnScreenButtonGroup";
    private OnScreenButton mMain;
    private OnScreenButton mOption1;
    private OnScreenButton mOption2;
    private int mOrientation;

    public OnScreenButtonGroup(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mOrientation = 2;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mMain = (OnScreenButton) findViewById(2131296460);
        this.mOption2 = (OnScreenButton) findViewById(2131296632);
        this.mOption1 = (OnScreenButton) findViewById(2131296396);
    }

    public void clearTouched() {
        this.mMain.clearTouched();
        this.mOption2.clearTouched();
        this.mOption1.clearTouched();
    }

    public boolean isMainButtonTouched() {
        return this.mMain.isTouched();
    }

    public void setMain(OnScreenButtonGroup$Item onScreenButtonGroup$Item) {
        if (CamLog.VERBOSE) {
            CamLog.d("setMain(" + onScreenButtonGroup$Item + ")");
        }
        this.mMain.setItem(onScreenButtonGroup$Item);
        this.mMain.setVisibility(0);
    }

    public void setMain(OnScreenButtonGroup$Item onScreenButtonGroup$Item, int i, boolean z) {
        if (CamLog.VERBOSE) {
            CamLog.d("setMain(" + onScreenButtonGroup$Item + ", " + i + ", " + z + ")");
        }
        setMain(onScreenButtonGroup$Item);
        this.mMain.changeRotatability(i, z);
    }

    public void setOption2(OnScreenButtonGroup$Item onScreenButtonGroup$Item) {
        if (CamLog.VERBOSE) {
            CamLog.d("setOption2(" + onScreenButtonGroup$Item + ")");
        }
        this.mOption2.setItem(onScreenButtonGroup$Item);
        this.mOption2.setVisibility(0);
    }

    public void setOption2(OnScreenButtonGroup$Item onScreenButtonGroup$Item, int i, boolean z) {
        if (CamLog.VERBOSE) {
            CamLog.d("setOption2(" + onScreenButtonGroup$Item + ", " + i + ", " + z + ")");
        }
        setOption2(onScreenButtonGroup$Item);
        this.mOption2.changeRotatability(i, z);
    }

    public void setOption1(OnScreenButtonGroup$Item onScreenButtonGroup$Item) {
        if (CamLog.VERBOSE) {
            CamLog.d("setOption1(" + onScreenButtonGroup$Item + ")");
        }
        this.mOption1.setItem(onScreenButtonGroup$Item);
        this.mOption1.setVisibility(0);
    }

    public void setOption1(OnScreenButtonGroup$Item onScreenButtonGroup$Item, int i, boolean z) {
        if (CamLog.VERBOSE) {
            CamLog.d("setOption1(" + onScreenButtonGroup$Item + ", " + i + ", " + z + ")");
        }
        setOption1(onScreenButtonGroup$Item);
        this.mOption1.changeRotatability(i, z);
    }

    public void clearMain() {
        this.mMain.setItem(null);
        this.mMain.setVisibility(4);
    }

    public void clearOption2() {
        this.mOption2.setItem(null);
        this.mOption2.setVisibility(4);
    }

    public void clearOption1() {
        this.mOption1.setItem(null);
        this.mOption1.setVisibility(4);
    }

    public void setUiOrientation(int i) {
        if (i == this.mOrientation) {
            return;
        }
        this.mMain.setUiOrientation(i);
        this.mOption2.setUiOrientation(i);
        this.mOption1.setUiOrientation(i);
        this.mOrientation = i;
    }

    public void show() {
        if (getVisibility() == 0) {
            return;
        }
        setVisibility(0);
        this.mMain.setVisibility(0);
        this.mOption2.setVisibility(0);
        this.mOption1.setVisibility(0);
    }

    public void setMainRotatability(int i, boolean z) {
        this.mMain.changeRotatability(i, z);
    }
}

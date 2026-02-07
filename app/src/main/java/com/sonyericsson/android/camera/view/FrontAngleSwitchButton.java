package com.sonyericsson.android.camera.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.sonyericsson.android.camera.configuration.parameters.FrontAngle;

/* JADX INFO: loaded from: classes.dex */
public class FrontAngleSwitchButton extends ImageView {
    private FrontAngle mAngle;
    private int mCurrentOrientation;

    public FrontAngleSwitchButton(Context context) {
        super(context);
        this.mCurrentOrientation = 0;
        this.mAngle = FrontAngle.DEFAULT;
    }

    public FrontAngleSwitchButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCurrentOrientation = 0;
        this.mAngle = FrontAngle.DEFAULT;
    }

    public void switchFrontAngle(FrontAngle frontAngle) {
        this.mAngle = frontAngle;
        if (this.mAngle == FrontAngle.DEFAULT) {
            setContentDescription(getResources().getString(2131689607));
        } else {
            setContentDescription(getResources().getString(2131689608));
        }
        update();
    }

    public void setUiOrientation(int i) {
        if (this.mCurrentOrientation == i && getVisibility() == 0) {
            return;
        }
        this.mCurrentOrientation = i;
        update();
    }

    private void update() {
        switch (this.mCurrentOrientation) {
            case 1:
                if (this.mAngle == FrontAngle.DEFAULT) {
                    setBackgroundResource(2131231577);
                } else {
                    setBackgroundResource(2131231578);
                }
                break;
            case 2:
                if (this.mAngle == FrontAngle.DEFAULT) {
                    setBackgroundResource(2131231575);
                } else {
                    setBackgroundResource(2131231576);
                }
                break;
        }
        invalidate();
    }

    public void show() {
        setVisibility(0);
    }

    public void hide() {
        setVisibility(4);
    }
}

package com.sonyericsson.cameracommon.focusview;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout$LayoutParams;
import com.sonyericsson.android.camera.R$styleable;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver$LayoutOrientationType;
import com.sonyericsson.cameracommon.utility.RotationUtil;

public class SmileGauge extends RelativeLayout {
    public static final int SMILE_LEVEL = 5;
    public static final int SMILE_MAX = 100;
    public static final int SMILE_MIN = 0;
    public static final String TAG = "SmileGauge";
    private boolean mIsForLandscape;
    private int mMargin;
    private int mSmileScore;

    public SmileGauge(Context context) {
        this(context, null);
    }

    public SmileGauge(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SmileGauge(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mIsForLandscape = true;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.SmileGauge);
        this.mIsForLandscape = typedArrayObtainStyledAttributes.getBoolean(0, true);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    public void onFinishInflate() {
        if (CamLog.VERBOSE) {
            CamLog.v("onFinishInflate() is called.");
        }
        super.onFinishInflate();
        this.mSmileScore = 0;
    }

    public void setSmileScore(int i) {
        if (CamLog.VERBOSE) {
            CamLog.d("setSmileScore() is called.");
        }
        if (CamLog.VERBOSE) {
            CamLog.d("setSmileScore: " + i);
        }
        if (i < 0) {
            i = 0;
        } else if (i > 100) {
            i = 100;
        }
        this.mSmileScore = i;
        SmileScore smileScore = (SmileScore) findViewById(2131296616);
        smileScore.setSmileScore(i);
        if (!isForLandscape()) {
            RelativeLayout$LayoutParams relativeLayout$LayoutParams = (RelativeLayout$LayoutParams) smileScore.getLayoutParams();
            if (isLayoutOrientationLandscape()) {
                relativeLayout$LayoutParams.removeRule(12);
                relativeLayout$LayoutParams.addRule(10);
            } else {
                relativeLayout$LayoutParams.removeRule(10);
                relativeLayout$LayoutParams.addRule(12);
            }
            smileScore.setLayoutParams(relativeLayout$LayoutParams);
        }
        smileScore.invalidate();
        if (CamLog.VERBOSE) {
            CamLog.d("setSmileScore: invalidate");
        }
    }

    public int getSmileScore() {
        return this.mSmileScore;
    }

    public void setSmileLevel(int i) {
        this.mMargin = getResources().getDimensionPixelSize(i);
    }

    protected void drawThreshold() {
        if (CamLog.VERBOSE) {
            CamLog.v("drawThreshold() is called.");
        }
        ImageView imageView = (ImageView) findViewById(2131296617);
        RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(-2, -2);
        if (isForLandscape()) {
            relativeLayout$LayoutParams.topMargin = this.mMargin;
            relativeLayout$LayoutParams.addRule(9);
        } else {
            RelativeLayout$LayoutParams relativeLayout$LayoutParams2 = new RelativeLayout$LayoutParams(-2, -2);
            ImageView imageView2 = (ImageView) findViewById(2131296614);
            if (isLayoutOrientationLandscape()) {
                relativeLayout$LayoutParams2.addRule(10);
                relativeLayout$LayoutParams.leftMargin = this.mMargin;
                relativeLayout$LayoutParams.addRule(12);
            } else {
                relativeLayout$LayoutParams2.addRule(12);
                relativeLayout$LayoutParams.rightMargin = this.mMargin;
                relativeLayout$LayoutParams.addRule(11);
            }
            imageView2.setLayoutParams(relativeLayout$LayoutParams2);
        }
        imageView.setLayoutParams(relativeLayout$LayoutParams);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (CamLog.VERBOSE) {
            CamLog.d("setVisibility( " + i + " ): " + getId());
        }
        super.setVisibility(i);
        if (i == 0) {
            drawThreshold();
        }
    }

    public void setPosition(int i, int i2, int i3, int i4, int i5) {
        if (CamLog.VERBOSE) {
            CamLog.d("setPosition( " + i + ", " + i2 + ", " + i3 + ", " + i4 + ", " + i5 + " )");
        }
        if (i == i3 || i2 == i4) {
            setVisibility(4);
        } else {
            update(i5);
        }
    }

    protected void update(int i) {
        if (CamLog.VERBOSE) {
            CamLog.d("update() orientation", RotationUtil.orientationToString(i));
        }
        if (isLayoutOrientationLandscape()) {
            if ((isForLandscape() && i != 2) || (!isForLandscape() && i != 1)) {
                clearLayoutParams();
                setVisibility(8);
                return;
            }
        } else if ((!isForLandscape() && i != 2) || (isForLandscape() && i != 1)) {
            clearLayoutParams();
            setVisibility(8);
            return;
        }
        clearLayoutParams();
        if (i == 2) {
            if (isLayoutOrientationLandscape()) {
                moveToId(2131296615);
                alignToDirection(6);
            } else {
                moveToId(2131296618);
                alignToDirection(7);
            }
        } else if (isLayoutOrientationLandscape()) {
            moveToId(2131296613);
            alignToDirection(5);
        } else {
            moveToId(2131296615);
            alignToDirection(6);
        }
        postInvalidate();
    }

    protected void moveToId(int i) {
        if (getId() != i) {
            setVisibility(8);
        } else {
            setVisibility(0);
        }
    }

    protected void clearLayoutParams() {
        if (CamLog.VERBOSE) {
            CamLog.v("clearLayoutParams() is called.");
        }
        RelativeLayout$LayoutParams relativeLayout$LayoutParams = (RelativeLayout$LayoutParams) getLayoutParams();
        if (relativeLayout$LayoutParams == null) {
            return;
        }
        relativeLayout$LayoutParams.addRule(6, 0);
        relativeLayout$LayoutParams.addRule(5, 0);
        relativeLayout$LayoutParams.addRule(7, 0);
        relativeLayout$LayoutParams.topMargin = 0;
        relativeLayout$LayoutParams.leftMargin = 0;
        setLayoutParams(relativeLayout$LayoutParams);
    }

    protected void alignToDirection(int i) {
        if (CamLog.VERBOSE) {
            CamLog.d("align direction = " + i);
        }
        RelativeLayout$LayoutParams relativeLayout$LayoutParams = (RelativeLayout$LayoutParams) getLayoutParams();
        if (relativeLayout$LayoutParams == null) {
            return;
        }
        relativeLayout$LayoutParams.addRule(i, 2131296527);
        setLayoutParams(relativeLayout$LayoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public boolean isForLandscape() {
        return this.mIsForLandscape;
    }

    public boolean isLayoutOrientationLandscape() {
        return LayoutOrientationResolver.getInstance().getOrientation() != LayoutOrientationResolver$LayoutOrientationType.PORTRAIT;
    }
}

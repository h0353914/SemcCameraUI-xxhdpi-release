package com.sonymobile.cameracommon.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.sonyericsson.android.camera.device.CameraParameterConverter$SceneMode;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.utility.RotationUtil;

public class Notification extends RelativeLayout {
    public static final String TAG = "Notification";
    private boolean mAnimating;
    private ImageView mConditionIcon;
    private TextView mConditionText;
    private CameraParameterConverter$SceneMode mScene;
    private ImageView mSceneIcon;
    private TextView mSceneText;
    private Notification$SceneTextAnimation mSceneTextAnimation;
    private int mSensorOrientation;

    static /* synthetic */ TextView access$000(Notification notification) {
        return notification.mSceneText;
    }

    static /* synthetic */ TextView access$100(Notification notification) {
        return notification.mConditionText;
    }

    static /* synthetic */ boolean access$200(Notification notification) {
        return notification.mAnimating;
    }

    public Notification(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mSensorOrientation = 2;
        this.mAnimating = false;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        if (CamLog.VERBOSE) {
            CamLog.d("onFinishInflate: " + getVisibility());
        }
        super.onFinishInflate();
        this.mSceneIcon = (ImageView) findViewById(2131296548);
        this.mSceneText = (TextView) findViewById(2131296553);
        this.mConditionIcon = (ImageView) findViewById(2131296358);
        this.mConditionText = (TextView) findViewById(2131296360);
        createSceneTextAnimation();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        releaseSceneTextAnimation();
    }

    public void onMacroStatusChanged(boolean z, CameraParameterConverter$SceneMode cameraParameterConverter$SceneMode) {
        if (CamLog.VERBOSE) {
            CamLog.d("Macro: " + getVisibility());
        }
        if (z) {
            findViewById(2131296519).setVisibility(0);
            findViewById(2131296518).setVisibility(0);
            this.mSceneIcon.setImageResource(2131231273);
            this.mSceneText.setText(2131689845);
            if (this.mSensorOrientation == 2) {
                startSceneTextAnimation();
            }
        } else if (cameraParameterConverter$SceneMode == CameraParameterConverter$SceneMode.AUTO) {
            findViewById(2131296519).setVisibility(4);
        }
        invalidate();
    }

    public void onRecognisedSceneChanged(RecognizedScene recognizedScene) {
        if (CamLog.VERBOSE) {
            CamLog.d("onRecognisedSceneChanged: scene: " + recognizedScene);
        }
        this.mScene = CameraParameterConverter$SceneMode.AUTO;
        int iconId = recognizedScene.getIconId();
        int textId = recognizedScene.getTextId();
        if (iconId > 0 && textId > 0) {
            findViewById(2131296519).setVisibility(0);
            this.mSceneIcon.setImageResource(iconId);
            this.mSceneText.setText(textId);
            if (this.mSensorOrientation == 2) {
                startSceneTextAnimation();
            } else {
                this.mScene = recognizedScene.getSceneMode();
            }
        } else {
            findViewById(2131296519).setVisibility(4);
        }
        invalidate();
    }

    public void onRecognisedConditionChanged(RecognizedCondition recognizedCondition) {
        if (CamLog.VERBOSE) {
            CamLog.d("onRecognisedConditionChanged: condition: " + recognizedCondition + ", visibility: " + findViewById(2131296518).getVisibility());
        }
        int iconId = recognizedCondition.getIconId();
        int textId = recognizedCondition.getTextId();
        findViewById(2131296518).setVisibility(0);
        if (iconId > 0) {
            this.mConditionIcon.setVisibility(0);
            this.mConditionIcon.setImageResource(iconId);
        } else {
            this.mConditionIcon.setVisibility(4);
        }
        if (textId > 0) {
            this.mConditionText.setVisibility(0);
            this.mConditionText.setText(textId);
            if (this.mSensorOrientation == 2) {
                startSceneTextAnimation();
            }
        } else {
            this.mConditionText.setVisibility(4);
        }
        invalidate();
    }

    public void updateLayout() {
        if (CamLog.VERBOSE) {
            CamLog.d("updateLayout: entry: visibility: " + getVisibility());
        }
        requestLayout();
        invalidate();
    }

    public void onModeChanged(int i, boolean z) {
        if (CamLog.VERBOSE) {
            CamLog.d("onModeChanged: " + i);
        }
        if (z) {
            findViewById(2131296549).setVisibility(4);
            findViewById(2131296359).setVisibility(4);
        } else if (i == 1) {
            findViewById(2131296549).setVisibility(0);
            findViewById(2131296359).setVisibility(0);
        } else {
            this.mSensorOrientation = 2;
            findViewById(2131296549).setVisibility(4);
            findViewById(2131296359).setVisibility(4);
        }
    }

    protected void setAnimationStatus(boolean z) {
        if (CamLog.VERBOSE) {
            CamLog.d("setAnimationStatus: from " + this.mAnimating + " to " + z);
        }
        if (this.mAnimating == z) {
            return;
        }
        this.mAnimating = z;
    }

    protected void createSceneTextAnimation() {
        this.mSceneTextAnimation = new Notification$NoFadeoutAnimtion(this);
        this.mSceneTextAnimation.create();
    }

    protected void releaseSceneTextAnimation() {
        this.mSceneTextAnimation.release();
    }

    protected void startSceneTextAnimation() {
        if (CamLog.VERBOSE) {
            CamLog.d("startSceneTextAnimation: " + this.mAnimating);
        }
        this.mSceneTextAnimation.start();
    }

    protected void cancelSceneTextAnimation() {
        if (CamLog.VERBOSE) {
            CamLog.d("cancelSceneTextAnimation: " + this.mAnimating);
        }
        this.mSceneTextAnimation.cancel();
    }

    public void setSensorOrientation(int i) {
        this.mSensorOrientation = i;
        float angle = RotationUtil.getAngle(i);
        this.mSceneIcon.setRotation(angle);
        setOrientationSceneText();
        this.mConditionIcon.setRotation(angle);
        setOrientationConditionText();
    }

    private void setOrientationSceneText() {
        if (this.mSensorOrientation == 2) {
            if (this.mScene != CameraParameterConverter$SceneMode.AUTO) {
                this.mSceneText.setVisibility(0);
                startSceneTextAnimation();
                this.mScene = CameraParameterConverter$SceneMode.AUTO;
                return;
            }
            return;
        }
        cancelSceneTextAnimation();
        this.mSceneText.setVisibility(4);
    }

    private void setOrientationConditionText() {
        if (this.mSensorOrientation == 2) {
            this.mConditionText.setVisibility(0);
            startSceneTextAnimation();
        } else {
            cancelSceneTextAnimation();
            this.mConditionText.setVisibility(4);
        }
    }
}

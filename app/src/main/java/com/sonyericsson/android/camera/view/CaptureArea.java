package com.sonyericsson.android.camera.view;

import android.content.Context;
import android.graphics.Point;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ImageView;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.interaction.TouchActionTranslator;
import com.sonyericsson.cameracommon.interaction.TouchActionTranslator$TouchActionListener;

/* JADX INFO: loaded from: classes.dex */
public class CaptureArea extends ImageView implements TouchActionTranslator$TouchActionListener {
    public static final String TAG = "CaptureArea";
    private boolean mIsForceTouchCanceled;
    private boolean mIsLongPressed;
    private boolean mIsTouched;
    private CaptureArea$CaptureAreaStateListener mListener;
    private CaptureArea$CaptureAreaTouchEventListener mTouchListener;
    private TouchActionTranslator mUserInteractionEngine;

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator$TouchActionListener
    public void onDoubleMoved(Point point, Point point2) {
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator$TouchActionListener
    public void onDoubleRotated(float f, float f2) {
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator$TouchActionListener
    public void onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator$TouchActionListener
    public void onShowPress(MotionEvent motionEvent) {
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator$TouchActionListener
    public void onSingleReleasedInDouble(Point point, Point point2) {
    }

    static /* synthetic */ TouchActionTranslator access$000(CaptureArea captureArea) {
        return captureArea.mUserInteractionEngine;
    }

    static /* synthetic */ boolean access$102(CaptureArea captureArea, boolean z) {
        captureArea.mIsTouched = z;
        return z;
    }

    static /* synthetic */ CaptureArea$CaptureAreaStateListener access$200(CaptureArea captureArea) {
        return captureArea.mListener;
    }

    public CaptureArea(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mIsTouched = false;
        this.mIsLongPressed = false;
        this.mIsForceTouchCanceled = false;
        this.mUserInteractionEngine = null;
        this.mTouchListener = new CaptureArea$CaptureAreaTouchEventListener(this);
        this.mUserInteractionEngine = new TouchActionTranslator(context, this, context.getResources().getDimensionPixelSize(2131165678));
        this.mUserInteractionEngine.setInteractionListener(this);
        setOnTouchListener(this.mTouchListener);
    }

    public void release() {
        this.mUserInteractionEngine.setInteractionListener(null);
        this.mUserInteractionEngine.release();
        this.mUserInteractionEngine = null;
        setOnTouchListener(null);
    }

    public boolean isTouched() {
        return this.mIsTouched;
    }

    public void clearTouched() {
        this.mIsForceTouchCanceled = true;
    }

    private Point convertPointCoordinatesFromThisViewToScreen(Point point) {
        int[] iArr = new int[2];
        getLocationOnScreen(iArr);
        return new Point(point.x + iArr[0], point.y + iArr[1]);
    }

    public void setCaptureAreaStateListener(CaptureArea$CaptureAreaStateListener captureArea$CaptureAreaStateListener) {
        this.mListener = captureArea$CaptureAreaStateListener;
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator$TouchActionListener
    public void onSingleTouched(Point point) {
        this.mIsTouched = true;
        this.mIsForceTouchCanceled = false;
        if (this.mListener != null) {
            this.mListener.onCaptureAreaTouched();
        }
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator$TouchActionListener
    public void onSingleMoved(Point point, Point point2, Point point3) {
        if (this.mIsTouched && this.mListener != null) {
            if (!isTouched()) {
                this.mIsForceTouchCanceled = false;
                this.mListener.onCaptureAreaCanceled();
            } else {
                this.mListener.onCaptureAreaMoved();
            }
        }
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator$TouchActionListener
    public void onSingleStopped(Point point, Point point2, Point point3) {
        if (this.mIsTouched && this.mListener != null) {
            this.mListener.onCaptureAreaStopped();
        }
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator$TouchActionListener
    public void onSingleReleased(Point point) {
        if (this.mIsForceTouchCanceled) {
            this.mIsTouched = false;
            this.mIsLongPressed = false;
            this.mIsForceTouchCanceled = false;
            if (this.mListener != null) {
                this.mListener.onCaptureAreaCanceled();
                return;
            }
            return;
        }
        if (this.mIsTouched || this.mIsLongPressed) {
            this.mIsTouched = false;
            this.mIsLongPressed = false;
            if (this.mListener != null) {
                this.mListener.onCaptureAreaReleased(convertPointCoordinatesFromThisViewToScreen(point));
            }
        }
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator$TouchActionListener
    public void onSingleCanceled() {
        if (this.mIsTouched) {
            this.mIsTouched = false;
            this.mIsForceTouchCanceled = false;
            if (this.mListener != null) {
                this.mListener.onCaptureAreaCanceled();
            }
        }
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator$TouchActionListener
    public void onDoubleTouched(Point point, Point point2) {
        if (!this.mIsTouched || this.mIsForceTouchCanceled || this.mListener == null) {
            return;
        }
        this.mListener.onCaptureAreaIsReadyToScale();
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator$TouchActionListener
    public void onDoubleScaled(float f, float f2, float f3) {
        if (this.mIsTouched) {
            float f4 = f - f2;
            if (this.mListener != null) {
                this.mListener.onCaptureAreaScaled(f4);
            }
        }
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator$TouchActionListener
    public void onDoubleCanceled() {
        if (CamLog.VERBOSE) {
            CamLog.d("onDoubleCanceled: ");
        }
        if (this.mIsTouched) {
            this.mIsTouched = false;
            this.mIsForceTouchCanceled = false;
            if (this.mListener != null) {
                this.mListener.onCaptureAreaCanceled();
            }
        }
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator$TouchActionListener
    public void onOverTripleCanceled() {
        if (CamLog.VERBOSE) {
            CamLog.d("onOverTripleCanceled: ");
        }
        if (this.mIsTouched) {
            this.mIsTouched = false;
            this.mIsForceTouchCanceled = false;
            if (this.mListener != null) {
                this.mListener.onCaptureAreaCanceled();
            }
        }
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator$TouchActionListener
    public void onLongPress(MotionEvent motionEvent) {
        this.mIsLongPressed = true;
        if (this.mListener != null) {
            this.mListener.onCaptureAreaLongPressed(convertPointCoordinatesFromThisViewToScreen(new Point((int) motionEvent.getX(), (int) motionEvent.getY())));
        }
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator$TouchActionListener
    public void onSingleTapUp(MotionEvent motionEvent) {
        if (this.mIsTouched && this.mListener != null) {
            this.mListener.onCaptureAreaSingleTapUp(convertPointCoordinatesFromThisViewToScreen(new Point((int) motionEvent.getX(), (int) motionEvent.getY())));
        }
    }
}

package com.sonyericsson.cameracommon.focusview;

import android.graphics.Point;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.utility.CommonUtility;
import java.util.Iterator;
import java.util.Map$Entry;

/* JADX INFO: loaded from: classes.dex */
class FocusRectangles$OnFaceRectTouchListener implements Rectangle$RectangleOnTouchListener {
    private boolean mIsForceTouchCanceled = false;
    final /* synthetic */ FocusRectangles this$0;

    FocusRectangles$OnFaceRectTouchListener(FocusRectangles focusRectangles) {
        this.this$0 = focusRectangles;
    }

    protected void clearTouched() {
        this.mIsForceTouchCanceled = true;
    }

    @Override // com.sonyericsson.cameracommon.focusview.Rectangle$RectangleOnTouchListener
    public void onRectTouchDown(View view, MotionEvent motionEvent) {
        if (FocusRectangles.access$2700(this.this$0) == null && !FocusRectangles.access$2800(this.this$0).isWaitingForCapturing()) {
            Rectangle rectangle = (Rectangle) view.findViewById(2131296527);
            if (rectangle.getVisibility() == 0) {
                for (Map$Entry map$Entry : FocusRectangles.access$2000(this.this$0).entrySet()) {
                    TaggedRectangle taggedRectangle = (TaggedRectangle) map$Entry.getValue();
                    if (taggedRectangle.equals(view)) {
                        view.setPressed(false);
                        FocusRectangles.access$2702(this.this$0, taggedRectangle);
                        taggedRectangle.startRectanglePressAnimation();
                        boolean zEquals = FocusRectangles.access$1900(this.this$0) != null ? FocusRectangles.access$1900(this.this$0).equals(taggedRectangle.getUuid()) : false;
                        FocusRectangles.access$3000(this.this$0, FocusRectangles.access$2900(this.this$0), false, null);
                        FocusRectangles.access$3100(this.this$0, (String) map$Entry.getKey());
                        if (isTouchAreaOnTouchCapture(rectangle, motionEvent) && zEquals) {
                            FocusRectangles.access$3200(this.this$0).onTouched();
                            return;
                        }
                        return;
                    }
                }
            }
        }
    }

    @Override // com.sonyericsson.cameracommon.focusview.Rectangle$RectangleOnTouchListener
    public void onRectTouchUp(View view, MotionEvent motionEvent) {
        if (FocusRectangles.access$2700(this.this$0) == null || !FocusRectangles.access$2700(this.this$0).equals(view)) {
            return;
        }
        view.setPressed(false);
        FocusRectangles.access$2702(this.this$0, null);
        if (this.mIsForceTouchCanceled) {
            this.mIsForceTouchCanceled = false;
            FocusRectangles.access$3200(this.this$0).onCanceled();
            return;
        }
        Rectangle rectangle = (Rectangle) view.findViewById(2131296527);
        if (rectangle.getVisibility() == 0) {
            Iterator it = FocusRectangles.access$2000(this.this$0).values().iterator();
            while (it.hasNext()) {
                if (((TaggedRectangle) it.next()).equals(view)) {
                    if (isTouchAreaOnTouchCapture(rectangle, motionEvent)) {
                        if (FocusRectangles.access$2800(this.this$0).isWaitingForFaceReflected()) {
                            FocusRectangles.access$2800(this.this$0).setFaceReflectCb(new FocusRectangles$OnFaceRectTouchListener$1(this));
                            return;
                        } else {
                            FocusRectangles.access$3200(this.this$0).onReleased();
                            return;
                        }
                    }
                    return;
                }
            }
        }
    }

    @Override // com.sonyericsson.cameracommon.focusview.Rectangle$RectangleOnTouchListener
    public void onRectTouchCancel(View view, MotionEvent motionEvent) {
        if (FocusRectangles.access$2700(this.this$0) == null || !FocusRectangles.access$2700(this.this$0).equals(view)) {
            return;
        }
        view.setPressed(false);
        FocusRectangles.access$2702(this.this$0, null);
        this.mIsForceTouchCanceled = false;
        FocusRectangles.access$3200(this.this$0).onCanceled();
    }

    private boolean isTouchAreaOnTouchCapture(View view, MotionEvent motionEvent) {
        if (!FocusRectangles.access$3300(this.this$0) || FocusRectangles.access$3400(this.this$0) == null) {
            return false;
        }
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        return CommonUtility.isEventContainedInView(FocusRectangles.access$3400(this.this$0), new Point(((int) motionEvent.getX()) + rect.left, ((int) motionEvent.getY()) + rect.top));
    }

    @Override // com.sonyericsson.cameracommon.focusview.Rectangle$RectangleOnTouchListener
    public void onRectTouchLongPress(View view, MotionEvent motionEvent) {
        if (CamLog.VERBOSE) {
            CamLog.d("onRectTouchLongPress.");
        }
        if (FocusRectangles.access$2700(this.this$0) == null || !FocusRectangles.access$2700(this.this$0).equals(view)) {
            return;
        }
        view.setPressed(true);
        FocusRectangles.access$3200(this.this$0).onLongPressed();
    }
}

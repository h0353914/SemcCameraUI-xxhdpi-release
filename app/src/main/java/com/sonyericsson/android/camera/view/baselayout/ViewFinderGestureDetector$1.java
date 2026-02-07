package com.sonyericsson.android.camera.view.baselayout;

import android.graphics.Point;
import android.view.GestureDetector$OnGestureListener;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
class ViewFinderGestureDetector$1 implements GestureDetector$OnGestureListener {
    final /* synthetic */ ViewFinderGestureDetector this$0;

    @Override // android.view.GestureDetector$OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.GestureDetector$OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector$OnGestureListener
    public void onShowPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector$OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return false;
    }

    ViewFinderGestureDetector$1(ViewFinderGestureDetector viewFinderGestureDetector) {
        this.this$0 = viewFinderGestureDetector;
    }

    @Override // android.view.GestureDetector$OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (!ViewFinderGestureDetector.access$100(this.this$0)) {
            ViewFinderGestureDetector$Direction viewFinderGestureDetector$DirectionAccess$200 = ViewFinderGestureDetector.access$200(this.this$0, f, f2);
            if (!ViewFinderGestureDetector.access$300(this.this$0, viewFinderGestureDetector$DirectionAccess$200, motionEvent2)) {
                return false;
            }
            ViewFinderGestureDetector.access$400(this.this$0, motionEvent2);
            ViewFinderGestureDetector.access$502(this.this$0, viewFinderGestureDetector$DirectionAccess$200);
            if (!ViewFinderGestureDetector.access$600(this.this$0, ViewFinderGestureDetector.access$500(this.this$0))) {
                return false;
            }
            ViewFinderGestureDetector.access$900(this.this$0, ViewFinderGestureDetector.access$700(this.this$0), ViewFinderGestureDetector.access$800(this.this$0));
            return true;
        }
        if (!ViewFinderGestureDetector.access$600(this.this$0, ViewFinderGestureDetector.access$500(this.this$0))) {
            return false;
        }
        ViewFinderGestureDetector.access$1000(this.this$0, ViewFinderGestureDetector.access$800(this.this$0), motionEvent2);
        return true;
    }

    @Override // android.view.GestureDetector$OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (motionEvent == null || motionEvent2 == null) {
            return false;
        }
        ViewFinderGestureDetector$Direction viewFinderGestureDetector$DirectionAccess$200 = ViewFinderGestureDetector.access$200(this.this$0, f, f2);
        if (!ViewFinderGestureDetector.access$600(this.this$0, viewFinderGestureDetector$DirectionAccess$200)) {
            return false;
        }
        Point point = new Point((int) motionEvent.getX(), (int) motionEvent.getY());
        Point point2 = new Point((int) motionEvent2.getX(), (int) motionEvent2.getY());
        if (ViewFinderGestureDetector$2.$SwitchMap$com$sonyericsson$android$camera$view$baselayout$ViewFinderGestureDetector$Direction[viewFinderGestureDetector$DirectionAccess$200.ordinal()] != 1 || ViewFinderGestureDetector.access$1100(this.this$0) <= ViewFinderGestureDetector.access$1200(point2, point)) {
            if (!ViewFinderGestureDetector.access$100(this.this$0)) {
                ViewFinderGestureDetector.access$900(this.this$0, ViewFinderGestureDetector.access$700(this.this$0), motionEvent2);
            }
            ViewFinderGestureDetector.access$1300(this.this$0, ViewFinderGestureDetector.access$700(this.this$0), motionEvent2, ViewFinderGestureDetector$FinishReason.FLING);
        }
        return true;
    }
}

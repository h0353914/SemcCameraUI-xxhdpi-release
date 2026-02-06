package com.sonyericsson.cameracommon.interaction;

import android.graphics.Point;
import android.graphics.PointF;
import java.util.TimerTask;

class TouchMoveAndStopDetector$TouchStopDetectorTimerTask extends TimerTask {
    final /* synthetic */ TouchMoveAndStopDetector this$0;

    private TouchMoveAndStopDetector$TouchStopDetectorTimerTask(TouchMoveAndStopDetector touchMoveAndStopDetector) {
        this.this$0 = touchMoveAndStopDetector;
    }

    /* synthetic */ TouchMoveAndStopDetector$TouchStopDetectorTimerTask(TouchMoveAndStopDetector touchMoveAndStopDetector, TouchMoveAndStopDetector$1 touchMoveAndStopDetector$1) {
        this(touchMoveAndStopDetector);
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        int i = TouchMoveAndStopDetector.access$100(this.this$0).x - TouchMoveAndStopDetector.access$200(this.this$0).x;
        int i2 = TouchMoveAndStopDetector.access$100(this.this$0).y - TouchMoveAndStopDetector.access$200(this.this$0).y;
        Point point = new Point(i, i2);
        float radianFrom2Vector = VectorCalculator.getRadianFrom2Vector(new PointF(point), new PointF(TouchMoveAndStopDetector.access$300(this.this$0)));
        TouchMoveAndStopDetector.access$400(this.this$0, TouchMoveAndStopDetector.access$100(this.this$0).x, TouchMoveAndStopDetector.access$100(this.this$0).y, point);
        if (TouchMoveAndStopDetector.access$500(this.this$0)) {
            if (i == 0 && i2 == 0) {
                TouchMoveAndStopDetector.access$600(this.this$0);
            } else {
                if ((i * i) + (i2 * i2) >= TouchMoveAndStopDetector.access$700(this.this$0) * TouchMoveAndStopDetector.access$700(this.this$0) || Math.abs(radianFrom2Vector) < 1.0471976f) {
                    return;
                }
                TouchMoveAndStopDetector.access$600(this.this$0);
            }
        }
    }
}

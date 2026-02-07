package com.sonyericsson.android.camera.view.overlaycontrol.semiauto;

import android.os.SystemClock;
import android.view.Choreographer;
import android.view.Choreographer$FrameCallback;
import android.view.View;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
final class SemiAutoControlView$OpacityReductionTask implements Choreographer$FrameCallback {
    private static final long DELAY = 3000;
    private static final float DELTA = -0.5f;
    private static final long DURATION = 300;
    private static final float SOURCE_ALPHA = 1.0f;
    private static final float TARGET_ALPHA = 0.5f;
    private final Choreographer mChoreographer = Choreographer.getInstance();
    private boolean mStarted;
    private long mStartedTime;
    private final WeakReference<View> mTargetView;

    SemiAutoControlView$OpacityReductionTask(View view) {
        this.mTargetView = new WeakReference<>(view);
    }

    @Override // android.view.Choreographer$FrameCallback
    public void doFrame(long j) {
        long j2;
        View view = this.mTargetView.get();
        if (!this.mStarted || view == null) {
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis() - this.mStartedTime;
        if (jUptimeMillis <= 3000) {
            j2 = 0;
        } else {
            j2 = jUptimeMillis - 3000;
            if (j2 > 300) {
                j2 = 300;
            }
        }
        view.setAlpha(1.0f + (((-0.5f) * j2) / 300.0f));
        if (j2 < 300) {
            this.mChoreographer.postFrameCallback(this);
        }
    }

    public void start() {
        if (this.mStarted) {
            stop(true);
        }
        this.mStarted = true;
        this.mStartedTime = SystemClock.uptimeMillis();
        this.mChoreographer.postFrameCallbackDelayed(this, 3000L);
    }

    public void stop(boolean z) {
        View view;
        this.mStarted = false;
        this.mChoreographer.removeFrameCallback(this);
        if (!z || (view = this.mTargetView.get()) == null) {
            return;
        }
        view.setAlpha(1.0f);
    }
}

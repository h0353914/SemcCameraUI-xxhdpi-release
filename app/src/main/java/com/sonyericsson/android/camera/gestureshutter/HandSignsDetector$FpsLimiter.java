package com.sonyericsson.android.camera.gestureshutter;

import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
class HandSignsDetector$FpsLimiter {
    private final int mExpectedInterval;
    private long mFrameStartTimeStamp = 0;
    private int mFrames = 0;
    private long mFpsDetectStartTime = 0;

    HandSignsDetector$FpsLimiter(int i) {
        if (i > 0) {
            this.mExpectedInterval = 1000 / i;
        } else {
            this.mExpectedInterval = 0;
        }
    }

    long hit() {
        if (this.mExpectedInterval == 0) {
            return 0L;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (CamLog.VERBOSE) {
            logFps(jCurrentTimeMillis);
        }
        long j = jCurrentTimeMillis - this.mFrameStartTimeStamp;
        long j2 = j < ((long) this.mExpectedInterval) ? ((long) this.mExpectedInterval) - j : 0L;
        this.mFrameStartTimeStamp = jCurrentTimeMillis + j2;
        return j2;
    }

    private void logFps(long j) {
        if (this.mFpsDetectStartTime == 0) {
            this.mFpsDetectStartTime = j;
        } else if (j - this.mFpsDetectStartTime >= 3000) {
            CamLog.d("Detect FPS = " + ((this.mFrames * 1000.0f) / (j - this.mFpsDetectStartTime)));
            this.mFpsDetectStartTime = j;
            this.mFrames = 0;
        }
        this.mFrames++;
    }
}

package com.sonyericsson.android.camera.recorder.utility;

import android.os.Handler;
import android.os.SystemClock;
import com.sonyericsson.android.camera.util.CamLog;

public class ReferenceClock {
    public static final String TAG = "ReferenceClock";
    private long mElapsedTimeOffsetMillis;
    private long mInitialUptimeMillis;
    private boolean mIsMeasuring;
    private final ReferenceClock$TickCallback mTickCallback;
    private final ReferenceClock$TickEvent mTickEvent;
    private final Handler mTickHandler;
    private final long mTickInterval;

    static /* synthetic */ ReferenceClock$TickCallback access$100(ReferenceClock referenceClock) {
        return referenceClock.mTickCallback;
    }

    static /* synthetic */ long access$200(ReferenceClock referenceClock) {
        return referenceClock.now();
    }

    static /* synthetic */ void access$300(ReferenceClock referenceClock, long j) {
        referenceClock.scheduleNextTickEvent(j);
    }

    public ReferenceClock() {
        this.mTickEvent = new ReferenceClock$TickEvent(this, null);
        this.mElapsedTimeOffsetMillis = 0L;
        this.mInitialUptimeMillis = 0L;
        this.mTickHandler = null;
        this.mTickCallback = null;
        this.mTickInterval = 0L;
        this.mIsMeasuring = false;
    }

    public ReferenceClock(Handler handler, ReferenceClock$TickCallback referenceClock$TickCallback, long j) {
        this.mTickEvent = new ReferenceClock$TickEvent(this, null);
        this.mElapsedTimeOffsetMillis = 0L;
        this.mInitialUptimeMillis = 0L;
        this.mTickHandler = handler;
        this.mTickCallback = referenceClock$TickCallback;
        this.mTickInterval = j;
        this.mIsMeasuring = false;
        if (this.mTickInterval <= 0) {
            throw new IllegalArgumentException("tickIntervalMillis must be lager that 0.");
        }
    }

    public void start() {
        long jNow = now();
        synchronized (this) {
            this.mElapsedTimeOffsetMillis = 0L;
            this.mInitialUptimeMillis = jNow;
            this.mIsMeasuring = true;
            scheduleNextTickEvent(jNow);
        }
    }

    public void stop() {
        long jNow = now();
        synchronized (this) {
            if (this.mIsMeasuring) {
                this.mElapsedTimeOffsetMillis += computeElapsedTimeSinceInitialTime(jNow);
                this.mInitialUptimeMillis = 0L;
                this.mIsMeasuring = false;
                cancelTickEvent();
            } else if (CamLog.VERBOSE) {
                CamLog.d("stop() is invoked in not running.");
            }
        }
    }

    public void resume() {
        long jNow = now();
        synchronized (this) {
            if (this.mIsMeasuring) {
                if (CamLog.VERBOSE) {
                    CamLog.d("resume() is invoked in running.");
                }
            } else {
                this.mInitialUptimeMillis = jNow;
                this.mIsMeasuring = true;
                scheduleNextTickEvent(jNow);
            }
        }
    }

    public void reset(long j) {
        long jNow = now();
        synchronized (this) {
            this.mElapsedTimeOffsetMillis = j;
            this.mInitialUptimeMillis = jNow;
        }
    }

    public long elapsedTimeMillis() {
        long jComputeElapsedTime;
        long jNow = now();
        synchronized (this) {
            jComputeElapsedTime = computeElapsedTime(jNow);
        }
        return jComputeElapsedTime;
    }

    public boolean isMeasuring() {
        boolean z;
        synchronized (this) {
            z = this.mIsMeasuring;
        }
        return z;
    }

    private long now() {
        return SystemClock.uptimeMillis();
    }

    private long computeElapsedTime(long j) {
        long jComputeElapsedTimeSinceInitialTime;
        synchronized (this) {
            jComputeElapsedTimeSinceInitialTime = this.mElapsedTimeOffsetMillis + computeElapsedTimeSinceInitialTime(j);
        }
        return jComputeElapsedTimeSinceInitialTime;
    }

    private long computeElapsedTimeSinceInitialTime(long j) {
        synchronized (this) {
            if (!this.mIsMeasuring) {
                return 0L;
            }
            return j - this.mInitialUptimeMillis;
        }
    }

    private void scheduleNextTickEvent(long j) {
        if (this.mTickHandler != null) {
            synchronized (this) {
                if (this.mIsMeasuring) {
                    long jComputeElapsedTime = computeElapsedTime(j) / this.mTickInterval;
                    this.mTickEvent.requestElapsedTime = (jComputeElapsedTime + 1) * this.mTickInterval;
                    this.mTickHandler.postAtTime(this.mTickEvent, this.mInitialUptimeMillis + (this.mTickEvent.requestElapsedTime - this.mElapsedTimeOffsetMillis));
                }
            }
        }
    }

    private void cancelTickEvent() {
        if (this.mTickHandler != null) {
            this.mTickHandler.removeCallbacks(this.mTickEvent);
        }
    }
}

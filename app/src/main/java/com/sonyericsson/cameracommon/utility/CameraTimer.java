package com.sonyericsson.cameracommon.utility;

import android.os.Handler;
import android.os.Message;
import com.sonyericsson.android.camera.util.CamLog;
import java.util.Timer;

/* JADX INFO: loaded from: classes.dex */
public class CameraTimer {
    public static final int MSG_CANCEL = 2;
    public static final int MSG_INTERVAL = 0;
    public static final int MSG_POST_TIMEOUT = 3;
    public static final int MSG_TIMEOUT = 1;
    public static final String TAG = "SelfTimer";
    private long mCurTime;
    private long mDelay;
    private Handler mHandler;
    private long mInterval;
    private String mOptionName;
    private Timer mTimer;

    static /* synthetic */ long access$100(CameraTimer cameraTimer) {
        return cameraTimer.mCurTime;
    }

    static /* synthetic */ long access$102(CameraTimer cameraTimer, long j) {
        cameraTimer.mCurTime = j;
        return j;
    }

    static /* synthetic */ Handler access$200(CameraTimer cameraTimer) {
        return cameraTimer.mHandler;
    }

    static /* synthetic */ void access$300(CameraTimer cameraTimer) {
        cameraTimer.terminateInnerTimer();
    }

    static /* synthetic */ long access$400(CameraTimer cameraTimer) {
        return cameraTimer.mInterval;
    }

    public CameraTimer(long j, long j2, Handler handler, String str, long j3) {
        if (CamLog.VERBOSE) {
            CamLog.w("maxtime = " + j + ", interval = " + j2 + ", handler = " + handler + ", optionName = " + str);
        }
        this.mCurTime = j;
        this.mHandler = handler;
        this.mInterval = j2;
        this.mOptionName = str;
        this.mDelay = j3;
        if (j <= 0 || j2 <= 0 || handler == null || this.mCurTime < this.mInterval || this.mCurTime > 2147483647L) {
            if (CamLog.VERBOSE) {
                CamLog.d("invalid timer setting.");
            }
            this.mTimer = null;
            return;
        }
        this.mTimer = new Timer(true);
    }

    public synchronized void start() {
        if (this.mTimer == null) {
            if (CamLog.VERBOSE) {
                CamLog.d("start timer == null, do nothing");
            }
        } else {
            if (CamLog.VERBOSE) {
                CamLog.d("start schedule.(" + this.mOptionName + ")");
            }
            this.mTimer.schedule(new CameraTimer$SelfTimerTimerTask(this, null), this.mDelay, this.mInterval);
        }
    }

    public synchronized void cancel() {
        if (this.mTimer == null) {
            if (CamLog.VERBOSE) {
                CamLog.d("cancel timer == null, do nothing");
            }
        } else {
            if (CamLog.VERBOSE) {
                CamLog.d("cancel schedule.(" + this.mOptionName + ")");
            }
            terminateInnerTimer();
            Message messageObtain = Message.obtain();
            messageObtain.arg1 = (int) this.mCurTime;
            messageObtain.what = 2;
            this.mHandler.sendMessage(messageObtain);
        }
        this.mHandler.removeMessages(1);
    }

    private synchronized void terminateInnerTimer() {
        if (this.mTimer != null) {
            this.mTimer.cancel();
            this.mTimer.purge();
            this.mTimer = null;
        }
    }
}

package com.sonyericsson.android.camera;

import android.content.Context;
import com.sonyericsson.android.camera.util.CamLog;
import java.util.TimerTask;

class CameraButtonIntentReceiver$CameraDeviceReleaseTimerTask extends TimerTask {
    private final Context mContext;

    /* synthetic */ CameraButtonIntentReceiver$CameraDeviceReleaseTimerTask(Context context, CameraButtonIntentReceiver$1 cameraButtonIntentReceiver$1) {
        this(context);
    }

    private CameraButtonIntentReceiver$CameraDeviceReleaseTimerTask(Context context) {
        this.mContext = context;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        if (CamLog.DEBUG) {
            CamLog.d("Camera is released due to timeout.");
        }
        synchronized (CameraButtonIntentReceiver.access$100()) {
            if (CameraButtonIntentReceiver.access$200() != null) {
                CameraButtonIntentReceiver.access$200().cancel();
                CameraButtonIntentReceiver.access$200().purge();
                CameraButtonIntentReceiver.access$202(null);
            }
        }
        CameraButtonIntentReceiver.access$300(CameraButtonIntentReceiver$ReceiverState.IDLE);
        ((CameraApplication) this.mContext.getApplicationContext()).getCameraDevice().closeCamera();
    }
}

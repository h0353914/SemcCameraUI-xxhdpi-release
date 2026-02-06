package com.sonyericsson.cameracommon.utility;

import android.os.Message;
import java.util.TimerTask;

class CameraTimer$SelfTimerTimerTask extends TimerTask {
    final /* synthetic */ CameraTimer this$0;

    private CameraTimer$SelfTimerTimerTask(CameraTimer cameraTimer) {
        this.this$0 = cameraTimer;
    }

    /* synthetic */ CameraTimer$SelfTimerTimerTask(CameraTimer cameraTimer, CameraTimer$1 cameraTimer$1) {
        this(cameraTimer);
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        if (CameraTimer.access$100(this.this$0) > 0) {
            Message messageObtain = Message.obtain();
            messageObtain.arg1 = (int) CameraTimer.access$100(this.this$0);
            messageObtain.what = 0;
            CameraTimer.access$200(this.this$0).sendMessage(messageObtain);
        } else {
            Message messageObtain2 = Message.obtain();
            messageObtain2.arg1 = (int) CameraTimer.access$100(this.this$0);
            messageObtain2.what = 1;
            CameraTimer.access$200(this.this$0).sendMessage(messageObtain2);
            CameraTimer.access$300(this.this$0);
        }
        CameraTimer.access$102(this.this$0, CameraTimer.access$100(this.this$0) - CameraTimer.access$400(this.this$0));
    }
}

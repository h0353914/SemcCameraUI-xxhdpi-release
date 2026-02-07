package com.sonyericsson.android.camera.view;

import android.view.MotionEvent;
import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
public class UserEventHandler$SideTouchEventDispatcher extends UserEventHandler$EventDispatcher {
    public UserEventHandler$SideTouchEventDispatcher() {
        super(null);
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$EventDispatcher
    public /* bridge */ /* synthetic */ void attach(UserEventHandler userEventHandler) {
        super.attach(userEventHandler);
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$EventDispatcher
    public /* bridge */ /* synthetic */ void start() {
        super.start();
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$EventDispatcher
    public /* bridge */ /* synthetic */ void stop() {
        super.stop();
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$EventDispatcher
    protected void reset() {
        UserEventHandler.access$1500(getHandler());
    }

    public boolean send(MotionEvent motionEvent) {
        if (getHandler() != null && (isRunning() || motionEvent.getAction() == 3)) {
            if (CamLog.DEBUG) {
                CamLog.d("SideTouchEventDispatcher#send()");
            }
            return UserEventHandler.access$1600(getHandler(), motionEvent);
        }
        CamLog.i("SideTouchEventDispatcher#send() event is rejected.");
        return false;
    }
}

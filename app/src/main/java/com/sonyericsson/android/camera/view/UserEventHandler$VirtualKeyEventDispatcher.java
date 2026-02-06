package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.util.CamLog;

public class UserEventHandler$VirtualKeyEventDispatcher extends UserEventHandler$EventDispatcher {
    public UserEventHandler$VirtualKeyEventDispatcher() {
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

    public boolean sendVirtualKeyEvent(UserEventHandler$VirtualKeyEvent userEventHandler$VirtualKeyEvent) {
        if (getHandler() != null && isRunning()) {
            if (CamLog.DEBUG) {
                CamLog.d("VirtualKeyEventDispatcher#sendVirtualKeyEvent()");
            }
            return UserEventHandler.access$1700(getHandler(), userEventHandler$VirtualKeyEvent);
        }
        CamLog.i("VirtualKeyEventDispatcher#sendVirtualKeyEvent() event is rejected.");
        return false;
    }
}

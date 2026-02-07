package com.sonyericsson.android.camera.view;

import android.view.KeyEvent;
import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
public class UserEventHandler$KeyEventDispatcher extends UserEventHandler$EventDispatcher {
    public UserEventHandler$KeyEventDispatcher() {
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
        UserEventHandler.access$300(getHandler());
    }

    public boolean sendKeyDown(KeyEvent keyEvent) {
        if (getHandler() != null && isRunning()) {
            if (CamLog.DEBUG) {
                CamLog.d("KeyEventDispatcher#sendKeyDown() event:" + keyEvent.toString());
            }
            return UserEventHandler.access$400(getHandler(), keyEvent);
        }
        CamLog.i("KeyEventDispatcher#sendKeyDown() event is rejected. event:" + keyEvent.toString());
        return false;
    }

    public boolean sendKeyUp(KeyEvent keyEvent) {
        if (getHandler() != null && isRunning()) {
            if (CamLog.DEBUG) {
                CamLog.d("KeyEventDispatcher#sendKeyUp() event:" + keyEvent.toString());
            }
            return UserEventHandler.access$500(getHandler(), keyEvent);
        }
        CamLog.i("KeyEventDispatcher#sendKeyUp() event is rejected. event:" + keyEvent.toString());
        return false;
    }

    public boolean sendKeyLongPress(KeyEvent keyEvent) {
        if (getHandler() != null && isRunning()) {
            if (CamLog.DEBUG) {
                CamLog.d("KeyEventDispatcher#sendKeyLongPress() event:" + keyEvent.toString());
            }
            return UserEventHandler.access$600(getHandler(), keyEvent);
        }
        CamLog.i("KeyEventDispatcher#sendKeyLongPress() event is rejected. event:" + keyEvent.toString());
        return false;
    }
}

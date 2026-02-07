package com.sonyericsson.android.camera.view;

import android.graphics.Point;
import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
public class UserEventHandler$TouchEventDispatcher extends UserEventHandler$EventDispatcher {
    public UserEventHandler$TouchEventDispatcher() {
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
        UserEventHandler.access$700(getHandler());
    }

    public void sendTouchDown(UserEventHandler$TouchEventSource userEventHandler$TouchEventSource) {
        if (getHandler() != null && isRunning()) {
            if (CamLog.DEBUG) {
                CamLog.d("TouchEventDispatcher#sendTouchDown() source:" + userEventHandler$TouchEventSource.toString());
            }
            UserEventHandler.access$800(getHandler(), userEventHandler$TouchEventSource);
            return;
        }
        CamLog.i("TouchEventDispatcher#sendTouchDown() event is rejected. source:" + userEventHandler$TouchEventSource.toString());
    }

    public void sendTouchUp(UserEventHandler$TouchEventSource userEventHandler$TouchEventSource, Point point) {
        if (getHandler() != null && isRunning()) {
            if (CamLog.DEBUG) {
                CamLog.d("TouchEventDispatcher#sendTouchUp() source:" + userEventHandler$TouchEventSource.toString());
            }
            UserEventHandler.access$900(getHandler(), userEventHandler$TouchEventSource, point);
            return;
        }
        CamLog.i("TouchEventDispatcher#sendTouchUp() event is rejected. source:" + userEventHandler$TouchEventSource.toString());
    }

    public void sendClick(UserEventHandler$TouchEventSource userEventHandler$TouchEventSource, Point point) {
        if (getHandler() != null && isRunning()) {
            if (CamLog.DEBUG) {
                CamLog.d("TouchEventDispatcher#sendClick() source:" + userEventHandler$TouchEventSource.toString());
            }
            UserEventHandler.access$1000(getHandler(), userEventHandler$TouchEventSource, point);
            return;
        }
        CamLog.i("TouchEventDispatcher#sendClick() event is rejected. source:" + userEventHandler$TouchEventSource.toString());
    }

    public void sendLongClick(UserEventHandler$TouchEventSource userEventHandler$TouchEventSource, Point point) {
        if (getHandler() != null && isRunning()) {
            if (CamLog.DEBUG) {
                CamLog.d("TouchEventDispatcher#sendLongClick() source:" + userEventHandler$TouchEventSource.toString());
            }
            UserEventHandler.access$1100(getHandler(), userEventHandler$TouchEventSource, point);
            return;
        }
        CamLog.i("TouchEventDispatcher#sendLongClick() event is rejected. source:" + userEventHandler$TouchEventSource.toString());
    }

    public void sendCancel(UserEventHandler$TouchEventSource userEventHandler$TouchEventSource) {
        if (getHandler() != null && isRunning()) {
            if (CamLog.DEBUG) {
                CamLog.d("TouchEventDispatcher#sendCancel() source:" + userEventHandler$TouchEventSource.toString());
            }
            UserEventHandler.access$1200(getHandler(), userEventHandler$TouchEventSource);
            return;
        }
        CamLog.i("TouchEventDispatcher#sendCancel() event is rejected. source:" + userEventHandler$TouchEventSource.toString());
    }

    public void sendCaptureAreaScaleReady(UserEventHandler$TouchEventSource userEventHandler$TouchEventSource) {
        if (getHandler() != null && isRunning()) {
            if (CamLog.DEBUG) {
                CamLog.d("TouchEventDispatcher#sendCaptureAreaScaleReady() source:" + userEventHandler$TouchEventSource.toString());
            }
            UserEventHandler.access$1300(getHandler(), userEventHandler$TouchEventSource);
            return;
        }
        CamLog.i("TouchEventDispatcher#sendCaptureAreaScaleReady() event is rejected.source:" + userEventHandler$TouchEventSource.toString());
    }

    public void sendCaptureAreaScaling(UserEventHandler$TouchEventSource userEventHandler$TouchEventSource, float f) {
        if (getHandler() != null && isRunning()) {
            if (CamLog.DEBUG) {
                CamLog.d("TouchEventDispatcher#sendCaptureAreaScaling() source:" + userEventHandler$TouchEventSource.toString());
            }
            UserEventHandler.access$1400(getHandler(), userEventHandler$TouchEventSource, f);
            return;
        }
        CamLog.i("TouchEventDispatcher#sendCaptureAreaScaling() event is rejected. source:" + userEventHandler$TouchEventSource.toString());
    }
}

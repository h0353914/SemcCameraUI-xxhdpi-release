package com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
class WearableBridgeClientBroadcastReceiver extends BroadcastReceiver {
    private static final String TAG = "WearableBridgeClientBroadcastReceiver";
    private Handler mCallbackHandler;
    private ObserveWearableInterface$LifeCycleObserver mLifeCycleObserver;
    private ObserveWearableInterface$PhotoEventObserver mPhotoEventObserver;
    private ObserveWearableInterface$VideoEventObserver mVideoEventObserver;
    private WearableBridgeClientBroadcastReceiver$NotifyOnResumeTask mNotifyOnResumeTask = new WearableBridgeClientBroadcastReceiver$NotifyOnResumeTask(this, null);
    private WearableBridgeClientBroadcastReceiver$NotifyOnPauseTask mNotifyOnPauseTask = new WearableBridgeClientBroadcastReceiver$NotifyOnPauseTask(this, null);
    private WearableBridgeClientBroadcastReceiver$NotifyPhotoCaptureRequestedTask mNotifyPhotoCaptureRequestedTask = new WearableBridgeClientBroadcastReceiver$NotifyPhotoCaptureRequestedTask(this, null);
    private WearableBridgeClientBroadcastReceiver$NotifyVideoStartRecRequestedTask mNotifyVideoStartRecRequestedTask = new WearableBridgeClientBroadcastReceiver$NotifyVideoStartRecRequestedTask(this, null);
    private WearableBridgeClientBroadcastReceiver$NotifyVideoStopRecRequestedTask mNotifyVideoStopRecRequestedTask = new WearableBridgeClientBroadcastReceiver$NotifyVideoStopRecRequestedTask(this, null);

    static /* synthetic */ ObserveWearableInterface$LifeCycleObserver access$500(WearableBridgeClientBroadcastReceiver wearableBridgeClientBroadcastReceiver) {
        return wearableBridgeClientBroadcastReceiver.mLifeCycleObserver;
    }

    static /* synthetic */ ObserveWearableInterface$PhotoEventObserver access$600(WearableBridgeClientBroadcastReceiver wearableBridgeClientBroadcastReceiver) {
        return wearableBridgeClientBroadcastReceiver.mPhotoEventObserver;
    }

    static /* synthetic */ ObserveWearableInterface$VideoEventObserver access$700(WearableBridgeClientBroadcastReceiver wearableBridgeClientBroadcastReceiver) {
        return wearableBridgeClientBroadcastReceiver.mVideoEventObserver;
    }

    public WearableBridgeClientBroadcastReceiver(Handler handler, ObserveWearableInterface$LifeCycleObserver observeWearableInterface$LifeCycleObserver, ObserveWearableInterface$PhotoEventObserver observeWearableInterface$PhotoEventObserver, ObserveWearableInterface$VideoEventObserver observeWearableInterface$VideoEventObserver) {
        this.mCallbackHandler = null;
        this.mLifeCycleObserver = null;
        this.mPhotoEventObserver = null;
        this.mVideoEventObserver = null;
        if (CamLog.DEBUG) {
            CamLog.d("CONSTRUCTOR : E");
        }
        this.mCallbackHandler = handler;
        this.mLifeCycleObserver = observeWearableInterface$LifeCycleObserver;
        this.mPhotoEventObserver = observeWearableInterface$PhotoEventObserver;
        this.mVideoEventObserver = observeWearableInterface$VideoEventObserver;
        if (CamLog.DEBUG) {
            CamLog.d("CONSTRUCTOR : X");
        }
    }

    public void release() {
        if (CamLog.DEBUG) {
            CamLog.d("release() : E");
        }
        this.mCallbackHandler = null;
        this.mLifeCycleObserver = null;
        this.mPhotoEventObserver = null;
        this.mVideoEventObserver = null;
        if (CamLog.DEBUG) {
            CamLog.d("release() : X");
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (CamLog.DEBUG) {
            CamLog.d("onReceive() : E");
        }
        String action = intent.getAction();
        if (CamLog.DEBUG) {
            CamLog.d("    ACTION = " + action);
        }
        if (action != null) {
            if ("com.sonymobile.cameracommon.wearablebridge.SERVER_LIFECYCLE_ON_RESUME".equals(action)) {
                this.mCallbackHandler.post(this.mNotifyOnResumeTask);
            } else if ("com.sonymobile.cameracommon.wearablebridge.SERVER_LIFECYCLE_ON_PAUSE".equals(action)) {
                this.mCallbackHandler.post(this.mNotifyOnPauseTask);
            } else if ("com.sonymobile.cameracommon.wearablebridge.SERVER_PHOTO_CAPTURE_REQUESTED".equals(action)) {
                this.mCallbackHandler.post(this.mNotifyPhotoCaptureRequestedTask);
            } else if ("com.sonymobile.cameracommon.wearablebridge.SERVER_VIDEO_START_REC_REQUESTED".equals(action)) {
                this.mCallbackHandler.post(this.mNotifyVideoStartRecRequestedTask);
            } else if ("com.sonymobile.cameracommon.wearablebridge.SERVER_VIDEO_STOP_REC_REQUESTED".equals(action)) {
                this.mCallbackHandler.post(this.mNotifyVideoStopRecRequestedTask);
            }
        }
        if (CamLog.DEBUG) {
            CamLog.d("onReceive() : X");
        }
    }
}

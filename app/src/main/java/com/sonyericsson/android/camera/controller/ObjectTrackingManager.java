package com.sonyericsson.android.camera.controller;

import android.graphics.Rect;
import com.sonyericsson.android.camera.device.CameraDeviceHandler;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.ViewFinder;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;
import com.sonyericsson.cameracommon.utility.PositionConverter;

public class ObjectTrackingManager {
    public static final String TAG = "ObjectTrackingManager";
    private final CameraDeviceHandler mCameraDeviceHandler;
    private ObjectTrackingManager$State mCurrentState = ObjectTrackingManager$State.STOPPED;
    private final ObjectTrackingManager$ObjectTrackingHandler mHandler = new ObjectTrackingManager$ObjectTrackingHandler(this, null);
    private ObjectTrackingManager$ObjectTrackingCallback mObjectTrackingCallback;
    private final StateMachine mStateMachine;
    private final ViewFinder mViewFinder;

    public static final void preload() {
    }

    static /* synthetic */ ObjectTrackingManager$ObjectTrackingCallback access$000(ObjectTrackingManager objectTrackingManager) {
        return objectTrackingManager.mObjectTrackingCallback;
    }

    static /* synthetic */ ObjectTrackingManager$State access$100(ObjectTrackingManager objectTrackingManager) {
        return objectTrackingManager.mCurrentState;
    }

    static /* synthetic */ ObjectTrackingManager$State access$102(ObjectTrackingManager objectTrackingManager, ObjectTrackingManager$State objectTrackingManager$State) {
        objectTrackingManager.mCurrentState = objectTrackingManager$State;
        return objectTrackingManager$State;
    }

    static /* synthetic */ ObjectTrackingManager$ObjectTrackingHandler access$200(ObjectTrackingManager objectTrackingManager) {
        return objectTrackingManager.mHandler;
    }

    static /* synthetic */ StateMachine access$300(ObjectTrackingManager objectTrackingManager) {
        return objectTrackingManager.mStateMachine;
    }

    static /* synthetic */ ViewFinder access$400(ObjectTrackingManager objectTrackingManager) {
        return objectTrackingManager.mViewFinder;
    }

    static /* synthetic */ CameraDeviceHandler access$700(ObjectTrackingManager objectTrackingManager) {
        return objectTrackingManager.mCameraDeviceHandler;
    }

    public ObjectTrackingManager(ViewFinder viewFinder, CameraDeviceHandler cameraDeviceHandler, StateMachine stateMachine) {
        this.mViewFinder = viewFinder;
        this.mCameraDeviceHandler = cameraDeviceHandler;
        this.mStateMachine = stateMachine;
    }

    public void start(Rect rect) {
        if (CamLog.VERBOSE) {
            CamLog.d("start() called: " + rect);
        }
        if (rect != null) {
            switch (ObjectTrackingManager$1.$SwitchMap$com$sonyericsson$android$camera$controller$ObjectTrackingManager$State[this.mCurrentState.ordinal()]) {
                case 1:
                    break;
                case 2:
                case 3:
                case 4:
                    stop();
                    break;
                default:
                    return;
            }
            startTracking(rect);
        }
    }

    private void startTracking(Rect rect) {
        if (CamLog.VERBOSE) {
            CamLog.d("startTracking E: " + rect);
        }
        this.mViewFinder.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_RELEASED, new Object[0]);
        this.mViewFinder.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_OBJECT_TRACKING_STARTED, new Object[0]);
        this.mObjectTrackingCallback = new ObjectTrackingManager$ObjectTrackingCallback(this, null);
        this.mCameraDeviceHandler.startObjectTracking(PositionConverter.getInstance().convertFromViewToActiveArray(rect), this.mObjectTrackingCallback);
        this.mCurrentState = ObjectTrackingManager$State.IDLE;
        if (CamLog.VERBOSE) {
            CamLog.d("startTracking X");
        }
    }

    public void stop() {
        if (CamLog.VERBOSE) {
            CamLog.d("stop() E");
        }
        this.mCameraDeviceHandler.stopObjectTracking();
        this.mHandler.stopTimeoutCount();
        this.mCurrentState = ObjectTrackingManager$State.STOPPED;
        this.mObjectTrackingCallback = null;
        this.mViewFinder.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_OBJECT_TRACKING_STOP, new Object[0]);
        if (CamLog.VERBOSE) {
            CamLog.d("stop() X");
        }
    }
}

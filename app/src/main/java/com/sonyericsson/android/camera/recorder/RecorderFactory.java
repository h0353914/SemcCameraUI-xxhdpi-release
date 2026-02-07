package com.sonyericsson.android.camera.recorder;

import android.content.Context;
import android.os.Handler;
import com.sonyericsson.android.camera.configuration.parameters.VideoStabilizer;
import com.sonyericsson.android.camera.device.CameraActionSound;
import com.sonyericsson.android.camera.recorder.defaultrecorder.DefaultRecorder;
import com.sonyericsson.android.camera.recorder.defaultrecorder.DefaultRecorderController;
import com.sonyericsson.android.camera.recorder.superslowrecorder.SuperSlowRecorderController;
import com.sonyericsson.android.camera.recorder.superslowrecorder.SuperSlowShotRecorderController;
import com.sonyericsson.android.camera.recorder.utility.Accessor;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera;

/* JADX INFO: loaded from: classes.dex */
public class RecorderFactory {
    private static long MIN_VIDEO_DURATION_MILLIS = 3000;

    public static RecorderController create(Context context, Accessor<CameraActionSound> accessor, Accessor<BypassCamera> accessor2, Handler handler, Handler handler2, RecorderFactory$Parameters recorderFactory$Parameters, int i, int i2) {
        switch (RecorderFactory$1.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion[RecorderFactory$Parameters.access$000(recorderFactory$Parameters).ordinal()]) {
            case 1:
                return createSuperSlow(context, accessor, accessor2, handler, handler2, recorderFactory$Parameters, i, i2);
            case 2:
                return createSuperSlowShot(context, accessor, accessor2, handler, handler2, recorderFactory$Parameters, i, i2);
            default:
                return createDefault(context, accessor, accessor2, RecorderFactory$Parameters.access$100(recorderFactory$Parameters), handler, RecorderFactory$Parameters.access$200(recorderFactory$Parameters), handler2, VideoStabilizer.INTELLIGENT_ACTIVE.getValue().equals(RecorderFactory$Parameters.access$300(recorderFactory$Parameters)), RecorderFactory$Parameters.access$400(recorderFactory$Parameters));
        }
    }

    private static SuperSlowRecorderController createSuperSlow(Context context, Accessor<CameraActionSound> accessor, Accessor<BypassCamera> accessor2, Handler handler, Handler handler2, RecorderFactory$Parameters recorderFactory$Parameters, int i, int i2) {
        CamLog.d("Create recorder : SuperSlowRecorderController progress-interval:" + RecorderFactory$Parameters.access$200(recorderFactory$Parameters) + " shutter-sound:" + RecorderFactory$Parameters.access$400(recorderFactory$Parameters));
        return new SuperSlowRecorderController(context, accessor, accessor2, RecorderFactory$Parameters.access$100(recorderFactory$Parameters), RecorderFactory$Parameters.access$500(recorderFactory$Parameters), handler, RecorderFactory$Parameters.access$200(recorderFactory$Parameters), handler2, RecorderFactory$Parameters.access$400(recorderFactory$Parameters), i, i2);
    }

    private static RecorderController createSuperSlowShot(Context context, Accessor<CameraActionSound> accessor, Accessor<BypassCamera> accessor2, Handler handler, Handler handler2, RecorderFactory$Parameters recorderFactory$Parameters, int i, int i2) {
        CamLog.d("Create recorder : SuperSlowShotRecorderController progress-interval:" + RecorderFactory$Parameters.access$200(recorderFactory$Parameters) + " shutter-sound:" + RecorderFactory$Parameters.access$400(recorderFactory$Parameters));
        return new SuperSlowShotRecorderController(context, accessor, accessor2, RecorderFactory$Parameters.access$100(recorderFactory$Parameters), RecorderFactory$Parameters.access$500(recorderFactory$Parameters), handler, RecorderFactory$Parameters.access$200(recorderFactory$Parameters), handler2, RecorderFactory$Parameters.access$400(recorderFactory$Parameters), i, i2);
    }

    private static RecorderController createDefault(Context context, Accessor<CameraActionSound> accessor, Accessor<BypassCamera> accessor2, RecorderController$RecorderListener recorderController$RecorderListener, Handler handler, int i, Handler handler2, boolean z, boolean z2) {
        CamLog.d("Create recorder : DefaultRecorderController progress-interval:" + i + " intelligent-active:" + z + " shutter-sound:" + z2);
        return new DefaultRecorderController(context, accessor, accessor2, new DefaultRecorder(2, z), recorderController$RecorderListener, MIN_VIDEO_DURATION_MILLIS, handler, i, handler2, true, true, true, z2, z);
    }
}

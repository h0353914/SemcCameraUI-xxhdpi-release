package com.sonyericsson.android.camera.device;

import android.graphics.Rect;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureRequest$Builder;
import android.hardware.camera2.CaptureRequest$Key;
import android.view.Surface;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes.dex */
class CaptureRequestHolder {
    private static final String TAG = "CaptureRequestHolder";
    private final ReadWriteLock mReadWriteLock = new ReentrantReadWriteLock(true);
    private final Map<CaptureRequest$Key<?>, Object> mCaptureRequests = new HashMap();

    CaptureRequestHolder() {
    }

    void setDefault(CameraInfo$CameraId cameraInfo$CameraId) {
        clear();
        Rect activeArraySize = PlatformCapability.getActiveArraySize(cameraInfo$CameraId);
        set(SomcCaptureRequestKeys.SONYMOBILE_STATISTICS_OBJECT_SELECT_TRIGGER, 0);
        set(SomcCaptureRequestKeys.SONYMOBILE_STATISTICS_OBJECT_SELECT_TRIGGER_AREA, new int[]{activeArraySize.left, activeArraySize.top, activeArraySize.right, activeArraySize.bottom});
        set(SomcCaptureRequestKeys.SONYMOBILE_STATISTICS_FACE_SELECT_TRIGGER, 0);
        set(SomcCaptureRequestKeys.SONYMOBILE_STATISTICS_FACE_SELECT_TRIGGER_AREA, new int[]{activeArraySize.left, activeArraySize.top, activeArraySize.right, activeArraySize.bottom});
        set(CaptureRequest.STATISTICS_FACE_DETECT_MODE, 0);
        set(SomcCaptureRequestKeys.SONYMOBILE_STATISTICS_FACE_SMILE_SCORES_MODE, 0);
        set(SomcCaptureRequestKeys.SONYMOBILE_STATISTICS_SCENE_DETECT_MODE, 0);
        set(SomcCaptureRequestKeys.SONYMOBILE_STATISTICS_CONDITION_DETECT_MODE, 0);
        set(SomcCaptureRequestKeys.SONYMOBILE_CONTROL_AE_MODE, 1);
        set(SomcCaptureRequestKeys.SONYMOBILE_CONTROL_AE_REGION_MODE, 0);
        set(SomcCaptureRequestKeys.SONYMOBILE_CONTROL_AF_REGION_MODE, 0);
        set(SomcCaptureRequestKeys.SONYMOBILE_CONTROL_AWB_COLOR_COMPENSATION_AB, 0);
        set(SomcCaptureRequestKeys.SONYMOBILE_CONTROL_AWB_COLOR_COMPENSATION_GM, 0);
        set(SomcCaptureRequestKeys.SONYMOBILE_CONTROL_STILL_SKIN_SMOOTH_LEVEL, 0);
        set(SomcCaptureRequestKeys.SONYMOBILE_CONTROL_STILL_HDR_MODE, 0);
        set(SomcCaptureRequestKeys.SONYMOBILE_CONTROL_POWER_SAVE_MODE, 0);
        set(SomcCaptureRequestKeys.SONYMOBILE_CONTROL_EXPOSURE_TIME_LIMIT, Long.valueOf(PlatformCapability.getMinExposureTimeLimit(cameraInfo$CameraId)));
        set(SomcCaptureRequestKeys.SONYMOBILE_SENSOR_SENSITIVITY_HINT, 50);
        set(SomcCaptureRequestKeys.SONYMOBILE_SENSOR_EXPOSURE_TIME_HINT, Long.valueOf(PlatformCapability.getMaxShutterSpeed(cameraInfo$CameraId)));
        set(SomcCaptureRequestKeys.SONYMOBILE_CONTROL_FUSION_MODE, 0);
    }

    public synchronized CaptureRequestHolder copy() {
        CaptureRequestHolder captureRequestHolder;
        captureRequestHolder = new CaptureRequestHolder();
        captureRequestHolder.mCaptureRequests.putAll(this.mCaptureRequests);
        return captureRequestHolder;
    }

    private synchronized void clear() {
        this.mCaptureRequests.clear();
    }

    synchronized <T> void set(CaptureRequest$Key<T> captureRequest$Key, T t) {
        this.mReadWriteLock.writeLock().lock();
        try {
            this.mCaptureRequests.put(captureRequest$Key, t);
            this.mReadWriteLock.writeLock().unlock();
            if (CamLog.VERBOSE) {
                CamLog.d("set() : key = " + captureRequest$Key.getName() + ", value = " + t);
            }
        } catch (Throwable th) {
            this.mReadWriteLock.writeLock().unlock();
            throw th;
        }
    }

    synchronized <T> T get(CaptureRequest$Key<T> captureRequest$Key) {
        T t;
        this.mReadWriteLock.readLock().lock();
        try {
            t = (T) this.mCaptureRequests.get(captureRequest$Key);
            if (CamLog.VERBOSE) {
                CamLog.d("get() : key = " + captureRequest$Key.getName() + ", value = " + t);
            }
        } finally {
            this.mReadWriteLock.readLock().unlock();
        }
        return t;
    }

    synchronized CaptureRequest createCaptureRequest(CameraDevice cameraDevice, int i, Surface... surfaceArr) {
        return createCaptureRequest(cameraDevice, i, null, surfaceArr);
    }

    synchronized CaptureRequest createCaptureRequest(CameraDevice cameraDevice, int i, Object obj, Surface... surfaceArr) {
        CaptureRequest$Builder captureRequest$BuilderCreateCaptureRequest;
        if (CamLog.VERBOSE) {
            CamLog.d("createCaptureRequest() E");
        }
        try {
            captureRequest$BuilderCreateCaptureRequest = cameraDevice.createCaptureRequest(i);
            Iterator<CaptureRequest$Key<?>> it = this.mCaptureRequests.keySet().iterator();
            while (it.hasNext()) {
                setRequest(captureRequest$BuilderCreateCaptureRequest, it.next());
            }
            for (Surface surface : surfaceArr) {
                captureRequest$BuilderCreateCaptureRequest.addTarget(surface);
            }
            captureRequest$BuilderCreateCaptureRequest.setTag(obj);
            if (CamLog.VERBOSE) {
                CamLog.d("createCaptureRequest() X");
            }
        } catch (CameraAccessException e) {
            CamLog.e("createCaptureRequest() X : Exception", e);
            return null;
        }
        return captureRequest$BuilderCreateCaptureRequest.build();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> void setRequest(CaptureRequest$Builder captureRequest$Builder, CaptureRequest$Key<T> captureRequest$Key) {
        try {
            captureRequest$Builder.set(captureRequest$Key, get(captureRequest$Key));
        } catch (IllegalArgumentException unused) {
            CamLog.e("setRequest(): key (" + captureRequest$Key.getName() + ") is not valid.");
        }
    }
}

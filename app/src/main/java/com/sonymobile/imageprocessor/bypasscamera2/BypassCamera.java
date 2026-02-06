package com.sonymobile.imageprocessor.bypasscamera2;

import android.os.Build;
import android.os.Handler;
import android.util.Log;
import android.util.Size;
import android.view.Surface;
import java.util.List;
import java.util.concurrent.ExecutorService;

public final class BypassCamera {
    private static final int CALLBACK_TYPE_ON_FINISH_BURST_DONE = 50;
    private static final int CALLBACK_TYPE_ON_PREPARE_BURST_DONE = 40;
    private static final int CALLBACK_TYPE_ON_PREPARE_SUPER_SLOW_RECORDING_DONE = 4;
    private static final int CALLBACK_TYPE_ON_PREPARE_VIDEO_RECORDING_DONE = 2;
    private static final int CALLBACK_TYPE_ON_SHUTTER_DONE = 20;
    private static final int CALLBACK_TYPE_ON_SNAPSHOT_DONE = 21;
    private static final int CALLBACK_TYPE_ON_SNAPSHOT_FREE_DONE = 30;
    private static final int CALLBACK_TYPE_ON_SNAPSHOT_READY_DONE = 10;
    private static final int CALLBACK_TYPE_ON_START_SUPER_SLOW_RECORDING_DONE = 3;
    private static final int CALLBACK_TYPE_ON_START_VIDEO_RECORDING_DONE = 0;
    private static final int CALLBACK_TYPE_ON_STOP_VIDEO_RECORDING_DONE = 1;
    private static final int INVALID_NATIVE_INSTANCE_POINTER = -1;
    private static final int RET_ERR = -1;
    private static final int RET_OK = 0;
    private static final int RET_TIMEOUT = -2;
    private static final String TAG = "BypassCamera";
    private static final Object sBypassCameraLock = new Object();
    private static boolean sIsBypassCameraLoaded;
    private static boolean sIsBypassCameraOpened;
    private ExecutorService mCallbackExecutorService;
    private Handler mCallbackHandler;
    private BypassCamera$FinishBurstCallback mFinishBurstCallback;
    private long mNativeInstancePointer;
    private BypassCamera$PrepareBurstCallback mPrepareBurstCallback;
    private BypassCamera$PrepareSuperSlowRecordingCallback mPrepareSuperSlowRecordingCallback;
    private BypassCamera$PrepareVideoRecordingCallback mPrepareVideoRecordingCallback;
    private BypassCamera$SnapshotCallback mSnapshotCallback;
    private BypassCamera$SnapshotFreeCallback mSnapshotFreeCallback;
    private BypassCamera$SnapshotReadyCallback mSnapshotReadyCallback;
    private BypassCamera$StartSuperSlowRecordingCallback mStartSuperSlowRecordingCallback;
    private BypassCamera$StartVideoRecordingCallback mStartVideoRecordingCallback;
    private BypassCamera$StopVideoRecordingCallback mStopVideoRecordingCallback;

    private native int nativeChangeToPhotoMode(long j, int i, int i2, int i3, int i4, int i5, int i6);

    private native int nativeChangeToSuperSlowMode(long j, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8);

    private native int nativeChangeToVideoMode(long j, int i, int i2, int i3, int i4, int i5, int i6);

    private native int nativeFinalize(long j);

    private static native int nativeGetCaps(int i, BypassCameraParameters$Capability bypassCameraParameters$Capability);

    private native int nativeGetLatestRequestId(long j);

    private native long nativeInitialize(int i);

    private native boolean nativeIsDebugable();

    private native int nativeRequestFinishBurstShot(long j);

    private native int nativeRequestPrepareBurstShot(long j);

    private native int nativeRequestPrepareSnapshot(long j, Surface surface, int i);

    private native int nativeRequestPrepareSuperSlowRecording(long j, Surface surface, int i, int i2, int i3);

    private native int nativeRequestPrepareVideoRecording(long j, Surface surface, int i, int i2, int i3);

    private native int nativeRequestSnapshot(long j, boolean z, boolean z2, double d, double d2, double d3, boolean z3, String str, boolean z4, int i, boolean z5, int i2, boolean z6, int i3, int i4, int i5, int i6, boolean z7, int i7);

    private native int nativeRequestSnapshotFree(long j);

    private native int nativeRequestSnapshotReady(long j);

    private native int nativeRequestStartSuperSlowRecording(long j);

    private native int nativeRequestStartVideoRecording(long j);

    private native int nativeRequestStopVideoRecording(long j);

    private native int nativeSetConfig(long j, BypassCameraParameters bypassCameraParameters);

    static /* synthetic */ BypassCamera$FinishBurstCallback access$1000(BypassCamera bypassCamera) {
        return bypassCamera.mFinishBurstCallback;
    }

    static /* synthetic */ BypassCamera$PrepareVideoRecordingCallback access$1600(BypassCamera bypassCamera) {
        return bypassCamera.mPrepareVideoRecordingCallback;
    }

    static /* synthetic */ BypassCamera$StartVideoRecordingCallback access$1700(BypassCamera bypassCamera) {
        return bypassCamera.mStartVideoRecordingCallback;
    }

    static /* synthetic */ BypassCamera$StopVideoRecordingCallback access$1800(BypassCamera bypassCamera) {
        return bypassCamera.mStopVideoRecordingCallback;
    }

    static /* synthetic */ BypassCamera$PrepareSuperSlowRecordingCallback access$1900(BypassCamera bypassCamera) {
        return bypassCamera.mPrepareSuperSlowRecordingCallback;
    }

    static /* synthetic */ BypassCamera$StartSuperSlowRecordingCallback access$2000(BypassCamera bypassCamera) {
        return bypassCamera.mStartSuperSlowRecordingCallback;
    }

    static /* synthetic */ BypassCamera$SnapshotReadyCallback access$600(BypassCamera bypassCamera) {
        return bypassCamera.mSnapshotReadyCallback;
    }

    static /* synthetic */ BypassCamera$SnapshotCallback access$700(BypassCamera bypassCamera) {
        return bypassCamera.mSnapshotCallback;
    }

    static /* synthetic */ BypassCamera$SnapshotFreeCallback access$800(BypassCamera bypassCamera) {
        return bypassCamera.mSnapshotFreeCallback;
    }

    static /* synthetic */ BypassCamera$PrepareBurstCallback access$900(BypassCamera bypassCamera) {
        return bypassCamera.mPrepareBurstCallback;
    }

    private BypassCamera(BypassCamera$Facing bypassCamera$Facing, Handler handler) {
        this(bypassCamera$Facing);
        this.mCallbackHandler = handler;
    }

    private BypassCamera(BypassCamera$Facing bypassCamera$Facing, ExecutorService executorService) {
        this(bypassCamera$Facing);
        this.mCallbackExecutorService = executorService;
    }

    private BypassCamera(BypassCamera$Facing bypassCamera$Facing) {
        this.mNativeInstancePointer = -1L;
        this.mCallbackHandler = null;
        this.mCallbackExecutorService = null;
        this.mSnapshotReadyCallback = null;
        this.mSnapshotCallback = null;
        this.mSnapshotFreeCallback = null;
        this.mPrepareBurstCallback = null;
        this.mFinishBurstCallback = null;
        this.mPrepareVideoRecordingCallback = null;
        this.mStartVideoRecordingCallback = null;
        this.mStopVideoRecordingCallback = null;
        this.mPrepareSuperSlowRecordingCallback = null;
        this.mStartSuperSlowRecordingCallback = null;
        if (nativeIsDebugable()) {
            Log.e("BypassCamera", "CONSTRUCTOR : E");
        }
        this.mNativeInstancePointer = nativeInitialize(BypassCamera$Facing.access$000(bypassCamera$Facing));
        if (this.mNativeInstancePointer == -1) {
            throw new RuntimeException("Failed to nativeInitialize().");
        }
        if (nativeIsDebugable()) {
            Log.e("BypassCamera", "NativeInstanceHead=" + this.mNativeInstancePointer);
        }
        if (nativeIsDebugable()) {
            Log.e("BypassCamera", "CONSTRUCTOR : X");
        }
    }

    public static void loadNativeLibrary() {
        synchronized (sBypassCameraLock) {
            if (!sIsBypassCameraLoaded) {
                boolean z = Build.TYPE.equals("eng") || Build.TYPE.equals("userdebug");
                if (z) {
                    Log.e("TraceLog", "[CamKPI] [UPTIME=] [BypassCamera][" + Thread.currentThread().getName() + "] : loadLibrary() : E");
                }
                System.loadLibrary("imageprocessorjni");
                if (z) {
                    Log.e("TraceLog", "[CamKPI] [UPTIME=] [BypassCamera][" + Thread.currentThread().getName() + "] : loadLibrary() : X");
                }
                sIsBypassCameraLoaded = true;
            }
        }
    }

    public static BypassCamera open(BypassCamera$Facing bypassCamera$Facing, Handler handler) {
        BypassCamera bypassCamera;
        loadNativeLibrary();
        synchronized (sBypassCameraLock) {
            if (!sIsBypassCameraOpened) {
                bypassCamera = new BypassCamera(bypassCamera$Facing, handler);
                sIsBypassCameraOpened = true;
            } else {
                throw new RuntimeException("BypassCamera is already opened.");
            }
        }
        return bypassCamera;
    }

    public static BypassCamera open(BypassCamera$Facing bypassCamera$Facing, ExecutorService executorService) {
        BypassCamera bypassCamera;
        loadNativeLibrary();
        synchronized (sBypassCameraLock) {
            if (!sIsBypassCameraOpened) {
                bypassCamera = new BypassCamera(bypassCamera$Facing, executorService);
                sIsBypassCameraOpened = true;
            } else {
                throw new RuntimeException("BypassCamera is already opened.");
            }
        }
        return bypassCamera;
    }

    public void setPhotoCallbacks(BypassCamera$SnapshotReadyCallback bypassCamera$SnapshotReadyCallback, BypassCamera$SnapshotCallback bypassCamera$SnapshotCallback, BypassCamera$SnapshotFreeCallback bypassCamera$SnapshotFreeCallback) {
        this.mSnapshotReadyCallback = bypassCamera$SnapshotReadyCallback;
        this.mSnapshotCallback = bypassCamera$SnapshotCallback;
        this.mSnapshotFreeCallback = bypassCamera$SnapshotFreeCallback;
    }

    public void setBurstCallbacks(BypassCamera$PrepareBurstCallback bypassCamera$PrepareBurstCallback, BypassCamera$FinishBurstCallback bypassCamera$FinishBurstCallback) {
        this.mPrepareBurstCallback = bypassCamera$PrepareBurstCallback;
        this.mFinishBurstCallback = bypassCamera$FinishBurstCallback;
    }

    public void setVideoCallbacks(BypassCamera$PrepareVideoRecordingCallback bypassCamera$PrepareVideoRecordingCallback, BypassCamera$StartVideoRecordingCallback bypassCamera$StartVideoRecordingCallback, BypassCamera$StopVideoRecordingCallback bypassCamera$StopVideoRecordingCallback) {
        this.mPrepareVideoRecordingCallback = bypassCamera$PrepareVideoRecordingCallback;
        this.mStartVideoRecordingCallback = bypassCamera$StartVideoRecordingCallback;
        this.mStopVideoRecordingCallback = bypassCamera$StopVideoRecordingCallback;
    }

    public void setSuperSlowCallbacks(BypassCamera$PrepareSuperSlowRecordingCallback bypassCamera$PrepareSuperSlowRecordingCallback, BypassCamera$StartSuperSlowRecordingCallback bypassCamera$StartSuperSlowRecordingCallback) {
        this.mPrepareSuperSlowRecordingCallback = bypassCamera$PrepareSuperSlowRecordingCallback;
        this.mStartSuperSlowRecordingCallback = bypassCamera$StartSuperSlowRecordingCallback;
    }

    public void close() {
        if (nativeIsDebugable()) {
            Log.e("BypassCamera", "close() : E");
        }
        synchronized (this) {
            this.mSnapshotReadyCallback = null;
            this.mSnapshotCallback = null;
            this.mSnapshotFreeCallback = null;
            this.mStartVideoRecordingCallback = null;
            this.mStopVideoRecordingCallback = null;
            this.mPrepareBurstCallback = null;
            this.mFinishBurstCallback = null;
        }
        nativeFinalize(this.mNativeInstancePointer);
        if (nativeIsDebugable()) {
            Log.e("BypassCamera", "NativeInstanceHead=" + this.mNativeInstancePointer);
        }
        this.mNativeInstancePointer = -1L;
        synchronized (sBypassCameraLock) {
            sIsBypassCameraOpened = false;
        }
        if (nativeIsDebugable()) {
            Log.e("BypassCamera", "close() : X");
        }
    }

    public void changeToPhotoMode(BypassCamera$PhotoMode bypassCamera$PhotoMode, Size size, Size size2, int i) throws BypassCameraTimeoutException {
        switch (nativeChangeToPhotoMode(this.mNativeInstancePointer, BypassCamera$PhotoMode.access$100(bypassCamera$PhotoMode), size.getWidth(), size.getHeight(), size2.getWidth(), size2.getHeight(), i)) {
            case -2:
                throw new BypassCameraTimeoutException("Timed out to change mode to : " + bypassCamera$PhotoMode);
            case -1:
                this.mNativeInstancePointer = -1L;
                throw new RuntimeException("Failed to change mode to : " + bypassCamera$PhotoMode);
            default:
                return;
        }
    }

    public void changeToVideoMode(BypassCamera$VideoMode bypassCamera$VideoMode, Size size, Size size2, int i) throws BypassCameraTimeoutException {
        switch (nativeChangeToVideoMode(this.mNativeInstancePointer, BypassCamera$VideoMode.access$200(bypassCamera$VideoMode), size.getWidth(), size.getHeight(), size2.getWidth(), size2.getHeight(), i)) {
            case -2:
                throw new BypassCameraTimeoutException("Timed out to change mode to : " + bypassCamera$VideoMode);
            case -1:
                this.mNativeInstancePointer = -1L;
                throw new RuntimeException("Failed to change mode to : " + bypassCamera$VideoMode);
            default:
                return;
        }
    }

    public void changeToSuperSlowMode(BypassCamera$SuperSlowMode bypassCamera$SuperSlowMode, Size size, Size size2, BypassCamera$SuperSlowRecordingParameters bypassCamera$SuperSlowRecordingParameters) {
        throw new RuntimeException("Not implemented.");
    }

    public void changeToSuperSlowMode(BypassCamera$SuperSlowMode bypassCamera$SuperSlowMode, Size size, Size size2, int i, BypassCamera$SuperSlowRecordingParameters bypassCamera$SuperSlowRecordingParameters) throws BypassCameraTimeoutException {
        switch (nativeChangeToSuperSlowMode(this.mNativeInstancePointer, BypassCamera$SuperSlowMode.access$300(bypassCamera$SuperSlowMode), size.getWidth(), size.getHeight(), size2.getWidth(), size2.getHeight(), i, bypassCamera$SuperSlowRecordingParameters.fps, bypassCamera$SuperSlowRecordingParameters.frameNum)) {
            case -2:
                throw new BypassCameraTimeoutException("Timed out to change mode to : " + bypassCamera$SuperSlowMode);
            case -1:
                this.mNativeInstancePointer = -1L;
                throw new RuntimeException("Failed to change mode to : " + bypassCamera$SuperSlowMode);
            default:
                return;
        }
    }

    public void requestPrepareSnapshot(Surface surface, int i) {
        if (nativeRequestPrepareSnapshot(this.mNativeInstancePointer, surface, i) != 0) {
            this.mNativeInstancePointer = -1L;
            throw new RuntimeException("Failed to requestPrepareSnapshot().");
        }
    }

    public void requestSnapshotReady() {
        if (nativeRequestSnapshotReady(this.mNativeInstancePointer) != 0) {
            throw new RuntimeException("Failed to nativeRequestSnapshotReady().");
        }
    }

    public int requestSnapshot(BypassCamera$SnapshotInfo bypassCamera$SnapshotInfo) {
        if (nativeRequestSnapshot(this.mNativeInstancePointer, bypassCamera$SnapshotInfo.isValid, bypassCamera$SnapshotInfo.exifGpsInfo.isExifGpsEnabled, bypassCamera$SnapshotInfo.exifGpsInfo.exifGpsLatitude, bypassCamera$SnapshotInfo.exifGpsInfo.exifGpsLongitude, bypassCamera$SnapshotInfo.exifGpsInfo.exifGpsAltitude, bypassCamera$SnapshotInfo.exifGpsInfo.isExifGpsProcMethodEnabled, bypassCamera$SnapshotInfo.exifGpsInfo.exifGpsProcMethod, bypassCamera$SnapshotInfo.exifGpsInfo.isExifGpsTimestampEnabled, bypassCamera$SnapshotInfo.exifGpsInfo.exifGpsTimestamp, bypassCamera$SnapshotInfo.exifOrientationInfo.isExifOrientationEnabled, bypassCamera$SnapshotInfo.exifOrientationInfo.exifOrientation, bypassCamera$SnapshotInfo.exifThumbnailInfo.isExifThumbEnabled, bypassCamera$SnapshotInfo.exifThumbnailInfo.exifThumbWidth, bypassCamera$SnapshotInfo.exifThumbnailInfo.exifThumbHeight, bypassCamera$SnapshotInfo.exifThumbnailInfo.exifThumbQuality, bypassCamera$SnapshotInfo.quality, bypassCamera$SnapshotInfo.isQualityAutoControlEnabled, bypassCamera$SnapshotInfo.captureNum) != 0) {
            throw new RuntimeException("Failed to nativeRequestSnapshot().");
        }
        return nativeGetLatestRequestId(this.mNativeInstancePointer);
    }

    public void requestSnapshotFree() {
        if (nativeRequestSnapshotFree(this.mNativeInstancePointer) != 0) {
            throw new RuntimeException("Failed to nativeRequestSnapshotFree().");
        }
    }

    public void requestPrepareVideoRecording(Surface surface, BypassCamera$RecordingParameters bypassCamera$RecordingParameters) {
        if (nativeRequestPrepareVideoRecording(this.mNativeInstancePointer, surface, bypassCamera$RecordingParameters.dataSpace.colorStandard, bypassCamera$RecordingParameters.dataSpace.colorTransfer, bypassCamera$RecordingParameters.dataSpace.colorRange) != 0) {
            this.mNativeInstancePointer = -1L;
            throw new RuntimeException("Failed to nativeRequestPrepareVideoRecording().");
        }
    }

    public void requestStartVideoRecording() {
        if (nativeRequestStartVideoRecording(this.mNativeInstancePointer) != 0) {
            this.mNativeInstancePointer = -1L;
            throw new RuntimeException("Failed to nativeRequestStartVideoRecording().");
        }
    }

    public void requestStopVideoRecording() {
        if (nativeRequestStopVideoRecording(this.mNativeInstancePointer) != 0) {
            this.mNativeInstancePointer = -1L;
            throw new RuntimeException("Failed to nativeRequestStopVideoRecording().");
        }
    }

    public void requestPrepareSuperSlowRecording(Surface surface, BypassCamera$RecordingParameters bypassCamera$RecordingParameters) {
        if (nativeRequestPrepareSuperSlowRecording(this.mNativeInstancePointer, surface, bypassCamera$RecordingParameters.dataSpace.colorStandard, bypassCamera$RecordingParameters.dataSpace.colorTransfer, bypassCamera$RecordingParameters.dataSpace.colorRange) != 0) {
            this.mNativeInstancePointer = -1L;
            throw new RuntimeException("Failed to nativeRequestPrepareSuperSlowRecording().");
        }
    }

    public void requestStartSuperSlowRecording() {
        if (nativeRequestStartSuperSlowRecording(this.mNativeInstancePointer) != 0) {
            this.mNativeInstancePointer = -1L;
            throw new RuntimeException("Failed to nativeRequestStartSuperSlowRecording().");
        }
    }

    public void requestPrepareBurstShot() {
        if (nativeRequestPrepareBurstShot(this.mNativeInstancePointer) != 0) {
            this.mNativeInstancePointer = -1L;
            throw new RuntimeException("Failed to nativeRequestPrepareBurstShot().");
        }
    }

    public void requestFinishBurstShot() {
        if (nativeRequestFinishBurstShot(this.mNativeInstancePointer) != 0) {
            this.mNativeInstancePointer = -1L;
            throw new RuntimeException("Failed to nativeRequestFinishBurstShot().");
        }
    }

    public static BypassCameraParameters getCaps(BypassCamera$Facing bypassCamera$Facing) {
        loadNativeLibrary();
        BypassCameraParameters$Capability bypassCameraParameters$Capability = new BypassCameraParameters$Capability();
        if (nativeGetCaps(BypassCamera$Facing.access$000(bypassCamera$Facing), bypassCameraParameters$Capability) != 0) {
            throw new RuntimeException("Failed to nativeGetCaps().");
        }
        BypassCameraParameters bypassCameraParameters = new BypassCameraParameters();
        bypassCameraParameters.set("vs-values", createListValue(bypassCameraParameters$Capability.mVideoStabilizationMode));
        bypassCameraParameters.set("video-high-frame-rate-configuration", createSupportedInfoListValue(bypassCameraParameters$Capability.mHighFrameRateSupportedInfoList));
        bypassCameraParameters.set("vs-steady-shot-configuration", createSupportedInfoListValue(bypassCameraParameters$Capability.mSteadyShotSupportedInfoList));
        bypassCameraParameters.set("vs-intelligent-active-configuration", createSupportedInfoListValue(bypassCameraParameters$Capability.mIntelligentActiveSupportedInfoList));
        bypassCameraParameters.set("super-slow-values", createListValue(bypassCameraParameters$Capability.mSuperSlowMode));
        bypassCameraParameters.set("burst-values", createListValue(bypassCameraParameters$Capability.mBurstMode));
        bypassCameraParameters.set("video-hdr-values", createListValue(bypassCameraParameters$Capability.mVideoHdrMode));
        bypassCameraParameters.set("video-super-slow-configuration", createSuperSlowSupportedInfoListValue(bypassCameraParameters$Capability.mSuperSlowSupportedInfoList, bypassCameraParameters$Capability.mSuperSlowFrameNumList));
        bypassCameraParameters.set("climax-recognition-values", createListValue(bypassCameraParameters$Capability.mClimaxRecognitionMode));
        return bypassCameraParameters;
    }

    private static String createSupportedInfoListValue(List<BypassCameraParameters$Capability$SupportedInfo> list) {
        if (list.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (BypassCameraParameters$Capability$SupportedInfo bypassCameraParameters$Capability$SupportedInfo : list) {
            if (bypassCameraParameters$Capability$SupportedInfo != list.get(0)) {
                sb.append(',');
            }
            sb.append(bypassCameraParameters$Capability$SupportedInfo.width);
            sb.append('x');
            sb.append(bypassCameraParameters$Capability$SupportedInfo.height);
            sb.append('/');
            sb.append(bypassCameraParameters$Capability$SupportedInfo.fps);
        }
        return sb.toString();
    }

    private static String createSuperSlowSupportedInfoListValue(List<BypassCameraParameters$Capability$SupportedInfo> list, List<Integer> list2) {
        if (list.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            BypassCameraParameters$Capability$SupportedInfo bypassCameraParameters$Capability$SupportedInfo = list.get(i);
            int iIntValue = list2.get(i).intValue();
            if (i > 0) {
                sb.append(',');
            }
            sb.append(bypassCameraParameters$Capability$SupportedInfo.width);
            sb.append('x');
            sb.append(bypassCameraParameters$Capability$SupportedInfo.height);
            sb.append('@');
            sb.append(iIntValue);
            sb.append('/');
            sb.append(bypassCameraParameters$Capability$SupportedInfo.fps);
        }
        return sb.toString();
    }

    private static String createListValue(List<String> list) {
        if (list.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (String str : list) {
            if (str != list.get(0)) {
                sb.append(',');
            }
            sb.append(str);
        }
        return sb.toString();
    }

    public void setConfig(BypassCameraParameters bypassCameraParameters) {
        if (nativeSetConfig(this.mNativeInstancePointer, bypassCameraParameters) != 0) {
            this.mNativeInstancePointer = -1L;
            throw new RuntimeException("Failed to nativeSetConfig().");
        }
    }

    private final void callbackFromNative(int i, int i2, int i3, boolean z, boolean z2, boolean z3, int i4, int i5, int i6) {
        if (nativeIsDebugable()) {
            Log.e("BypassCamera", "callbackFromNative() : E");
        }
        if (i == 10) {
            if (nativeIsDebugable()) {
                Log.e("BypassCamera", "TYPE = CALLBACK_TYPE_ON_SNAPSHOT_READY_DONE");
            }
            callbackToClient(new BypassCamera$CallbackSnapshotReadyTask(this, z2, z, z3, i4, i5, i6));
        } else if (i == 30) {
            if (nativeIsDebugable()) {
                Log.e("BypassCamera", "TYPE = CALLBACK_TYPE_ON_SNAPSHOT_FREE_DONE");
            }
            callbackToClient(new BypassCamera$CallbackSnapshotFreeTask(this, null));
        } else if (i == 40) {
            if (nativeIsDebugable()) {
                Log.e("BypassCamera", "TYPE = CALLBACK_TYPE_ON_PREPARE_BURST_DONE");
            }
            callbackToClient(new BypassCamera$CallbackPrepareBurstTask(this, z2));
        } else if (i != 50) {
            switch (i) {
                case 20:
                    if (nativeIsDebugable()) {
                        Log.e("BypassCamera", "TYPE = CALLBACK_TYPE_ON_SHUTTER_DONE");
                    }
                    callbackToClient(new BypassCamera$CallbackShutterTask(this, i2, i3, z));
                    break;
                case 21:
                    if (nativeIsDebugable()) {
                        Log.e("BypassCamera", "TYPE = CALLBACK_TYPE_ON_SNAPSHOT_DONE");
                    }
                    callbackToClient(new BypassCamera$CallbackSnapshotTask(this, i2));
                    break;
            }
        } else {
            if (nativeIsDebugable()) {
                Log.e("BypassCamera", "TYPE = CALLBACK_TYPE_ON_FINISH_BURST_DONE");
            }
            callbackToClient(new BypassCamera$CallbackFinishBurstTask(this, null));
        }
        if (nativeIsDebugable()) {
            Log.e("BypassCamera", "callbackFromNative() : X");
        }
    }

    private void callbackToClient(Runnable runnable) {
        if (this.mCallbackExecutorService == null && this.mCallbackHandler == null) {
            Log.e("BypassCamera", "callbackToClient() : Callback object is not installed.");
            return;
        }
        if (this.mCallbackExecutorService != null && !this.mCallbackExecutorService.isShutdown()) {
            this.mCallbackExecutorService.execute(runnable);
        } else if (this.mCallbackHandler != null) {
            this.mCallbackHandler.post(runnable);
        } else {
            Log.w("BypassCamera", "callbackToClient() : Callback is not invoked.");
        }
    }

    private final void callbackFromNativeVideo(int i) {
        if (nativeIsDebugable()) {
            Log.e("BypassCamera", "callbackFromNativeVideo() : E");
        }
        switch (i) {
            case 0:
                callbackToClient(new BypassCamera$CallbackStartVideoRecordingTask(this, null));
                if (nativeIsDebugable()) {
                    Log.e("BypassCamera", "TYPE = CALLBACK_TYPE_ON_START_VIDEO_RECORDING_DONE");
                }
                break;
            case 1:
                callbackToClient(new BypassCamera$CallbackStopVideoRecordingTask(this, null));
                if (nativeIsDebugable()) {
                    Log.e("BypassCamera", "TYPE = CALLBACK_TYPE_ON_STOP_VIDEO_RECORDING_DONE");
                }
                break;
            case 2:
                callbackToClient(new BypassCamera$CallbackPrepareVideoRecordingTask(this, null));
                if (nativeIsDebugable()) {
                    Log.e("BypassCamera", "TYPE = CALLBACK_TYPE_ON_PREPARE_VIDEO_RECORDING_DONE");
                }
                break;
            case 3:
                callbackToClient(new BypassCamera$CallbackStartSuperSlowRecordingTask(this, null));
                if (nativeIsDebugable()) {
                    Log.e("BypassCamera", "TYPE = CALLBACK_TYPE_ON_START_SUPER_SLOW_RECORDING_DONE");
                }
                break;
            case 4:
                callbackToClient(new BypassCamera$CallbackPrepareSuperSlowRecordingTask(this, null));
                if (nativeIsDebugable()) {
                    Log.e("BypassCamera", "TYPE = CALLBACK_TYPE_ON_PREPARE_SUPER_SLOW_RECORDING_DONE");
                }
                break;
        }
        if (nativeIsDebugable()) {
            Log.e("BypassCamera", "callbackFromNativeVideo() : X");
        }
    }
}

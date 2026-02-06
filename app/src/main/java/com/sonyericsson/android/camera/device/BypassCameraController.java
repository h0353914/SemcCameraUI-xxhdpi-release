package com.sonyericsson.android.camera.device;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Rect;
import android.media.ImageReader;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.PowerManager;
import android.os.PowerManager$WakeLock;
import android.os.SystemClock;
import android.support.annotation.WorkerThread;
import android.util.Size;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.FastCapture;
import com.sonyericsson.android.camera.configuration.parameters.PredictiveCapture;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.UserSettingValue;
import com.sonyericsson.android.camera.configuration.parameters.UserSettingValueHolder;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.configuration.parameters.VideoStabilizer;
import com.sonyericsson.android.camera.recorder.utility.FpsMonitor;
import com.sonyericsson.android.camera.setting.SharedPreferencesAccessor;
import com.sonyericsson.android.camera.setting.UserSettings;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.CapturePerformanceLogger;
import com.sonyericsson.android.camera.util.PerfLog;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.cameracommon.device.CommonPlatformDependencyResolver;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusCommon;
import com.sonyericsson.cameracommon.status.EachCameraStatusPublisher;
import com.sonyericsson.cameracommon.status.eachcamera.DeviceStatus;
import com.sonyericsson.cameracommon.status.eachcamera.DeviceStatus$Value;
import com.sonyericsson.cameracommon.storage.RequestFactory$PhotoSavingRequestBuilder;
import com.sonyericsson.cameracommon.storage.SavingTaskManager$SavedFileType;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$VideoMode;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCameraParameters;
import java.util.Deque;
import java.util.LinkedList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

class BypassCameraController {
    private static final int BYPASSCAMERA_IMAGE_READER_BUFFER_NUM = 1;
    private static final int BYPASSCAMERA_MIN_CAPTURE_BUFFER_NUM = 2;
    private static final int BYPASS_CAMERA_CALLBACK_TIMEOUT_MILLIS = 2000;
    private static final String CLOSE_BYPASS_CAMERA_TASK_WAKE_LOCK_TAG = "CameraApp";
    private static final long IMAGE_READER_PREPARED_WAIT_TIME_MILLIS = 1000;
    private static final String THREAD_NAME = "BypassCamera";
    private static final long TIMEOUT_WAIT_FOR_ALL_SNAPSHOT_DONE_MILLIS_REC = 3000;
    private final Context mApplicationContext;
    private final BypassCameraController$BypassCameraControllerCallback mCallback;
    private final CameraDeviceHandler$CameraDeviceHandlerInquirer mCameraDeviceHandler;
    private PowerManager$WakeLock mCloseBypassCameraWakeLock;
    private final FpsMonitor mImageFpsMonitor;
    private Handler mImageReaderHandler;
    private volatile CountDownLatch mImageReaderPreparedLatch;
    private final Object mImageReaderPreparedLockObject;
    private CountDownLatch mImageReaderReadyLatch;
    private final Object mImageReaderReadyLockObject;
    private volatile BypassCameraController$CaptureImageReaderRequest mPrevCaptureImageReaderRequest;
    private final FpsMonitor mShutterFpsMonitor;
    private CountDownLatch mWaitForAllSnapshotLock;
    private CountDownLatch mWaitForSnapshotReadyLock;
    private final Object mWaitForSnapshotReadyLockObject;
    private volatile BypassCamera mBypassCamera = null;
    private BypassCameraParameters mBypassCameraParameters = null;
    private BypassCameraController$SnapshotCallbackImpl mSnapshotCallback = null;
    private ExecutorService mBypassCameraRequestExecutor = null;
    private RequestFactory$PhotoSavingRequestBuilder mPreCaptureResult = null;
    private boolean mIsApplyBypassCameraModeRequired = false;
    private int mCapturingBufferNum = -1;
    private volatile ImageReader mCaptureImageReader = null;
    private boolean mIsSnapshotReadyWaiting = false;
    private boolean mIsSnapshotReady = false;
    private final Deque<TakenStatusCommon> mRemainRequestQueue = new LinkedList();
    private final Deque<RequestFactory$PhotoSavingRequestBuilder> mSavingPhotoRequestQueue = new LinkedList();

    private boolean isModified(UserSettingValue userSettingValue, UserSettingValue userSettingValue2) {
        return userSettingValue == null || userSettingValue2 == null || userSettingValue != userSettingValue2;
    }

    static /* synthetic */ BypassCameraController$BypassCameraControllerCallback access$000(BypassCameraController bypassCameraController) {
        return bypassCameraController.mCallback;
    }

    static /* synthetic */ FpsMonitor access$1000(BypassCameraController bypassCameraController) {
        return bypassCameraController.mShutterFpsMonitor;
    }

    static /* synthetic */ FpsMonitor access$1100(BypassCameraController bypassCameraController) {
        return bypassCameraController.mImageFpsMonitor;
    }

    static /* synthetic */ BypassCamera access$1200(BypassCameraController bypassCameraController) {
        return bypassCameraController.mBypassCamera;
    }

    static /* synthetic */ BypassCamera access$1202(BypassCameraController bypassCameraController, BypassCamera bypassCamera) {
        bypassCameraController.mBypassCamera = bypassCamera;
        return bypassCamera;
    }

    static /* synthetic */ Context access$1300(BypassCameraController bypassCameraController) {
        return bypassCameraController.getApplicationContext();
    }

    static /* synthetic */ CameraDeviceHandler$CameraDeviceHandlerInquirer access$1400(BypassCameraController bypassCameraController) {
        return bypassCameraController.mCameraDeviceHandler;
    }

    static /* synthetic */ void access$1500(BypassCameraController bypassCameraController, boolean z) {
        bypassCameraController.setSnapshotReadyWaiting(z);
    }

    static /* synthetic */ void access$1600(BypassCameraController bypassCameraController) {
        bypassCameraController.awaitImageReaderReady();
    }

    static /* synthetic */ ExecutorService access$1700(BypassCameraController bypassCameraController) {
        return bypassCameraController.mBypassCameraRequestExecutor;
    }

    static /* synthetic */ ExecutorService access$1702(BypassCameraController bypassCameraController, ExecutorService executorService) {
        bypassCameraController.mBypassCameraRequestExecutor = executorService;
        return executorService;
    }

    static /* synthetic */ RequestFactory$PhotoSavingRequestBuilder access$1800(BypassCameraController bypassCameraController, ImageReader imageReader) {
        return bypassCameraController.dequeueSavingPhotoRequestAndAttachImageReader(imageReader);
    }

    static /* synthetic */ boolean access$1900(BypassCameraController bypassCameraController, SharedPreferences sharedPreferences, UserSettings userSettings, CapturingMode capturingMode, CameraParameters cameraParameters) {
        return bypassCameraController.preloadSettings(sharedPreferences, userSettings, capturingMode, cameraParameters);
    }

    static /* synthetic */ BypassCameraParameters access$2000(BypassCameraController bypassCameraController) {
        return bypassCameraController.mBypassCameraParameters;
    }

    static /* synthetic */ BypassCameraParameters access$2002(BypassCameraController bypassCameraController, BypassCameraParameters bypassCameraParameters) {
        bypassCameraController.mBypassCameraParameters = bypassCameraParameters;
        return bypassCameraParameters;
    }

    static /* synthetic */ BypassCameraController$SnapshotCallbackImpl access$2100(BypassCameraController bypassCameraController) {
        return bypassCameraController.mSnapshotCallback;
    }

    static /* synthetic */ BypassCameraController$SnapshotCallbackImpl access$2102(BypassCameraController bypassCameraController, BypassCameraController$SnapshotCallbackImpl bypassCameraController$SnapshotCallbackImpl) {
        bypassCameraController.mSnapshotCallback = bypassCameraController$SnapshotCallbackImpl;
        return bypassCameraController$SnapshotCallbackImpl;
    }

    static /* synthetic */ BypassCamera$VideoMode access$2700(BypassCameraController bypassCameraController, CameraInfo$CameraId cameraInfo$CameraId, String str, VideoHdr videoHdr) {
        return bypassCameraController.getVideoMode(cameraInfo$CameraId, str, videoHdr);
    }

    static /* synthetic */ Size access$2800(BypassCameraController bypassCameraController, Rect rect) {
        return bypassCameraController.toAndroidUtilSize(rect);
    }

    static /* synthetic */ void access$2900(BypassCameraController bypassCameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        bypassCameraController.handleTimeout(cameraDeviceHandler$CameraSessionId);
    }

    static /* synthetic */ void access$3100(BypassCameraController bypassCameraController) {
        bypassCameraController.createSnapshotReadyCountDownLatch();
    }

    static /* synthetic */ CountDownLatch access$3200(BypassCameraController bypassCameraController) {
        return bypassCameraController.mWaitForSnapshotReadyLock;
    }

    static /* synthetic */ CountDownLatch access$3202(BypassCameraController bypassCameraController, CountDownLatch countDownLatch) {
        bypassCameraController.mWaitForSnapshotReadyLock = countDownLatch;
        return countDownLatch;
    }

    static /* synthetic */ void access$3300(BypassCameraController bypassCameraController) {
        bypassCameraController.finalizeCaptureImageReader();
    }

    static /* synthetic */ BypassCameraController$CaptureImageReaderRequest access$3400(BypassCameraController bypassCameraController) {
        return bypassCameraController.mPrevCaptureImageReaderRequest;
    }

    static /* synthetic */ BypassCameraController$CaptureImageReaderRequest access$3402(BypassCameraController bypassCameraController, BypassCameraController$CaptureImageReaderRequest bypassCameraController$CaptureImageReaderRequest) {
        bypassCameraController.mPrevCaptureImageReaderRequest = bypassCameraController$CaptureImageReaderRequest;
        return bypassCameraController$CaptureImageReaderRequest;
    }

    static /* synthetic */ boolean access$3500(BypassCameraController bypassCameraController) {
        return bypassCameraController.mIsSnapshotReady;
    }

    static /* synthetic */ boolean access$3502(BypassCameraController bypassCameraController, boolean z) {
        bypassCameraController.mIsSnapshotReady = z;
        return z;
    }

    static /* synthetic */ void access$3600(BypassCameraController bypassCameraController) {
        bypassCameraController.releaseCloseBypassCameraWakeLock();
    }

    static /* synthetic */ int access$3702(BypassCameraController bypassCameraController, int i) {
        bypassCameraController.mCapturingBufferNum = i;
        return i;
    }

    static /* synthetic */ Object access$4400(BypassCameraController bypassCameraController) {
        return bypassCameraController.mImageReaderReadyLockObject;
    }

    static /* synthetic */ CountDownLatch access$4500(BypassCameraController bypassCameraController) {
        return bypassCameraController.mImageReaderReadyLatch;
    }

    static /* synthetic */ CountDownLatch access$4502(BypassCameraController bypassCameraController, CountDownLatch countDownLatch) {
        bypassCameraController.mImageReaderReadyLatch = countDownLatch;
        return countDownLatch;
    }

    static /* synthetic */ void access$4600(BypassCameraController bypassCameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, BypassCameraController$CaptureImageReaderRequest bypassCameraController$CaptureImageReaderRequest, CountDownLatch countDownLatch) {
        bypassCameraController.prepareCaptureImageReader(cameraDeviceHandler$CameraSessionId, bypassCameraController$CaptureImageReaderRequest, countDownLatch);
    }

    static /* synthetic */ void access$4800(BypassCameraController bypassCameraController) {
        bypassCameraController.awaitImageReaderPrepared();
    }

    static /* synthetic */ void access$4900(BypassCameraController bypassCameraController, CountDownLatch countDownLatch) {
        bypassCameraController.unlockImageReaderReadyLatch(countDownLatch);
    }

    static /* synthetic */ Deque access$500(BypassCameraController bypassCameraController) {
        return bypassCameraController.mSavingPhotoRequestQueue;
    }

    static /* synthetic */ Object access$5000(BypassCameraController bypassCameraController) {
        return bypassCameraController.mImageReaderPreparedLockObject;
    }

    static /* synthetic */ CountDownLatch access$5100(BypassCameraController bypassCameraController) {
        return bypassCameraController.mImageReaderPreparedLatch;
    }

    static /* synthetic */ CountDownLatch access$5102(BypassCameraController bypassCameraController, CountDownLatch countDownLatch) {
        bypassCameraController.mImageReaderPreparedLatch = countDownLatch;
        return countDownLatch;
    }

    static /* synthetic */ void access$5200(BypassCameraController bypassCameraController) {
        bypassCameraController.finalizeCaptureImageReaderInternal();
    }

    static /* synthetic */ Handler access$5300(BypassCameraController bypassCameraController) {
        return bypassCameraController.mImageReaderHandler;
    }

    static /* synthetic */ void access$5400(BypassCameraController bypassCameraController, int i) {
        bypassCameraController.requestPrepareSnapshot(i);
    }

    static /* synthetic */ ImageReader access$600(BypassCameraController bypassCameraController) {
        return bypassCameraController.mCaptureImageReader;
    }

    static /* synthetic */ ImageReader access$602(BypassCameraController bypassCameraController, ImageReader imageReader) {
        bypassCameraController.mCaptureImageReader = imageReader;
        return imageReader;
    }

    static /* synthetic */ Deque access$700(BypassCameraController bypassCameraController) {
        return bypassCameraController.mRemainRequestQueue;
    }

    static /* synthetic */ String access$800(BypassCameraController bypassCameraController) {
        return bypassCameraController.dumpRequestQueueStatus();
    }

    static /* synthetic */ CountDownLatch access$900(BypassCameraController bypassCameraController) {
        return bypassCameraController.mWaitForAllSnapshotLock;
    }

    static /* synthetic */ CountDownLatch access$902(BypassCameraController bypassCameraController, CountDownLatch countDownLatch) {
        bypassCameraController.mWaitForAllSnapshotLock = countDownLatch;
        return countDownLatch;
    }

    private static String makeCountDownLatchInfo(String str, CountDownLatch countDownLatch) {
        if (countDownLatch == null) {
            return str + ": null";
        }
        return str + ":" + countDownLatch.getCount();
    }

    void dump(StringBuilder sb) {
        sb.append("mBypassCamera:" + this.mBypassCamera + "\n");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(makeCountDownLatchInfo("mWaitForAllSnapshotLock", this.mWaitForAllSnapshotLock));
        sb2.append("\n");
        sb.append(sb2.toString());
        sb.append(makeCountDownLatchInfo("mImageReaderReadyLatch", this.mImageReaderReadyLatch) + "\n");
        sb.append("mRemainRequestQueue:" + this.mRemainRequestQueue + "\n");
        sb.append("mSavingPhotoRequestQueue:" + this.mSavingPhotoRequestQueue + "\n");
        sb.append("mIsSnapshotReadyWaiting:" + this.mIsSnapshotReadyWaiting + "\n");
        sb.append("mCapturingBufferNum:" + this.mCapturingBufferNum + "\n");
        sb.append("mPreCaptureResult:" + this.mPreCaptureResult + "\n");
    }

    private Context getApplicationContext() {
        return this.mApplicationContext;
    }

    BypassCameraController(Context context, BypassCameraController$BypassCameraControllerCallback bypassCameraController$BypassCameraControllerCallback, CameraDeviceHandler$CameraDeviceHandlerInquirer cameraDeviceHandler$CameraDeviceHandlerInquirer) {
        this.mApplicationContext = context;
        HandlerThread handlerThread = new HandlerThread("ImageReader");
        handlerThread.start();
        this.mImageReaderHandler = new Handler(handlerThread.getLooper());
        this.mShutterFpsMonitor = new FpsMonitor(PredictiveCapture.AUTO.getCaptureNum());
        this.mImageFpsMonitor = new FpsMonitor(PredictiveCapture.AUTO.getCaptureNum());
        this.mImageReaderReadyLockObject = new Object();
        this.mImageReaderPreparedLockObject = new Object();
        this.mWaitForSnapshotReadyLockObject = new Object();
        this.mCameraDeviceHandler = cameraDeviceHandler$CameraDeviceHandlerInquirer;
        this.mCallback = bypassCameraController$BypassCameraControllerCallback;
    }

    private boolean preloadSettings(SharedPreferences sharedPreferences, UserSettings userSettings, CapturingMode capturingMode, CameraParameters cameraParameters) {
        boolean z;
        Rect optimalPreviewSize;
        Rect optimalPreviewSize2;
        String value;
        VideoHdr videoHdr;
        VideoSize defaultVideoSize;
        Rect pictureRect = null;
        if (userSettings != null) {
            if (capturingMode.isVideo()) {
                defaultVideoSize = (VideoSize) userSettings.get(UserSettingKey.VIDEO_SIZE);
                if (defaultVideoSize == null) {
                    defaultVideoSize = PlatformDependencyResolver.getDefaultVideoSize(capturingMode.getCameraId());
                }
                VideoStabilizer videoStabilizer = (VideoStabilizer) userSettings.get(UserSettingKey.VIDEO_STABILIZER);
                videoHdr = (VideoHdr) userSettings.get(UserSettingKey.VIDEO_HDR);
                value = videoStabilizer.getValue();
                if (videoHdr == VideoHdr.HDR_ON) {
                    optimalPreviewSize2 = PlatformCapability.getPreferredPreviewSizeForHdrVideo(capturingMode.getCameraId());
                } else {
                    Rect preferredPreviewSizeForVideo = PlatformCapability.getPreferredPreviewSizeForVideo(capturingMode.getCameraId());
                    if (preferredPreviewSizeForVideo.width() == 0 || preferredPreviewSizeForVideo.height() == 0) {
                        preferredPreviewSizeForVideo = PlatformDependencyResolver.getPreferredPreviewSizeFromCaptureSize(defaultVideoSize.getVideoRect());
                    }
                    optimalPreviewSize2 = CommonPlatformDependencyResolver.getOptimalVideoPreviewRect(defaultVideoSize.getVideoRect(), preferredPreviewSizeForVideo, PlatformCapability.getSupportedPreviewSizes(capturingMode.getCameraId()));
                }
            } else {
                Resolution defaultValue = (Resolution) userSettings.get(UserSettingKey.RESOLUTION);
                if (defaultValue == null) {
                    defaultValue = Resolution.getDefaultValue(capturingMode);
                }
                optimalPreviewSize2 = PlatformDependencyResolver.getOptimalPreviewSize(capturingMode.getCameraId(), capturingMode.getType(), defaultValue.getPictureRect());
                value = null;
                videoHdr = null;
                pictureRect = defaultValue.getPictureRect();
                defaultVideoSize = null;
            }
            cameraParameters.setVideoSize(defaultVideoSize);
            cameraParameters.setPreviewSize(optimalPreviewSize2);
            cameraParameters.setVideoStabilizer(value);
            cameraParameters.setPictureSize(pictureRect);
            cameraParameters.setVideoHdr(videoHdr);
            if (CamLog.DEBUG) {
                CamLog.d("Load settings from user settings. mode:" + capturingMode + " video:" + cameraParameters.getVideoSize() + " preview:" + cameraParameters.getPreviewSize() + " vs:" + cameraParameters.getVideoStabilizer() + " picture:" + cameraParameters.getPictureSize() + " modified:true");
            }
            return true;
        }
        if (sharedPreferences != null) {
            if (capturingMode.isVideo()) {
                UserSettingKey userSettingKey = UserSettingKey.VIDEO_SIZE;
                String strCreatePrefix = SharedPreferencesAccessor.createPrefix(userSettingKey.getCategory(), capturingMode, "");
                UserSettingValueHolder userSettingValueHolder = new UserSettingValueHolder(null);
                String string = sharedPreferences.getString(strCreatePrefix + userSettingKey, null);
                if (string != null) {
                    userSettingValueHolder.parseValueString(string);
                }
                VideoSize defaultVideoSize2 = (VideoSize) userSettingValueHolder.get();
                UserSettingKey userSettingKey2 = UserSettingKey.VIDEO_STABILIZER;
                String strCreatePrefix2 = SharedPreferencesAccessor.createPrefix(userSettingKey2.getCategory(), capturingMode, "");
                UserSettingValueHolder userSettingValueHolder2 = new UserSettingValueHolder(null);
                String string2 = sharedPreferences.getString(strCreatePrefix2 + userSettingKey2, null);
                if (string2 != null) {
                    userSettingValueHolder2.parseValueString(string2);
                }
                VideoStabilizer recommendedVideoStabilizerValue = (VideoStabilizer) userSettingValueHolder2.get();
                UserSettingKey userSettingKey3 = UserSettingKey.VIDEO_HDR;
                UserSettingValueHolder userSettingValueHolder3 = new UserSettingValueHolder(null);
                String string3 = sharedPreferences.getString(strCreatePrefix2 + userSettingKey3, null);
                if (string3 != null) {
                    userSettingValueHolder3.parseValueString(string3);
                }
                VideoHdr videoHdr2 = (VideoHdr) userSettingValueHolder3.get();
                if (defaultVideoSize2 == null) {
                    defaultVideoSize2 = PlatformDependencyResolver.getDefaultVideoSize(capturingMode.getCameraId());
                }
                if (recommendedVideoStabilizerValue == null) {
                    recommendedVideoStabilizerValue = VideoStabilizer.getRecommendedVideoStabilizerValue(getApplicationContext(), capturingMode, defaultVideoSize2);
                }
                if (videoHdr2 == VideoHdr.HDR_ON) {
                    optimalPreviewSize = PlatformCapability.getPreferredPreviewSizeForHdrVideo(capturingMode.getCameraId());
                } else {
                    optimalPreviewSize = PlatformDependencyResolver.getOptimalPreviewSize(capturingMode.getCameraId(), capturingMode.getType(), defaultVideoSize2.getVideoRect());
                }
                if (isModified(cameraParameters.getVideoSize(), defaultVideoSize2) || !recommendedVideoStabilizerValue.getValue().equals(cameraParameters.getVideoStabilizer()) || isModified(cameraParameters.getPreviewSize(), optimalPreviewSize)) {
                    cameraParameters.setVideoSize(defaultVideoSize2);
                    cameraParameters.setPreviewSize(optimalPreviewSize);
                    cameraParameters.setVideoStabilizer(recommendedVideoStabilizerValue.getValue());
                    cameraParameters.setPictureSize(null);
                    cameraParameters.setVideoHdr(videoHdr2);
                    z = true;
                }
                z = false;
            } else {
                UserSettingKey userSettingKey4 = UserSettingKey.RESOLUTION;
                String strCreatePrefix3 = SharedPreferencesAccessor.createPrefix(userSettingKey4.getCategory(), capturingMode, "");
                UserSettingValueHolder userSettingValueHolder4 = new UserSettingValueHolder(null);
                String string4 = sharedPreferences.getString(strCreatePrefix3 + userSettingKey4, null);
                if (string4 != null) {
                    userSettingValueHolder4.parseValueString(string4);
                }
                Resolution defaultValue2 = (Resolution) userSettingValueHolder4.get();
                if (defaultValue2 == null) {
                    defaultValue2 = Resolution.getDefaultValue(capturingMode);
                }
                Rect optimalPreviewSize3 = PlatformDependencyResolver.getOptimalPreviewSize(capturingMode.getCameraId(), capturingMode.getType(), defaultValue2.getPictureRect());
                if (isModified(cameraParameters.getPictureSize(), defaultValue2.getPictureRect()) || isModified(cameraParameters.getPreviewSize(), optimalPreviewSize3)) {
                    cameraParameters.setPictureSize(defaultValue2.getPictureRect());
                    cameraParameters.setPreviewSize(optimalPreviewSize3);
                    cameraParameters.setVideoStabilizer(null);
                    cameraParameters.setVideoSize(null);
                    cameraParameters.setVideoHdr(null);
                    z = true;
                }
                z = false;
            }
            if (CamLog.DEBUG) {
                CamLog.d("Load settings from shared-preference. mode:" + capturingMode + " video:" + cameraParameters.getVideoSize() + " preview:" + cameraParameters.getPreviewSize() + " vs:" + cameraParameters.getVideoStabilizer() + " picture:" + cameraParameters.getPictureSize() + " modified:" + z);
            }
            return z;
        }
        if (this.mCameraDeviceHandler.isVideo()) {
            VideoSize defaultVideoSize3 = PlatformDependencyResolver.getDefaultVideoSize(capturingMode.getCameraId());
            cameraParameters.setVideoSize(defaultVideoSize3);
            cameraParameters.setVideoStabilizer(VideoStabilizer.getRecommendedVideoStabilizerValue(getApplicationContext(), capturingMode, defaultVideoSize3).getValue());
            cameraParameters.setPreviewSize(PlatformDependencyResolver.getOptimalPreviewSize(capturingMode.getCameraId(), capturingMode.getType(), defaultVideoSize3.getVideoRect()));
            cameraParameters.setPictureSize(null);
        } else {
            cameraParameters.setPictureSize(Resolution.getDefaultValue(capturingMode).getPictureRect());
            cameraParameters.setPreviewSize(PlatformDependencyResolver.getOptimalPreviewSize(capturingMode.getCameraId(), capturingMode.getType(), cameraParameters.getPictureSize()));
            cameraParameters.setVideoStabilizer(null);
            cameraParameters.setVideoSize(null);
        }
        if (CamLog.DEBUG) {
            CamLog.d("Load settings from camera device. mode:" + capturingMode + " video:" + cameraParameters.getVideoSize() + " preview:" + cameraParameters.getPreviewSize() + " vs:" + cameraParameters.getVideoStabilizer() + " picture:" + cameraParameters.getPictureSize() + " modified:true");
        }
        return true;
    }

    private boolean isModified(Rect rect, Rect rect2) {
        return rect == null || rect2 == null || rect.width() != rect2.width() || rect.height() != rect2.height();
    }

    private String dumpRequestQueueStatus() {
        return "requests [" + this.mSavingPhotoRequestQueue.size() + ',' + this.mRemainRequestQueue.size() + ']';
    }

    private CountDownLatch createSavingPhotoRemainCountDownLatch() {
        synchronized (this.mSavingPhotoRequestQueue) {
            if (this.mWaitForAllSnapshotLock != null && this.mWaitForAllSnapshotLock.getCount() != 0) {
                return this.mWaitForAllSnapshotLock;
            }
            if (CamLog.DEBUG) {
                CamLog.d(dumpRequestQueueStatus());
            }
            if (this.mSavingPhotoRequestQueue.size() == 0 && this.mRemainRequestQueue.size() == 0) {
                return null;
            }
            return new CountDownLatch(this.mSavingPhotoRequestQueue.size() + this.mRemainRequestQueue.size());
        }
    }

    void enqueueSavingPhotoRequest(RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder) {
        synchronized (this.mSavingPhotoRequestQueue) {
            this.mSavingPhotoRequestQueue.add(requestFactory$PhotoSavingRequestBuilder);
            if (CamLog.DEBUG) {
                CamLog.d(dumpRequestQueueStatus());
            }
        }
    }

    void requestSnapshot(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder, int i) {
        CameraParameters parameters = this.mCameraDeviceHandler.getParameters(cameraDeviceHandler$CameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("Camera is not available.");
                return;
            }
            return;
        }
        CapturePerformanceLogger.create(requestFactory$PhotoSavingRequestBuilder).startSnapshot = SystemClock.uptimeMillis();
        synchronized (this.mSavingPhotoRequestQueue) {
            if (this.mBypassCamera != null) {
                int iMin = Math.min(this.mCapturingBufferNum - getRemainSavingPhotoRequestCount(), i);
                PerfLog.BYPASSCAMERA_REQUEST_SNAPSHOT.transit();
                this.mCameraDeviceHandler.postCameraDeviceThread(new BypassCameraController$RequestSnapshotTask(this, cameraDeviceHandler$CameraSessionId, requestFactory$PhotoSavingRequestBuilder, iMin, null));
                enqueueSavingPhotoRequest(requestFactory$PhotoSavingRequestBuilder);
            } else {
                CamLog.w("requestSnapshot() mBypassCamera == null");
            }
        }
        new EachCameraStatusPublisher(getApplicationContext(), parameters.getCameraId()).put(new DeviceStatus(requestFactory$PhotoSavingRequestBuilder.mCommonStatus.savedFileType == SavingTaskManager$SavedFileType.PHOTO_DURING_REC ? DeviceStatus$Value.PICTURE_TAKING_DURING_VIDEO_RECORDING : DeviceStatus$Value.PICTURE_TAKING)).publish();
    }

    void requestPrepareBurstShot(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        this.mCameraDeviceHandler.postCameraDeviceThread(new BypassCameraController$RequestPrepareBurstShotTask(this, cameraDeviceHandler$CameraSessionId, null));
    }

    void requestFinishBurstShot(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        this.mCameraDeviceHandler.postCameraDeviceThread(new BypassCameraController$RequestFinishBurstShotTask(this, cameraDeviceHandler$CameraSessionId, null));
    }

    private RequestFactory$PhotoSavingRequestBuilder dequeueSavingPhotoRequestAndAttachImageReader(ImageReader imageReader) {
        RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilderPoll;
        synchronized (this.mSavingPhotoRequestQueue) {
            requestFactory$PhotoSavingRequestBuilderPoll = this.mSavingPhotoRequestQueue.poll();
            if (requestFactory$PhotoSavingRequestBuilderPoll != null) {
                this.mRemainRequestQueue.add(requestFactory$PhotoSavingRequestBuilderPoll.mCommonStatus);
                requestFactory$PhotoSavingRequestBuilderPoll.attachImageReader(imageReader, new BypassCameraController$OnImageReaderDetachedListenerImpl(this, null));
            }
            if (CamLog.DEBUG) {
                CamLog.d(dumpRequestQueueStatus());
            }
        }
        return requestFactory$PhotoSavingRequestBuilderPoll;
    }

    RequestFactory$PhotoSavingRequestBuilder peekLastSavingPhotoRequest() {
        RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilderPeekLast;
        synchronized (this.mSavingPhotoRequestQueue) {
            requestFactory$PhotoSavingRequestBuilderPeekLast = this.mSavingPhotoRequestQueue.peekLast();
            if (CamLog.DEBUG) {
                CamLog.d(dumpRequestQueueStatus());
            }
        }
        return requestFactory$PhotoSavingRequestBuilderPeekLast;
    }

    boolean isSnapshotRunning() {
        boolean z;
        synchronized (this.mSavingPhotoRequestQueue) {
            if (CamLog.DEBUG) {
                CamLog.d(dumpRequestQueueStatus());
            }
            z = this.mSavingPhotoRequestQueue.size() > 0;
        }
        return z;
    }

    int getRemainSavingPhotoRequestCount() {
        int size;
        synchronized (this.mSavingPhotoRequestQueue) {
            if (CamLog.DEBUG) {
                CamLog.d(dumpRequestQueueStatus());
            }
            size = this.mSavingPhotoRequestQueue.size() + this.mRemainRequestQueue.size();
        }
        return size;
    }

    int getRemainPrevSavingRequestCount() {
        int size;
        synchronized (this.mSavingPhotoRequestQueue) {
            size = this.mSavingPhotoRequestQueue.size() + this.mRemainRequestQueue.size();
            for (RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder : this.mSavingPhotoRequestQueue) {
                if (requestFactory$PhotoSavingRequestBuilder != null && requestFactory$PhotoSavingRequestBuilder.mCommonStatus.takenByFastCapture) {
                    size--;
                }
            }
            for (TakenStatusCommon takenStatusCommon : this.mRemainRequestQueue) {
                if (takenStatusCommon != null && takenStatusCommon.takenByFastCapture) {
                    size--;
                }
            }
        }
        return size;
    }

    private void createSnapshotReadyCountDownLatch() {
        synchronized (this.mWaitForSnapshotReadyLockObject) {
            if (this.mIsSnapshotReadyWaiting) {
                this.mWaitForSnapshotReadyLock = new CountDownLatch(1);
            }
        }
    }

    private void setSnapshotReadyWaiting(boolean z) {
        synchronized (this.mWaitForSnapshotReadyLockObject) {
            this.mIsSnapshotReadyWaiting = z;
            if (!this.mIsSnapshotReadyWaiting && this.mWaitForSnapshotReadyLock != null) {
                this.mWaitForSnapshotReadyLock.countDown();
            }
        }
    }

    void setPreCaptureResult(RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder) {
        this.mPreCaptureResult = requestFactory$PhotoSavingRequestBuilder;
    }

    RequestFactory$PhotoSavingRequestBuilder getAndClearPreCaptureResult() {
        RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder = this.mPreCaptureResult;
        this.mPreCaptureResult = null;
        return requestFactory$PhotoSavingRequestBuilder;
    }

    private void acquireCloseBypassCameraWakeLock() {
        if (getApplicationContext() == null) {
            CamLog.e("Application context is not set. So wake lock could not be acquired for closing camera.");
            return;
        }
        if (this.mCloseBypassCameraWakeLock == null) {
            this.mCloseBypassCameraWakeLock = ((PowerManager) getApplicationContext().getSystemService(PowerManager.class)).newWakeLock(1, "CameraApp");
        }
        this.mCloseBypassCameraWakeLock.acquire(100000L);
    }

    private void releaseCloseBypassCameraWakeLock() {
        if (this.mCloseBypassCameraWakeLock == null) {
            CamLog.e("Wake lock is not created correctly.");
        } else {
            this.mCloseBypassCameraWakeLock.release();
        }
    }

    private BypassCamera$VideoMode getVideoMode(CameraInfo$CameraId cameraInfo$CameraId, String str, VideoHdr videoHdr) {
        BypassCamera$VideoMode bypassCamera$VideoMode = BypassCamera$VideoMode.NORMAL;
        if (str != null) {
            if ("on".equals(str) || "on".equals(str)) {
                bypassCamera$VideoMode = BypassCamera$VideoMode.STEADYSHOT;
            } else if ("intelligent_active".equals(str)) {
                bypassCamera$VideoMode = BypassCamera$VideoMode.INTELLIGENTACTIVE;
            }
        }
        if (!PlatformCapability.isVideoHdrSupported(cameraInfo$CameraId) || videoHdr == null || videoHdr != VideoHdr.HDR_ON) {
            return bypassCamera$VideoMode;
        }
        if (bypassCamera$VideoMode == BypassCamera$VideoMode.STEADYSHOT) {
            return BypassCamera$VideoMode.HDR_STEADYSHOT;
        }
        return BypassCamera$VideoMode.HDR;
    }

    private void changeBypassCameraModeAccordingToCurrentSetting(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        CameraParameters parameters = this.mCameraDeviceHandler.getParameters(cameraDeviceHandler$CameraSessionId);
        if (parameters == null) {
            return;
        }
        if (CamLog.DEBUG) {
            CamLog.d("invoked required:" + this.mIsApplyBypassCameraModeRequired + " cameraId:" + parameters.getCameraId() + " video:" + this.mCameraDeviceHandler.isVideo() + " sessionId:" + cameraDeviceHandler$CameraSessionId + " preProcessState:" + this.mCameraDeviceHandler.getPreProcessState() + " preview:" + parameters.getPreviewSize() + " picture:" + parameters.getPictureSize());
        }
        if (parameters.getPreviewSize() == null) {
            return;
        }
        if (this.mCameraDeviceHandler.isVideo() || parameters.getPictureSize() != null) {
            if ((this.mCameraDeviceHandler.getPreProcessState() == CameraDeviceHandler$PreProcessState.NOT_STARTED || this.mCameraDeviceHandler.getPreProcessState() == CameraDeviceHandler$PreProcessState.PRE_CAPTURE_RELEASED || this.mCameraDeviceHandler.getPreProcessState() == CameraDeviceHandler$PreProcessState.PRE_CAPTURE_DONE) && this.mIsApplyBypassCameraModeRequired) {
                this.mCameraDeviceHandler.postCameraDeviceThread(new BypassCameraController$ChangeBypassCameraModeTask(this, cameraDeviceHandler$CameraSessionId, null));
                this.mIsApplyBypassCameraModeRequired = false;
            }
        }
    }

    void awaitAllSnapshotDone() {
        this.mWaitForAllSnapshotLock = createSavingPhotoRemainCountDownLatch();
        awaitAllSnapshot();
    }

    private void awaitAllSnapshot() {
        if (this.mWaitForAllSnapshotLock != null) {
            CamLog.d("awaitAllSnapshot() Waiting to complete all snapshots. count:" + this.mWaitForAllSnapshotLock.getCount());
            try {
                if (this.mWaitForAllSnapshotLock.await(3000L, TimeUnit.MILLISECONDS)) {
                    CamLog.d("awaitAllSnapshot() snapshots done are completed");
                } else {
                    CamLog.e("awaitAllSnapshot: Timeout of waiting all snapshots done.");
                }
            } catch (InterruptedException unused) {
                CamLog.e("awaitAllSnapshot Intercept waiting request done.");
            }
        }
    }

    void prepareCaptureImageReader(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, CameraDeviceHandler$ImageReaderInitializedCallback cameraDeviceHandler$ImageReaderInitializedCallback) {
        Rect pictureSize;
        CameraParameters parameters = this.mCameraDeviceHandler.getParameters(cameraDeviceHandler$CameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("This session has been closed, so this request was refused. sessionId:" + cameraDeviceHandler$CameraSessionId);
                return;
            }
            return;
        }
        if (this.mCameraDeviceHandler.isVideo()) {
            pictureSize = parameters.getVideoSize().getVideoRect();
        } else {
            pictureSize = parameters.getPictureSize();
        }
        this.mCameraDeviceHandler.postCameraDeviceThread(new BypassCameraController$RequestPrepareCaptureImageReaderTask(this, cameraDeviceHandler$CameraSessionId, 1, Math.max(2, PredictiveCapture.AUTO.getCaptureNum() * 2), pictureSize, cameraDeviceHandler$ImageReaderInitializedCallback, null));
    }

    private void handleTimeout(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        CameraDeviceHandler$CameraSessionInfo openCloseStatusInfo = CameraDeviceHandler$CameraSessionInfo.getOpenCloseStatusInfo(cameraDeviceHandler$CameraSessionId);
        openCloseStatusInfo.setRequested(CameraDeviceHandler$OpenCloseRequestStatus.NONE);
        openCloseStatusInfo.setPerformed(CameraDeviceHandler$OpenClosePerformStatus.NONE);
        openCloseStatusInfo.setOtherError();
    }

    private void prepareCaptureImageReader(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, BypassCameraController$CaptureImageReaderRequest bypassCameraController$CaptureImageReaderRequest, CountDownLatch countDownLatch) {
        if (this.mCaptureImageReader != null) {
            if (BypassCameraController$CaptureImageReaderRequest.access$4700(bypassCameraController$CaptureImageReaderRequest, this.mPrevCaptureImageReaderRequest)) {
                if (CamLog.DEBUG) {
                    CamLog.d("Same ImageReader has bean already requested");
                }
                if (countDownLatch != null) {
                    countDownLatch.countDown();
                }
                if (BypassCameraController$CaptureImageReaderRequest.access$4300(bypassCameraController$CaptureImageReaderRequest) != null) {
                    BypassCameraController$CaptureImageReaderRequest.access$4300(bypassCameraController$CaptureImageReaderRequest).onInitialized();
                    return;
                }
                return;
            }
            if (CamLog.DEBUG) {
                CamLog.d("ImageReader may be changed to: buffNum:" + BypassCameraController$CaptureImageReaderRequest.access$4000(bypassCameraController$CaptureImageReaderRequest) + "," + BypassCameraController$CaptureImageReaderRequest.access$4100(bypassCameraController$CaptureImageReaderRequest) + " size:" + BypassCameraController$CaptureImageReaderRequest.access$4200(bypassCameraController$CaptureImageReaderRequest).width() + "," + BypassCameraController$CaptureImageReaderRequest.access$4200(bypassCameraController$CaptureImageReaderRequest).height());
            }
        }
        boolean z = this.mCaptureImageReader != null;
        this.mCapturingBufferNum = BypassCameraController$CaptureImageReaderRequest.access$4100(bypassCameraController$CaptureImageReaderRequest);
        this.mImageReaderHandler.post(new BypassCameraController$1(this, cameraDeviceHandler$CameraSessionId, countDownLatch, bypassCameraController$CaptureImageReaderRequest, z));
    }

    @WorkerThread
    private void requestPrepareSnapshot(int i) {
        try {
            if (this.mBypassCamera == null) {
                synchronized (this.mImageReaderPreparedLockObject) {
                    if (this.mImageReaderPreparedLatch != null) {
                        CamLog.d("countDown ImageReaderPreparedLatch to " + (this.mImageReaderPreparedLatch.getCount() - 1));
                        this.mImageReaderPreparedLatch.countDown();
                    }
                }
                return;
            }
            try {
                if (CamLog.DEBUG) {
                    CamLog.d("requestPrepareSnapshot() totalBufNumber:" + i);
                }
                this.mBypassCamera.requestPrepareSnapshot(this.mCaptureImageReader.getSurface(), i);
            } catch (RuntimeException e) {
                CamLog.e("requestPrepareSnapshot() failed. Ignore to prevent crash.");
            }
            synchronized (this.mImageReaderPreparedLockObject) {
                if (this.mImageReaderPreparedLatch != null) {
                    CamLog.d("countDown ImageReaderPreparedLatch to " + (this.mImageReaderPreparedLatch.getCount() - 1));
                    this.mImageReaderPreparedLatch.countDown();
                }
            }
        } catch (Throwable th) {
            synchronized (this.mImageReaderPreparedLockObject) {
                if (this.mImageReaderPreparedLatch != null) {
                    CamLog.d("countDown ImageReaderPreparedLatch to " + (this.mImageReaderPreparedLatch.getCount() - 1));
                    this.mImageReaderPreparedLatch.countDown();
                }
                throw th;
            }
        }
    }

    private void finalizeCaptureImageReader() {
        this.mImageReaderHandler.post(new BypassCameraController$2(this));
    }

    private synchronized void finalizeCaptureImageReaderInternal() {
        if (this.mCaptureImageReader != null) {
            this.mCaptureImageReader.setOnImageAvailableListener(null, null);
            this.mCaptureImageReader.close();
            this.mCaptureImageReader = null;
        }
    }

    private void awaitImageReaderPrepared() {
        CountDownLatch countDownLatch;
        synchronized (this.mImageReaderPreparedLockObject) {
            countDownLatch = this.mImageReaderPreparedLatch;
        }
        if (countDownLatch != null) {
            try {
                countDownLatch.await(1000L, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                CamLog.e("Waiting ImageReader Prepared is interrupted.", e);
            }
        }
    }

    boolean isBypassCameraNextShotAvailable() {
        return this.mCapturingBufferNum - getRemainSavingPhotoRequestCount() > 0;
    }

    private void awaitImageReaderReady() {
        CountDownLatch countDownLatch;
        synchronized (this.mImageReaderReadyLockObject) {
            countDownLatch = this.mImageReaderReadyLatch;
        }
        if (countDownLatch != null) {
            try {
                countDownLatch.await();
            } catch (InterruptedException e) {
                CamLog.e("Waiting ImageReader ready is interrupted. " + e);
            }
        }
    }

    private void unlockImageReaderReadyLatch(CountDownLatch countDownLatch) {
        if (countDownLatch == null) {
            return;
        }
        synchronized (this.mImageReaderReadyLockObject) {
            countDownLatch.countDown();
            if (this.mImageReaderReadyLatch == countDownLatch) {
                this.mImageReaderReadyLatch = null;
            }
        }
    }

    CameraDeviceHandler$CameraSessionId openBypassCamera(SharedPreferences sharedPreferences, UserSettings userSettings, FastCapture fastCapture, CapturingMode capturingMode) {
        if (!PlatformCapability.isPrepared() || PlatformCapability.hasDeviceError()) {
            CamLog.e("BypassCameraController.openBypassCamera() is rejected because PlatformCapability is not ready.");
            return null;
        }
        CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId = new CameraDeviceHandler$CameraSessionId();
        CameraDeviceHandler$CameraSessionInfo cameraDeviceHandler$CameraSessionInfo = new CameraDeviceHandler$CameraSessionInfo(capturingMode.getCameraId());
        cameraDeviceHandler$CameraSessionInfo.setRequested(CameraDeviceHandler$OpenCloseRequestStatus.BYPASS_CAMERA_OPENING);
        CameraDeviceHandler$CameraSessionInfo.addOpenCloseStatusInfo(cameraDeviceHandler$CameraSessionId, cameraDeviceHandler$CameraSessionInfo);
        PlatformCapability.getCameraInfo(capturingMode.getCameraId(), cameraDeviceHandler$CameraSessionInfo.getCameraInfo());
        this.mCameraDeviceHandler.postCameraDeviceThread(new BypassCameraController$OpenBypassCameraTask(this, sharedPreferences, userSettings, cameraDeviceHandler$CameraSessionId, fastCapture, capturingMode, null));
        return cameraDeviceHandler$CameraSessionId;
    }

    void closeBypassCamera(boolean z, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        BypassCameraController$CloseBypassCameraTask bypassCameraController$CloseBypassCameraTask;
        if (this.mPreCaptureResult != null) {
            this.mPreCaptureResult.close();
            this.mPreCaptureResult = null;
        }
        this.mWaitForAllSnapshotLock = createSavingPhotoRemainCountDownLatch();
        CameraDeviceHandler$CameraSessionInfo openCloseStatusInfo = CameraDeviceHandler$CameraSessionInfo.getOpenCloseStatusInfo(cameraDeviceHandler$CameraSessionId);
        if (openCloseStatusInfo == null) {
            return;
        }
        openCloseStatusInfo.setRequested(CameraDeviceHandler$OpenCloseRequestStatus.BYPASS_CAMERA_CLOSING);
        if (this.mWaitForAllSnapshotLock != null) {
            bypassCameraController$CloseBypassCameraTask = new BypassCameraController$CloseBypassCameraTask(this, this.mWaitForAllSnapshotLock, cameraDeviceHandler$CameraSessionId, null);
        } else {
            bypassCameraController$CloseBypassCameraTask = new BypassCameraController$CloseBypassCameraTask(this, cameraDeviceHandler$CameraSessionId, (BypassCameraController$1) null);
        }
        acquireCloseBypassCameraWakeLock();
        if (z) {
            this.mCameraDeviceHandler.postCameraDeviceThreadSync(bypassCameraController$CloseBypassCameraTask);
        } else {
            this.mCameraDeviceHandler.postCameraDeviceThread(bypassCameraController$CloseBypassCameraTask);
        }
    }

    @WorkerThread
    BypassCamera getBypassCameraInstance() {
        return this.mBypassCamera;
    }

    void requestSnapshotReady(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        this.mCameraDeviceHandler.postCameraDeviceThread(new BypassCameraController$RequestSnapshotReadyTask(this, cameraDeviceHandler$CameraSessionId, null));
    }

    void requestSnapshotFree(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        this.mCameraDeviceHandler.postCameraDeviceThread(new BypassCameraController$RequestSnapshotFreeTask(this, cameraDeviceHandler$CameraSessionId, null));
    }

    void commit(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        awaitImageReaderReady();
        changeBypassCameraModeAccordingToCurrentSetting(cameraDeviceHandler$CameraSessionId);
    }

    void commitParameters(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        this.mCameraDeviceHandler.postCameraDeviceThread(new BypassCameraController$SetConfigTask(this, cameraDeviceHandler$CameraSessionId, null));
    }

    private Size toAndroidUtilSize(Rect rect) {
        return new Size(rect.width(), rect.height());
    }

    void requestApplyBypassCameraMode() {
        this.mIsApplyBypassCameraModeRequired = true;
    }
}

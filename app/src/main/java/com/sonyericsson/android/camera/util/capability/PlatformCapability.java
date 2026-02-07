package com.sonyericsson.android.camera.util.capability;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences$Editor;
import android.graphics.Rect;
import android.hardware.Camera;
import android.hardware.Camera$CameraInfo;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import android.os.Build;
import android.support.annotation.Nullable;
import android.util.Range;
import com.sonyericsson.android.camera.CameraApplication;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.device.CameraInfo;
import com.sonyericsson.android.camera.device.CameraInfo$CameraId;
import com.sonyericsson.android.camera.recorder.RecordingProfile;
import com.sonyericsson.android.camera.setting.SharedPreferencesAccessor;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.PerfLog;
import com.sonyericsson.android.camera.util.ThreadUtil;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$Facing;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public class PlatformCapability {
    private static int CAPABILITY_VERSION = 1;
    private static final String FILE_NAME = "com.sonyericsson.android.camera.supported_values.";
    private static final String KEY_VERSION = "capability-version";
    private static final String PLATFORM_NAME = "platform";
    private static final long PREPARING_START_DELAY = 2000;
    private static final long PREPARING_TIMEOUT = 1000;
    public static final String TAG = "PlatformCapability";
    private static boolean mHasDeviceError;
    private static Map<CameraInfo$CameraId, CameraCapabilityList> sCameraCapabilityListMap;
    private static CameraManager sCameraManager;
    private static PlatformCapabilityList sPlatformCapabilityList;
    private static CountDownLatch sPrepareLatch;
    private static Future<Map<PlatformCapability$HolderType, ParameterHolder>> sPreparingTaskFuture;
    private static Map<PlatformCapability$HolderType, ParameterHolder> sParameterHolderMap = new HashMap();
    private static final ScheduledExecutorService sPrepareTaskExecutor = ThreadUtil.buildScheduledExecutor("PlatformCapability", 10);
    private static PlatformCapability$PrepareState sPrepareState = PlatformCapability$PrepareState.IDLE;
    private static Object sPrepareStateLock = new Object();

    public static String getFileNameForPlatformCapability() {
        return "com.sonyericsson.android.camera.supported_values.platform";
    }

    public static boolean isVideoSnapshotSupported(int i) {
        return true;
    }

    public static boolean isVideoStabilizerOnHdrSupported(CameraInfo$CameraId cameraInfo$CameraId) {
        return true;
    }

    static /* synthetic */ void access$100(CountDownLatch countDownLatch, PlatformCapability$OnPlatformCapabilityPreparedCallback platformCapability$OnPlatformCapabilityPreparedCallback) {
        prepareInternal(countDownLatch, platformCapability$OnPlatformCapabilityPreparedCallback);
    }

    public static String getFileNameForCameraCapability(CameraInfo$CameraId cameraInfo$CameraId) {
        return "com.sonyericsson.android.camera.supported_values." + cameraInfo$CameraId.getCameraDeviceId();
    }

    public static void prepareAsync(PlatformCapability$OnPlatformCapabilityPreparedCallback platformCapability$OnPlatformCapabilityPreparedCallback) {
        boolean zHasDeviceError = hasDeviceError();
        setDeviceError(false);
        synchronized (sPrepareStateLock) {
            if (CamLog.DEBUG) {
                CamLog.d("Invoked state:" + sPrepareState);
            }
            if (zHasDeviceError) {
                sPrepareState = PlatformCapability$PrepareState.IDLE;
                if (sPlatformCapabilityList != null) {
                    sPlatformCapabilityList = null;
                }
                if (sCameraCapabilityListMap != null) {
                    sCameraCapabilityListMap.clear();
                    sCameraCapabilityListMap = null;
                }
            }
            if (PlatformCapability$1.$SwitchMap$com$sonyericsson$android$camera$util$capability$PlatformCapability$PrepareState[sPrepareState.ordinal()] != 1) {
                sPrepareState = PlatformCapability$PrepareState.RUNNING;
                sPrepareLatch = new CountDownLatch(1);
                sPrepareTaskExecutor.execute(new PlatformCapability$PrepareTask(sPrepareLatch, platformCapability$OnPlatformCapabilityPreparedCallback, null));
            }
        }
    }

    public static boolean awaitPrepare() {
        return awaitPrepare(0L, TimeUnit.MILLISECONDS);
    }

    public static boolean awaitPrepare(long j, TimeUnit timeUnit) {
        synchronized (sPrepareStateLock) {
            if (CamLog.DEBUG) {
                CamLog.d("Invoked state:" + sPrepareState);
            }
            switch (PlatformCapability$1.$SwitchMap$com$sonyericsson$android$camera$util$capability$PlatformCapability$PrepareState[sPrepareState.ordinal()]) {
                case 2:
                case 3:
                    return true;
                default:
                    CountDownLatch countDownLatch = sPrepareLatch;
                    if (countDownLatch == null) {
                        CamLog.e("Latch object for preparation of platform capability doesn't exist.");
                        return true;
                    }
                    try {
                        if (j > 0) {
                            if (!countDownLatch.await(j, timeUnit)) {
                                CamLog.e("Preparation of platform capability is timed-out.");
                            }
                        } else {
                            countDownLatch.await();
                        }
                        break;
                    } catch (InterruptedException unused) {
                        CamLog.e("Preparation of platform capability is interrupted.");
                    }
                    synchronized (sPrepareStateLock) {
                        if (PlatformCapability$1.$SwitchMap$com$sonyericsson$android$camera$util$capability$PlatformCapability$PrepareState[sPrepareState.ordinal()] == 3) {
                            return true;
                        }
                        if (CamLog.DEBUG) {
                            CamLog.d("Fail state:" + sPrepareState);
                        }
                        if (countDownLatch == sPrepareLatch) {
                            sPrepareState = PlatformCapability$PrepareState.TIMED_OUT;
                        }
                        return false;
                    }
            }
        }
    }

    private static void prepareInternal(CountDownLatch countDownLatch, PlatformCapability$OnPlatformCapabilityPreparedCallback platformCapability$OnPlatformCapabilityPreparedCallback) {
        boolean z;
        PerfLog.PLATFORM_CAPABILITY_PREPARE.begin();
        Context context = CameraApplication.getContext();
        CameraManager cameraManager = (CameraManager) context.getSystemService(CameraManager.class);
        HashMap map = new HashMap();
        try {
            List<CameraInfo$CameraId> cameraIdList = getCameraIdList(cameraManager);
            if (cameraIdList != null && !cameraIdList.isEmpty()) {
                boolean z2 = false;
                for (CameraInfo$CameraId cameraInfo$CameraId : cameraIdList) {
                    CameraCapabilityList cameraCapabilityListLoadCameraCapabilityFromPreferences = loadCameraCapabilityFromPreferences(context, cameraInfo$CameraId);
                    if (cameraCapabilityListLoadCameraCapabilityFromPreferences == null) {
                        cameraCapabilityListLoadCameraCapabilityFromPreferences = loadCameraCapabilityFromDevice(context, cameraManager, cameraInfo$CameraId);
                        z2 = true;
                    }
                    if (cameraCapabilityListLoadCameraCapabilityFromPreferences == null) {
                        CamLog.e("Platform capability could not load cameraCapabilityList for camera:" + cameraInfo$CameraId.name());
                        synchronized (sPrepareStateLock) {
                            switch (PlatformCapability$1.$SwitchMap$com$sonyericsson$android$camera$util$capability$PlatformCapability$PrepareState[sPrepareState.ordinal()]) {
                                case 1:
                                    if (countDownLatch == sPrepareLatch) {
                                        sPrepareState = PlatformCapability$PrepareState.IDLE;
                                    }
                                    break;
                                case 2:
                                case 3:
                                    CamLog.w("Preparation of platform capability is finished with Illegal state. state:" + sPrepareState);
                                    break;
                            }
                            countDownLatch.countDown();
                        }
                        platformCapability$OnPlatformCapabilityPreparedCallback.onPrepared();
                        if (CamLog.DEBUG) {
                            CamLog.d("prepare: request preparing parameters");
                        }
                        sPreparingTaskFuture = sPrepareTaskExecutor.schedule(new PlatformCapability$PrepareParametersTask(null), 2000L, TimeUnit.MILLISECONDS);
                        return;
                    }
                    map.put(cameraInfo$CameraId, cameraCapabilityListLoadCameraCapabilityFromPreferences);
                }
                PlatformCapabilityList platformCapabilityListLoadPlatformCapabilityFromPreferences = loadPlatformCapabilityFromPreferences(context);
                if (platformCapabilityListLoadPlatformCapabilityFromPreferences == null) {
                    platformCapabilityListLoadPlatformCapabilityFromPreferences = loadPlatformCapabilityFromDevice(context);
                    z = true;
                } else {
                    z = false;
                }
                if (platformCapabilityListLoadPlatformCapabilityFromPreferences == null) {
                    synchronized (sPrepareStateLock) {
                        switch (PlatformCapability$1.$SwitchMap$com$sonyericsson$android$camera$util$capability$PlatformCapability$PrepareState[sPrepareState.ordinal()]) {
                            case 1:
                                if (countDownLatch == sPrepareLatch) {
                                    sPrepareState = PlatformCapability$PrepareState.IDLE;
                                }
                                break;
                            case 2:
                            case 3:
                                CamLog.w("Preparation of platform capability is finished with Illegal state. state:" + sPrepareState);
                                break;
                        }
                        countDownLatch.countDown();
                    }
                    platformCapability$OnPlatformCapabilityPreparedCallback.onPrepared();
                    if (CamLog.DEBUG) {
                        CamLog.d("prepare: request preparing parameters");
                    }
                    sPreparingTaskFuture = sPrepareTaskExecutor.schedule(new PlatformCapability$PrepareParametersTask(null), 2000L, TimeUnit.MILLISECONDS);
                    return;
                }
                synchronized (sPrepareStateLock) {
                    switch (PlatformCapability$1.$SwitchMap$com$sonyericsson$android$camera$util$capability$PlatformCapability$PrepareState[sPrepareState.ordinal()]) {
                        case 1:
                            if (countDownLatch == sPrepareLatch) {
                                sPrepareState = PlatformCapability$PrepareState.IDLE;
                                sCameraManager = cameraManager;
                                sCameraCapabilityListMap = map;
                                sPlatformCapabilityList = platformCapabilityListLoadPlatformCapabilityFromPreferences;
                                if (z2) {
                                    for (CameraInfo$CameraId cameraInfo$CameraId2 : sCameraCapabilityListMap.keySet()) {
                                        store(context, getFileNameForCameraCapability(cameraInfo$CameraId2), sCameraCapabilityListMap.get(cameraInfo$CameraId2).values());
                                    }
                                }
                                if (z && sPlatformCapabilityList != null) {
                                    store(context, getFileNameForPlatformCapability(), sPlatformCapabilityList.values());
                                }
                            }
                            break;
                        case 2:
                        case 3:
                            CamLog.w("Preparation of platform capability is finished with Illegal state. state:" + sPrepareState);
                            break;
                    }
                    countDownLatch.countDown();
                }
                platformCapability$OnPlatformCapabilityPreparedCallback.onPrepared();
                if (CamLog.DEBUG) {
                    CamLog.d("prepare: request preparing parameters");
                }
                sPreparingTaskFuture = sPrepareTaskExecutor.schedule(new PlatformCapability$PrepareParametersTask(null), 2000L, TimeUnit.MILLISECONDS);
                PerfLog.PLATFORM_CAPABILITY_PREPARE.end();
                return;
            }
            CamLog.e("Camera list could not be retrieved from camera device.");
            synchronized (sPrepareStateLock) {
                switch (PlatformCapability$1.$SwitchMap$com$sonyericsson$android$camera$util$capability$PlatformCapability$PrepareState[sPrepareState.ordinal()]) {
                    case 1:
                        if (countDownLatch == sPrepareLatch) {
                            sPrepareState = PlatformCapability$PrepareState.IDLE;
                        }
                        break;
                    case 2:
                    case 3:
                        CamLog.w("Preparation of platform capability is finished with Illegal state. state:" + sPrepareState);
                        break;
                }
                countDownLatch.countDown();
            }
            platformCapability$OnPlatformCapabilityPreparedCallback.onPrepared();
            if (CamLog.DEBUG) {
                CamLog.d("prepare: request preparing parameters");
            }
            sPreparingTaskFuture = sPrepareTaskExecutor.schedule(new PlatformCapability$PrepareParametersTask(null), 2000L, TimeUnit.MILLISECONDS);
        } catch (Throwable th) {
            synchronized (sPrepareStateLock) {
                switch (PlatformCapability$1.$SwitchMap$com$sonyericsson$android$camera$util$capability$PlatformCapability$PrepareState[sPrepareState.ordinal()]) {
                    case 1:
                        if (countDownLatch == sPrepareLatch) {
                            sPrepareState = PlatformCapability$PrepareState.IDLE;
                        }
                        break;
                    case 2:
                    case 3:
                        CamLog.w("Preparation of platform capability is finished with Illegal state. state:" + sPrepareState);
                        break;
                }
                countDownLatch.countDown();
                platformCapability$OnPlatformCapabilityPreparedCallback.onPrepared();
                if (CamLog.DEBUG) {
                    CamLog.d("prepare: request preparing parameters");
                }
                sPreparingTaskFuture = sPrepareTaskExecutor.schedule(new PlatformCapability$PrepareParametersTask(null), 2000L, TimeUnit.MILLISECONDS);
                throw th;
            }
        }
    }

    public static boolean isPrepared() {
        synchronized (sPrepareStateLock) {
            boolean z = false;
            switch (PlatformCapability$1.$SwitchMap$com$sonyericsson$android$camera$util$capability$PlatformCapability$PrepareState[sPrepareState.ordinal()]) {
                case 2:
                    return false;
                case 3:
                    if (sCameraCapabilityListMap != null && sPlatformCapabilityList != null) {
                        z = true;
                    }
                    return z;
                default:
                    return false;
            }
        }
    }

    private static List<CameraInfo$CameraId> getCameraIdList(CameraManager cameraManager) {
        try {
            String[] cameraIdList = cameraManager.getCameraIdList();
            if (cameraIdList == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (String str : cameraIdList) {
                if (str.equals(CameraInfo$CameraId.BACK.getCameraDeviceId())) {
                    arrayList.add(CameraInfo$CameraId.BACK);
                } else if (str.equals(CameraInfo$CameraId.FRONT.getCameraDeviceId())) {
                    arrayList.add(CameraInfo$CameraId.FRONT);
                }
            }
            return arrayList;
        } catch (CameraAccessException e) {
            CamLog.e("Camera Ids could not be retrieved from CameraManager.", e);
            return null;
        }
    }

    public static CameraCapabilityList getCameraCapability(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId);
    }

    private static CameraCapabilityList getList(CameraInfo$CameraId cameraInfo$CameraId) {
        if (!isPrepared()) {
            throw new IllegalArgumentException("PlatformCapability is not prepared.");
        }
        if (cameraInfo$CameraId == null) {
            throw new IllegalArgumentException("CameraId is null");
        }
        if (sCameraCapabilityListMap.containsKey(cameraInfo$CameraId)) {
            return sCameraCapabilityListMap.get(cameraInfo$CameraId);
        }
        throw new IllegalArgumentException("Capabilities are not cached for camera:" + cameraInfo$CameraId.name());
    }

    public static Rect getMaxPixelsPictureSize(CameraInfo$CameraId cameraInfo$CameraId) {
        Rect rect = null;
        for (Rect rect2 : getList(cameraInfo$CameraId).PICTURE_SIZE.get()) {
            if (pixels(rect2) > pixels(rect)) {
                rect = rect2;
            }
        }
        return new Rect(0, 0, rect.height(), rect.width());
    }

    private static int pixels(Rect rect) {
        if (rect == null) {
            return 0;
        }
        return rect.height() * rect.width();
    }

    private static CameraCapabilityList loadCameraCapabilityFromPreferences(Context context, CameraInfo$CameraId cameraInfo$CameraId) {
        CamLog.d("invoked cameraId:" + cameraInfo$CameraId.name());
        SharedPreferences sharedPreferencesLoadPreferences = loadPreferences(context, getFileNameForCameraCapability(cameraInfo$CameraId));
        if (sharedPreferencesLoadPreferences == null) {
            return null;
        }
        return new CameraCapabilityList(context, sharedPreferencesLoadPreferences);
    }

    private static PlatformCapabilityList loadPlatformCapabilityFromPreferences(Context context) {
        SharedPreferences sharedPreferencesLoadPreferences = loadPreferences(context, getFileNameForPlatformCapability());
        if (sharedPreferencesLoadPreferences == null) {
            return null;
        }
        return new PlatformCapabilityList(context, sharedPreferencesLoadPreferences);
    }

    private static SharedPreferences loadPreferences(Context context, String str) {
        SharedPreferences sharedPreferences = SharedPreferencesAccessor.getSharedPreferences(context, str, 0);
        if (sharedPreferences == null) {
            CamLog.d("shared-preferences is not valid: name = " + str);
            return null;
        }
        if (isSharedPreferencesValid(sharedPreferences)) {
            CamLog.d("loaded from shared-preferences: name = " + str);
            return sharedPreferences;
        }
        CamLog.i("shared-preferences is not valid: name = " + str);
        sharedPreferences.edit().clear().commit();
        return null;
    }

    private static CameraCapabilityList loadCameraCapabilityFromDevice(Context context, CameraManager cameraManager, CameraInfo$CameraId cameraInfo$CameraId) {
        CamLog.d("invoked cameraId:" + cameraInfo$CameraId.name());
        try {
            CameraCapabilityList cameraCapabilityList = new CameraCapabilityList(context, new CameraStaticParameters(cameraManager.getCameraCharacteristics(cameraInfo$CameraId.getCameraDeviceId())), new BypassCameraStaticParameters(BypassCamera.getCaps(getBypassCameraFacing(cameraInfo$CameraId))));
            boolean zIsEmpty = cameraCapabilityList.FPS_RANGE.get().isEmpty();
            boolean zIsEmpty2 = cameraCapabilityList.PREVIEW_SIZE.get().isEmpty();
            boolean zIsEmpty3 = cameraCapabilityList.PICTURE_SIZE.get().isEmpty();
            if (!zIsEmpty && !zIsEmpty2 && !zIsEmpty3) {
                CamLog.d("CameraCapabilities are loadded from device.");
                return cameraCapabilityList;
            }
            CamLog.e("Mandatory capabilities could not be retrieved. fps-range is empty:" + zIsEmpty + " preview-size is empty:" + zIsEmpty2 + " picture-size is empty:" + zIsEmpty3);
            return null;
        } catch (CameraAccessException e) {
            CamLog.e("Fail to load capabilities from device.", e);
            return null;
        }
    }

    private static PlatformCapabilityList loadPlatformCapabilityFromDevice(Context context) {
        try {
            PlatformCapabilityList platformCapabilityList = new PlatformCapabilityList(context);
            CamLog.d("PlatformCapabilities are loaded from device.");
            return platformCapabilityList;
        } catch (Exception e) {
            CamLog.e("Fail to load PlatformCapabilities from device.", e);
            return null;
        }
    }

    private static BypassCamera$Facing getBypassCameraFacing(CameraInfo$CameraId cameraInfo$CameraId) {
        if (cameraInfo$CameraId == CameraInfo$CameraId.BACK) {
            return BypassCamera$Facing.BACK;
        }
        return BypassCamera$Facing.FRONT;
    }

    private static boolean isSharedPreferencesValid(SharedPreferences sharedPreferences) {
        if (!isBuildFingerprintModified(sharedPreferences) && !isVersionModified(sharedPreferences)) {
            return true;
        }
        if (!CamLog.VERBOSE) {
            return false;
        }
        CamLog.d("prefs is invalid.");
        return false;
    }

    private static boolean isBuildFingerprintModified(SharedPreferences sharedPreferences) {
        if (!sharedPreferences.contains("android.os.Build.FINGERPRINT")) {
            return true;
        }
        String string = sharedPreferences.getString("android.os.Build.FINGERPRINT", "");
        String str = Build.FINGERPRINT;
        if (string.equals(str)) {
            return false;
        }
        if (CamLog.VERBOSE) {
            CamLog.d("version mismatch: cached: " + string + ", current : " + str);
        }
        return true;
    }

    private static boolean isVersionModified(SharedPreferences sharedPreferences) {
        if (!sharedPreferences.contains("capability-version")) {
            return true;
        }
        int i = sharedPreferences.getInt("capability-version", 0);
        if (i == CAPABILITY_VERSION) {
            return false;
        }
        if (CamLog.VERBOSE) {
            CamLog.d("version mismatch: cached: " + i + ", current : " + CAPABILITY_VERSION);
        }
        return true;
    }

    private static boolean isFusionSupported(CameraInfo$CameraId cameraInfo$CameraId) {
        for (String str : getList(cameraInfo$CameraId).FUSION_MODE.get()) {
            if (str.equals("on") || str.equals("auto")) {
                return true;
            }
        }
        return false;
    }

    static boolean store(Context context, String str, List<CapabilityItem<?>> list) {
        if (CamLog.VERBOSE) {
            CamLog.d("store: " + list);
        }
        SharedPreferences sharedPreferences = SharedPreferencesAccessor.getSharedPreferences(context, str, 0);
        if (sharedPreferences == null) {
            if (CamLog.VERBOSE) {
                CamLog.d("Failed to obtain shared prefs.");
            }
            return false;
        }
        SharedPreferences$Editor sharedPreferences$EditorEdit = sharedPreferences.edit();
        String str2 = Build.FINGERPRINT;
        sharedPreferences$EditorEdit.putString("android.os.Build.FINGERPRINT", str2);
        if (CamLog.VERBOSE) {
            CamLog.d("android.os.Build.FINGERPRINT: " + str2);
        }
        int i = CAPABILITY_VERSION;
        sharedPreferences$EditorEdit.putInt("capability-version", i);
        if (CamLog.VERBOSE) {
            CamLog.d("KEY_VERSION: " + i);
        }
        Iterator<CapabilityItem<?>> it = list.iterator();
        while (it.hasNext()) {
            it.next().write(sharedPreferences$EditorEdit);
        }
        sharedPreferences$EditorEdit.apply();
        if (CamLog.VERBOSE) {
            CamLog.d("store: success.");
        }
        return true;
    }

    public static boolean isFrontCameraSupported() {
        Iterator<CameraInfo$CameraId> it = sCameraCapabilityListMap.keySet().iterator();
        while (it.hasNext()) {
            if (it.next() == CameraInfo$CameraId.FRONT) {
                return true;
            }
        }
        return false;
    }

    public static boolean isFullHdVideoFpsSupported(CameraInfo$CameraId cameraInfo$CameraId, int i) {
        for (VideoConfiguration videoConfiguration : getList(cameraInfo$CameraId).VIDEO_CONFIGURATION.get()) {
            if (videoConfiguration.mWidth == 1920 && videoConfiguration.mHeight == 1080 && videoConfiguration.mFps >= i) {
                return true;
            }
        }
        return false;
    }

    public static boolean isStillHdrSupportedWith(CameraInfo$CameraId cameraInfo$CameraId, Resolution resolution) {
        for (Rect rect : getList(cameraInfo$CameraId).STILL_HDR_SUPPORTED_PICTURE_SIZE.get()) {
            if (rect.width() == resolution.getPictureRect().width() && rect.height() == resolution.getPictureRect().height()) {
                return true;
            }
        }
        return false;
    }

    public static int getMaxSoftSkinLevel(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).MAX_SOFT_SKIN_LEVEL.get().intValue();
    }

    public static int getMinSoftSkinLevel(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).MIN_SOFT_SKIN_LEVEL.get().intValue();
    }

    public static boolean isSoftSkinSupported(CameraInfo$CameraId cameraInfo$CameraId) {
        return getMaxSoftSkinLevel(cameraInfo$CameraId) > getMinSoftSkinLevel(cameraInfo$CameraId);
    }

    public static boolean isAwbAbCompensationSupported(CameraInfo$CameraId cameraInfo$CameraId) {
        Integer num = getList(cameraInfo$CameraId).MAX_AWB_AB.get();
        Integer num2 = getList(cameraInfo$CameraId).MIN_AWB_AB.get();
        return (num == null || num2 == null || num.intValue() <= num2.intValue()) ? false : true;
    }

    public static boolean isManualFocusSupported(CameraInfo$CameraId cameraInfo$CameraId) {
        Boolean bool = getList(cameraInfo$CameraId).MANUAL_FOCUS.get();
        return bool != null && bool.booleanValue();
    }

    public static boolean isShutterSpeedSupported(CameraInfo$CameraId cameraInfo$CameraId) {
        List<String> list = getList(cameraInfo$CameraId).AE.get();
        if (list.isEmpty() || !list.contains("shutter-prio")) {
            return false;
        }
        Long l = getList(cameraInfo$CameraId).MAX_SHUTTER_SPEED.get();
        Long l2 = getList(cameraInfo$CameraId).MIN_SHUTTER_SPEED.get();
        return (l == null || l2 == null || l.longValue() <= l2.longValue()) ? false : true;
    }

    public static boolean isObjectTrackingSupported(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).OBJECT_TRACKING.get().booleanValue();
    }

    public static boolean isPredictiveCaptureShotSupported(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).PREDICTIVE_CAPTURE.get().size() != 0;
    }

    public static boolean isManualBurstSupported(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).BURST.get().contains("on");
    }

    public static boolean isTrackingFocusDuringLockSupported(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).TRACKING_FOCUS_DURING_LOCK.get().booleanValue();
    }

    public static boolean isFocusSupported(CameraInfo$CameraId cameraInfo$CameraId) {
        return !getList(cameraInfo$CameraId).FOCUS_MODE.get().contains("fixed");
    }

    public static boolean isSuperWideSupported(CameraInfo$CameraId cameraInfo$CameraId) {
        if (getList(cameraInfo$CameraId).WIDE_ZOOM_TARGET_RATIO.get().floatValue() > 1.01d) {
            if (!CamLog.VERBOSE) {
                return true;
            }
            CamLog.d("isSuperWideSupported() SUPPORT");
            return true;
        }
        if (!CamLog.VERBOSE) {
            return false;
        }
        CamLog.d("isSuperWideSupported() NOT SUPPORT");
        return false;
    }

    public static float getMacroValue(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).MACRO_FOCUS_RANGE.get().floatValue();
    }

    public static List<String> getSupportedFocusModes(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).FOCUS_MODE.get();
    }

    public static int getMaxNumFocusAreas(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).MAX_NUM_FOCUS_AREA.get().intValue();
    }

    public static boolean isTouchFocusSupported(CameraInfo$CameraId cameraInfo$CameraId) {
        return getMaxNumFocusAreas(cameraInfo$CameraId) >= 1;
    }

    public static List<String> getSupportedFocusAreaModes(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).FOCUS_AREA.get();
    }

    public static int getMaxExposureCompensation(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).EV_MAX.get().intValue();
    }

    public static int getMinExposureCompensation(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).EV_MIN.get().intValue();
    }

    public static float getExposureCompensationStep(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).EV_STEP.get().floatValue();
    }

    public static List<String> getSupportedMeteringModes(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).METERING.get();
    }

    public static List<String> getSupportedAeModes(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).AE.get();
    }

    public static List<String> getSupportedWhiteBalance(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).WHITE_BALANCE.get();
    }

    public static List<String> getSupportedShutterSpeedValues(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).SHUTTER_SPEED_VALUES.get();
    }

    public static long getMaxShutterSpeed(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).MAX_SHUTTER_SPEED.get().longValue();
    }

    public static long getMinShutterSpeed(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).MIN_SHUTTER_SPEED.get().longValue();
    }

    public static List<String> getSupportedFlashModes(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).FLASH.get();
    }

    public static Range<Integer> getSupportedIsoRange(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).ISO_RANGE.get();
    }

    public static Range<Integer> getSupportedFusionIsoRange(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).FUSION_ISO_RANGE.get();
    }

    public static boolean isFlashModeSupported(CameraInfo$CameraId cameraInfo$CameraId) {
        List<String> supportedFlashModes = getSupportedFlashModes(cameraInfo$CameraId);
        return supportedFlashModes != null && supportedFlashModes.contains("on");
    }

    public static boolean isDisplayFlashModeSupported(CameraInfo$CameraId cameraInfo$CameraId) {
        List<String> supportedFlashModes = getSupportedFlashModes(cameraInfo$CameraId);
        return supportedFlashModes != null && supportedFlashModes.contains("display-on");
    }

    public static List<String> getSupportedStillHdrValues(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).HDR.get();
    }

    public static List<Rect> getStillHdrSupportedPictureSizes(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).STILL_HDR_SUPPORTED_PICTURE_SIZE.get();
    }

    public static Integer getMaxAwbColorCompensationAb(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).MAX_AWB_AB.get();
    }

    public static Integer getMinAwbColorCompensationAb(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).MIN_AWB_AB.get();
    }

    public static boolean isSceneRecognitionSupported(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).SCENE_RECOGNITION.get().booleanValue();
    }

    public static int getMaxNumDetectedFaces(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).MAX_NUM_FACE.get().intValue();
    }

    public static boolean isFaceDetectionAvailable(CameraInfo$CameraId cameraInfo$CameraId) {
        return isSmileDetectionAvailable(cameraInfo$CameraId);
    }

    public static boolean isSmileDetectionAvailable(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).SMILE_DETECTION.get().booleanValue();
    }

    public static List<Rect> getSupportedPreviewSizes(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).PREVIEW_SIZE.get();
    }

    public static List<int[]> getSupportedPreviewFpsRange(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).FPS_RANGE.get();
    }

    public static int getMaxPreviewFps(CameraInfo$CameraId cameraInfo$CameraId) {
        List<int[]> supportedPreviewFpsRange = getSupportedPreviewFpsRange(cameraInfo$CameraId);
        int i = 0;
        if (supportedPreviewFpsRange != null) {
            for (int[] iArr : supportedPreviewFpsRange) {
                if (iArr != null && iArr.length == 2 && i < iArr[1]) {
                    i = iArr[1];
                }
            }
        }
        return i;
    }

    public static Rect getPreferredPreviewSizeForStill(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).PREVIEW_SIZE_FOR_STILL.get();
    }

    public static List<Rect> getSupportedPictureSizes(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).PICTURE_SIZE.get();
    }

    public static List<Rect> getManualIsoSupportedPictureSizes(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).MANUAL_ISO_SUPPORTED_PICTURE_SIZE.get();
    }

    public static Rect getPreferredPreviewSizeForVideo(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).PREVIEW_SIZE_FOR_VIDEO.get();
    }

    public static Rect getPreferredPreviewSizeForHdrVideo(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).PREVIEW_SIZE_FOR_HDR_VIDEO.get();
    }

    public static List<VideoConfiguration> getSupportedVideoConfiguration(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).VIDEO_CONFIGURATION.get();
    }

    public static Rect getActiveArraySize(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).ACTIVE_ARRAY_SIZE.get();
    }

    public static int getLensFacing(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).LENS_FACING.get().intValue();
    }

    public static List<String> getSupportedClimaxRecognition(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).PREDICTIVE_CAPTURE.get();
    }

    public static float getMaxZoomRatio(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).MAX_ZOOM_RATIO.get().floatValue();
    }

    public static float getWideZoomTargetRatio(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).WIDE_ZOOM_TARGET_RATIO.get().floatValue();
    }

    public static List<Integer> getZoomRatios(CameraInfo$CameraId cameraInfo$CameraId) {
        float maxZoomRatio = getMaxZoomRatio(cameraInfo$CameraId);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i <= 120; i++) {
            arrayList.add(Integer.valueOf(Math.round(((((maxZoomRatio - 1.0f) * i) / 120.0f) + 1.0f) * 100.0f)));
        }
        if (CamLog.VERBOSE) {
            CamLog.d("getZoomRatios() : " + arrayList);
        }
        return arrayList;
    }

    public static boolean isTouchAeSupported(CameraInfo$CameraId cameraInfo$CameraId) {
        return getSupportedMeteringModes(cameraInfo$CameraId).contains("user");
    }

    public static boolean isPowerSavingSupported(CameraInfo$CameraId cameraInfo$CameraId) {
        List<String> list = getList(cameraInfo$CameraId).POWER_SAVING_MODE.get();
        return (list.size() == 0 || (list.size() == 1 && list.contains("off"))) ? false : true;
    }

    public static long getMinExposureTimeLimit(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).MIN_SHUTTER_SPEED_LIMIT.get().longValue();
    }

    public static boolean isLiftTriggerSupported() {
        return sPlatformCapabilityList.CAMERA_LIFT_TRIGGER.get().booleanValue();
    }

    public static long getSuperSlowFrameRate(CameraInfo$CameraId cameraInfo$CameraId, VideoSize videoSize) {
        for (VideoConfiguration videoConfiguration : getList(cameraInfo$CameraId).SUPER_SLOW_CONFIGURATION.get()) {
            if (videoConfiguration.mWidth == videoSize.getVideoRect().width() && videoConfiguration.mHeight == videoSize.getVideoRect().height()) {
                return videoConfiguration.mFps;
            }
        }
        return 0L;
    }

    public static long getSuperSlowFrameNum(CameraInfo$CameraId cameraInfo$CameraId, VideoSize videoSize) {
        for (VideoConfiguration videoConfiguration : getList(cameraInfo$CameraId).SUPER_SLOW_CONFIGURATION.get()) {
            if (videoConfiguration.mWidth == videoSize.getVideoRect().width() && videoConfiguration.mHeight == videoSize.getVideoRect().height()) {
                return videoConfiguration.mFrameNum;
            }
        }
        return 0L;
    }

    public static boolean isSuperSlowFullHdSupported(CameraInfo$CameraId cameraInfo$CameraId) {
        for (VideoConfiguration videoConfiguration : getList(cameraInfo$CameraId).SUPER_SLOW_CONFIGURATION.get()) {
            if (videoConfiguration.mWidth == VideoSize.FULL_HD.getVideoRect().width() && videoConfiguration.mHeight == VideoSize.FULL_HD.getVideoRect().height()) {
                return true;
            }
        }
        return false;
    }

    public static boolean isVideoHdrSupported(CameraInfo$CameraId cameraInfo$CameraId) {
        return getList(cameraInfo$CameraId).HDR_VIDEO_SUPPORTED.get().booleanValue();
    }

    public static int getVideoHdrRecordingProfile() {
        MediaCodecParametersHolder mediaCodecParametersHolder = (MediaCodecParametersHolder) getHolder(PlatformCapability$HolderType.MEDIA_CODEC);
        if (mediaCodecParametersHolder == null) {
            CamLog.e("parameter is not prepared");
            return 0;
        }
        return mediaCodecParametersHolder.getVideoHdrProfile();
    }

    public static boolean isHighSensitivityFusionSupported(CameraInfo$CameraId cameraInfo$CameraId) {
        if (!isFusionSupported(cameraInfo$CameraId)) {
            return false;
        }
        Range<Integer> range = getList(cameraInfo$CameraId).ISO_RANGE.get();
        Range<Integer> range2 = getList(cameraInfo$CameraId).FUSION_ISO_RANGE.get();
        return range == null || range2 == null || range.getLower() != range2.getLower() || range.getUpper() != range2.getUpper();
    }

    public static boolean isSideTouchSupported() {
        return sPlatformCapabilityList.SIDE_SENSE.get().booleanValue();
    }

    public static boolean isWearableSupported() {
        return sPlatformCapabilityList.WEARABLE.get().booleanValue();
    }

    public static boolean isFusionSupportedWith(CameraInfo$CameraId cameraInfo$CameraId, Resolution resolution) {
        if (!isFusionSupported(cameraInfo$CameraId)) {
            return false;
        }
        for (Rect rect : getList(cameraInfo$CameraId).FUSION_SUPPORTED_PICTURE_SIZES.get()) {
            if (resolution.getPictureRect().width() == rect.width() && resolution.getPictureRect().height() == rect.height()) {
                return true;
            }
        }
        return false;
    }

    public static boolean isFusionSupportedWith(CameraInfo$CameraId cameraInfo$CameraId, VideoSize videoSize) {
        if (!isFusionSupported(cameraInfo$CameraId)) {
            return false;
        }
        for (VideoConfiguration videoConfiguration : getList(cameraInfo$CameraId).FUSION_SUPPORTED_VIDEO_CONFIGURATION.get()) {
            if (videoSize.getVideoRect().width() == videoConfiguration.mWidth && videoSize.getVideoRect().height() == videoConfiguration.mHeight && RecordingProfile.getVideoFrameRate(videoSize, VideoHdr.HDR_OFF) <= videoConfiguration.mFps) {
                return true;
            }
        }
        return false;
    }

    public static void getCameraInfo(CameraInfo$CameraId cameraInfo$CameraId, CameraInfo cameraInfo) {
        if (!isPrepared() || hasDeviceError()) {
            CamLog.e("CameraInfo cannot be retrieved. Because PlatformCapability is not prepared.");
            return;
        }
        cameraInfo.facing = cameraInfo$CameraId;
        try {
            cameraInfo.orientation = ((Integer) sCameraManager.getCameraCharacteristics(cameraInfo$CameraId.getCameraDeviceId()).get(CameraCharacteristics.SENSOR_ORIENTATION)).intValue();
            Camera$CameraInfo camera$CameraInfo = new Camera$CameraInfo();
            Camera.getCameraInfo(cameraInfo$CameraId.getCameraDeviceIdApi1(), camera$CameraInfo);
            cameraInfo.canDisableShutterSound = camera$CameraInfo.canDisableShutterSound;
            if (CamLog.VERBOSE) {
                CamLog.d("facing = " + cameraInfo.facing + ", orientation = " + cameraInfo.orientation + ", canDisableShutterSound = " + cameraInfo.canDisableShutterSound);
            }
        } catch (CameraAccessException | IllegalArgumentException e) {
            CamLog.e("Failed in getCameraCharacteristics", e);
        }
    }

    public static boolean isForceSound(CameraInfo$CameraId cameraInfo$CameraId) {
        getCameraInfo(cameraInfo$CameraId, new CameraInfo());
        return !r0.canDisableShutterSound;
    }

    public static boolean isBypassCameraSupported() {
        return PlatformCapability$isBypassCameraSupportStateHolder.access$300();
    }

    public static boolean isDistortionCorrectionSupported(CameraInfo$CameraId cameraInfo$CameraId) {
        List<String> list = getList(cameraInfo$CameraId).DISTORTION_CORRECTION.get();
        return list != null && list.contains("on");
    }

    @Nullable
    private static ParameterHolder getHolder(PlatformCapability$HolderType platformCapability$HolderType) {
        if (sParameterHolderMap.isEmpty()) {
            try {
                if (sPreparingTaskFuture.isDone()) {
                    try {
                        try {
                            if (CamLog.DEBUG) {
                                CamLog.d("getHolder: get holders: E");
                            }
                            sParameterHolderMap.putAll(sPreparingTaskFuture.get(1000L, TimeUnit.MILLISECONDS));
                            if (CamLog.DEBUG) {
                                CamLog.d("getHolder: get holders: X");
                            }
                        } catch (TimeoutException e) {
                            CamLog.e("Preparing timed out", e);
                        }
                    } catch (InterruptedException e2) {
                        CamLog.e("Preparing interrupted", e2);
                    } catch (ExecutionException e3) {
                        CamLog.e("Preparing failed", e3);
                    }
                } else {
                    sPreparingTaskFuture.cancel(false);
                    sPrepareTaskExecutor.shutdown();
                    try {
                        if (CamLog.DEBUG) {
                            CamLog.d("getHolder: call directly: E");
                        }
                        sParameterHolderMap.putAll(new PlatformCapability$PrepareParametersTask(null).call2());
                        if (CamLog.DEBUG) {
                            CamLog.d("getHolder: call directly: X");
                        }
                    } catch (Exception e4) {
                        CamLog.e("Failed to call directly", e4);
                    }
                }
            } finally {
                sPrepareTaskExecutor.shutdown();
            }
        }
        return sParameterHolderMap.get(platformCapability$HolderType);
    }

    public static boolean isSuperSlowMotionSupported(CameraInfo$CameraId cameraInfo$CameraId) {
        List<String> list = getList(cameraInfo$CameraId).SUPER_SLOW_VALUES.get();
        return list != null && list.contains("on");
    }

    public static void setDeviceError(boolean z) {
        mHasDeviceError = z;
    }

    public static boolean hasDeviceError() {
        return mHasDeviceError;
    }
}

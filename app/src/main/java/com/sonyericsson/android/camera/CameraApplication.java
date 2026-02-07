package com.sonyericsson.android.camera;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.PowerManager;
import com.sonyericsson.android.camera.debug.DebugParameterUtils;
import com.sonyericsson.android.camera.device.CameraDeviceHandler;
import com.sonyericsson.android.camera.parameter.UserSettingsLoaderImpl;
import com.sonyericsson.android.camera.setting.UserSettingsLoader;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.PerfLog;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.cameracommon.storage.Storage;
import com.sonyericsson.cameracommon.storage.StorageImpl;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class CameraApplication extends Application {
    private static final int CLASS_PRELOAD_WAKELOCK_TIMEOUT_MILLIS = 2000;
    public static final String TAG = "CameraApplication";
    private static Context sContext;
    private static final Handler sUiThreadHandler = new Handler();
    private CameraDeviceHandler mCameraDeviceHandler;
    private StorageImpl mStorage;
    private UserSettingsLoaderImpl mUserSettingsLoader;
    private ClassStaticBlockPreLoadThread mClassPreloadThread = null;
    private ClassStaticBlockPreLoadThread$PreloadDoneCallback mClassPreloadDoneCallback = null;

    static /* synthetic */ UserSettingsLoaderImpl access$000(CameraApplication cameraApplication) {
        return cameraApplication.mUserSettingsLoader;
    }

    static /* synthetic */ ClassStaticBlockPreLoadThread access$202(CameraApplication cameraApplication, ClassStaticBlockPreLoadThread classStaticBlockPreLoadThread) {
        cameraApplication.mClassPreloadThread = classStaticBlockPreLoadThread;
        return classStaticBlockPreLoadThread;
    }

    static /* synthetic */ ClassStaticBlockPreLoadThread$PreloadDoneCallback access$302(CameraApplication cameraApplication, ClassStaticBlockPreLoadThread$PreloadDoneCallback classStaticBlockPreLoadThread$PreloadDoneCallback) {
        cameraApplication.mClassPreloadDoneCallback = classStaticBlockPreLoadThread$PreloadDoneCallback;
        return classStaticBlockPreLoadThread$PreloadDoneCallback;
    }

    public CameraApplication() {
        sContext = this;
    }

    public static final Handler getUiThreadHandler() {
        return sUiThreadHandler;
    }

    @Override // android.app.Application
    public void onCreate() {
        PerfLog.APPLICATION_ON_CREATE.begin();
        if (CamLog.DEBUG) {
            CamLog.d("onCreate() : E");
        }
        this.mStorage = new StorageImpl();
        this.mStorage.open(getApplicationContext());
        this.mUserSettingsLoader = new UserSettingsLoaderImpl(this, this.mStorage);
        PlatformCapability.prepareAsync(new CameraApplication$1(this));
        this.mCameraDeviceHandler = new CameraDeviceHandler(sContext);
        this.mClassPreloadDoneCallback = new CameraApplication$ClassPreloadDoneCallback(this, null);
        this.mClassPreloadThread = new ClassStaticBlockPreLoadThread(this.mClassPreloadDoneCallback);
        this.mClassPreloadThread.setPriority(10);
        this.mClassPreloadThread.setName("ClassStaticBlockPreLoadThread");
        this.mClassPreloadThread.start();
        ((PowerManager) getSystemService("power")).newWakeLock(1, "ClassStaticBlockPreLoadThread").acquire(2000L);
        super.onCreate();
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.mStorage);
        registerActivityLifecycleCallbacks(new CameraApplication$ActivityLifeCycleCallbackImpl(arrayList));
        DebugParameterUtils.INSTANCE.preload(this);
        if (CamLog.DEBUG) {
            CamLog.d("onCreate() : X");
        }
        PerfLog.APPLICATION_ON_CREATE.end();
    }

    @Override // android.app.Application
    public void onTerminate() {
        super.onTerminate();
        this.mUserSettingsLoader.release();
        this.mStorage.close();
    }

    public static Context getContext() {
        return sContext;
    }

    public UserSettingsLoader getUserSettingsLoader() {
        return this.mUserSettingsLoader;
    }

    Storage getStorage() {
        return this.mStorage;
    }

    CameraDeviceHandler getCameraDevice() {
        return this.mCameraDeviceHandler;
    }
}

package com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.ThreadUtil;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class WearableBridgeClient {
    private static final int BACKGROUND_TASK_TIMEOUT_MILLIS = 3000;
    private static final String TAG = "WearableBridgeClient";
    private Activity mActivity;
    private ExecutorService mBackWorker;
    private Handler mCallbackHandler;
    private ObserveWearableInterface$LifeCycleObserver mLifeCycleObserver;
    private ObserveWearableInterface$PhotoEventObserver mPhotoEventObserver;
    private ObserveWearableInterface$VideoEventObserver mVideoEventObserver;
    private boolean mIsObserverEnabled = false;
    private NotifyWearableInterface$LifeCycleNotifier mLifeCycleNotifier = null;
    private NotifyWearableInterface$PhotoStateNotifier mPhotoStateNotifier = null;
    private NotifyWearableInterface$VideoStateNotifier mVideoStateNotifier = null;
    private WearableBridgeClientBroadcastReceiver mWearableBridgeClientBroadcastReceiver = null;
    private IntentFilter mWearableBridgeClientBroadcastFilter = null;
    private final CountDownLatch mInitializationDone = new CountDownLatch(1);

    static /* synthetic */ ObserveWearableInterface$PhotoEventObserver access$1000(WearableBridgeClient wearableBridgeClient) {
        return wearableBridgeClient.mPhotoEventObserver;
    }

    static /* synthetic */ NotifyWearableInterface$LifeCycleNotifier access$102(WearableBridgeClient wearableBridgeClient, NotifyWearableInterface$LifeCycleNotifier notifyWearableInterface$LifeCycleNotifier) {
        wearableBridgeClient.mLifeCycleNotifier = notifyWearableInterface$LifeCycleNotifier;
        return notifyWearableInterface$LifeCycleNotifier;
    }

    static /* synthetic */ ObserveWearableInterface$VideoEventObserver access$1100(WearableBridgeClient wearableBridgeClient) {
        return wearableBridgeClient.mVideoEventObserver;
    }

    static /* synthetic */ IntentFilter access$1200(WearableBridgeClient wearableBridgeClient) {
        return wearableBridgeClient.mWearableBridgeClientBroadcastFilter;
    }

    static /* synthetic */ IntentFilter access$1202(WearableBridgeClient wearableBridgeClient, IntentFilter intentFilter) {
        wearableBridgeClient.mWearableBridgeClientBroadcastFilter = intentFilter;
        return intentFilter;
    }

    static /* synthetic */ CountDownLatch access$1300(WearableBridgeClient wearableBridgeClient) {
        return wearableBridgeClient.mInitializationDone;
    }

    static /* synthetic */ ExecutorService access$1500(WearableBridgeClient wearableBridgeClient) {
        return wearableBridgeClient.mBackWorker;
    }

    static /* synthetic */ boolean access$1700(WearableBridgeClient wearableBridgeClient) {
        return wearableBridgeClient.mIsObserverEnabled;
    }

    static /* synthetic */ boolean access$1702(WearableBridgeClient wearableBridgeClient, boolean z) {
        wearableBridgeClient.mIsObserverEnabled = z;
        return z;
    }

    static /* synthetic */ Activity access$1800(WearableBridgeClient wearableBridgeClient) {
        return wearableBridgeClient.mActivity;
    }

    static /* synthetic */ Intent access$1900(WearableBridgeClient wearableBridgeClient, String str) {
        return wearableBridgeClient.getNotifierIntent(str);
    }

    static /* synthetic */ NotifyWearableInterface$PhotoStateNotifier access$302(WearableBridgeClient wearableBridgeClient, NotifyWearableInterface$PhotoStateNotifier notifyWearableInterface$PhotoStateNotifier) {
        wearableBridgeClient.mPhotoStateNotifier = notifyWearableInterface$PhotoStateNotifier;
        return notifyWearableInterface$PhotoStateNotifier;
    }

    static /* synthetic */ NotifyWearableInterface$VideoStateNotifier access$502(WearableBridgeClient wearableBridgeClient, NotifyWearableInterface$VideoStateNotifier notifyWearableInterface$VideoStateNotifier) {
        wearableBridgeClient.mVideoStateNotifier = notifyWearableInterface$VideoStateNotifier;
        return notifyWearableInterface$VideoStateNotifier;
    }

    static /* synthetic */ WearableBridgeClientBroadcastReceiver access$700(WearableBridgeClient wearableBridgeClient) {
        return wearableBridgeClient.mWearableBridgeClientBroadcastReceiver;
    }

    static /* synthetic */ WearableBridgeClientBroadcastReceiver access$702(WearableBridgeClient wearableBridgeClient, WearableBridgeClientBroadcastReceiver wearableBridgeClientBroadcastReceiver) {
        wearableBridgeClient.mWearableBridgeClientBroadcastReceiver = wearableBridgeClientBroadcastReceiver;
        return wearableBridgeClientBroadcastReceiver;
    }

    static /* synthetic */ Handler access$800(WearableBridgeClient wearableBridgeClient) {
        return wearableBridgeClient.mCallbackHandler;
    }

    static /* synthetic */ ObserveWearableInterface$LifeCycleObserver access$900(WearableBridgeClient wearableBridgeClient) {
        return wearableBridgeClient.mLifeCycleObserver;
    }

    public WearableBridgeClient(Activity activity, Handler handler, ObserveWearableInterface$LifeCycleObserver observeWearableInterface$LifeCycleObserver, ObserveWearableInterface$PhotoEventObserver observeWearableInterface$PhotoEventObserver, ObserveWearableInterface$VideoEventObserver observeWearableInterface$VideoEventObserver) {
        this.mActivity = null;
        this.mCallbackHandler = null;
        this.mLifeCycleObserver = null;
        this.mPhotoEventObserver = null;
        this.mVideoEventObserver = null;
        this.mBackWorker = null;
        if (CamLog.DEBUG) {
            CamLog.d("CONSTRUCTOR : E");
        }
        this.mActivity = activity;
        this.mCallbackHandler = handler;
        this.mLifeCycleObserver = observeWearableInterface$LifeCycleObserver;
        this.mPhotoEventObserver = observeWearableInterface$PhotoEventObserver;
        this.mVideoEventObserver = observeWearableInterface$VideoEventObserver;
        this.mBackWorker = ThreadUtil.buildExecutor("WearableBridgeClient");
        this.mBackWorker.execute(new WearableBridgeClient$InitializeTask(this, null));
        if (CamLog.DEBUG) {
            CamLog.d("CONSTRUCTOR : X");
        }
    }

    public void release() {
        if (CamLog.DEBUG) {
            CamLog.d("release() : E");
        }
        this.mBackWorker.shutdown();
        try {
            this.mBackWorker.awaitTermination(3000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            CamLog.e("Failed to shutdown mBackWorker.", e);
        }
        this.mWearableBridgeClientBroadcastReceiver.release();
        this.mWearableBridgeClientBroadcastReceiver = null;
        this.mWearableBridgeClientBroadcastFilter = null;
        this.mLifeCycleNotifier = null;
        this.mPhotoStateNotifier = null;
        this.mVideoStateNotifier = null;
        this.mActivity = null;
        this.mCallbackHandler = null;
        this.mLifeCycleObserver = null;
        this.mPhotoEventObserver = null;
        this.mVideoEventObserver = null;
        if (CamLog.DEBUG) {
            CamLog.d("release() : X");
        }
    }

    private Intent getNotifierIntent(String str) {
        Intent intent = new Intent(str);
        intent.setPackage("com.sonymobile.cameracommon.wearablebridge");
        intent.putExtra("wearable-bridge-client-package-name-key", this.mActivity.getPackageName());
        intent.addFlags(36);
        return intent;
    }

    public NotifyWearableInterface$LifeCycleNotifier getLifeCycleNotifier() {
        return this.mLifeCycleNotifier;
    }

    public NotifyWearableInterface$PhotoStateNotifier getPhotoStateNotifier() {
        return this.mPhotoStateNotifier;
    }

    public NotifyWearableInterface$VideoStateNotifier getVideoStateNotifier() {
        return this.mVideoStateNotifier;
    }

    public void joinInitializeTask() {
        if (CamLog.DEBUG) {
            CamLog.d("joinInitializeTask in");
        }
        try {
            if (CamLog.DEBUG) {
                CamLog.d("Future.get() in:");
            }
            this.mInitializationDone.await();
            if (CamLog.DEBUG) {
                CamLog.d("Future.get() out:");
            }
        } catch (InterruptedException e) {
            CamLog.e("InitializeTaskFeature has been interrupted: " + e);
        }
        if (CamLog.DEBUG) {
            CamLog.d("joinInitializeTask out");
        }
    }
}

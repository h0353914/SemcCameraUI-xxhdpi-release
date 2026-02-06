package com.sonyericsson.android.camera.controller.xperiaxloops;

import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import android.support.annotation.UiThread;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonymobile.xperiaxloops.IXperiaXLoopsService;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: XperiaXLoopsManager.kt */
@Metadata(bv = {1, 0, 2}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007*\u0002\t\f\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0011\u001a\u00020\u0012H\u0007J\b\u0010\u0013\u001a\u00020\u0012H\u0007J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0006H\u0002J\b\u0010\u0016\u001a\u00020\u0012H\u0002J\b\u0010\u0017\u001a\u00020\u0012H\u0002R\u0011\u0010\u0005\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0007R\u0010\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\nR\u0010\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;", "", "mContext", "Landroid/content/Context;", "(Landroid/content/Context;)V", "isConnected", "", "()Z", "mCallback", "com/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$mCallback$1", "Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$mCallback$1;", "mConnection", "com/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$mConnection$1", "Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$mConnection$1;", "mIsConnectionRequested", "mService", "Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;", "connect", "", "disconnect", "notifyShowLoopsByApps", "isShown", "registerCallback", "unregisterCallback", "Companion", "SemcCameraUI_release"}, k = 1, mv = {1, 1, 11})
public final class XperiaXLoopsManager {
    public static final XperiaXLoopsManager$Companion Companion = new XperiaXLoopsManager$Companion(null);
    private static final String LOOPS_SERVICE_CLASS_NAME = "com.sonymobile.xperiaxloops.XperiaXLoopsService";
    private static final String LOOPS_SERVICE_PACKAGE_NAME = "com.sonymobile.xperiaxloops";
    private static final int TYPE_CAMERA = 2;
    private final XperiaXLoopsManager$mCallback$1 mCallback;
    private final XperiaXLoopsManager$mConnection$1 mConnection;
    private final Context mContext;
    private boolean mIsConnectionRequested;
    private IXperiaXLoopsService mService;

    public XperiaXLoopsManager(@NotNull Context mContext) {
        Intrinsics.checkParameterIsNotNull(mContext, "mContext");
        this.mContext = mContext;
        this.mCallback = new XperiaXLoopsManager$mCallback$1();
        this.mConnection = new XperiaXLoopsManager$mConnection$1(this);
    }

    @NotNull
    public static final /* synthetic */ Context access$getMContext$p(XperiaXLoopsManager xperiaXLoopsManager) {
        return xperiaXLoopsManager.mContext;
    }

    public static final /* synthetic */ boolean access$getMIsConnectionRequested$p(XperiaXLoopsManager xperiaXLoopsManager) {
        return xperiaXLoopsManager.mIsConnectionRequested;
    }

    @Nullable
    public static final /* synthetic */ IXperiaXLoopsService access$getMService$p(XperiaXLoopsManager xperiaXLoopsManager) {
        return xperiaXLoopsManager.mService;
    }

    public static final /* synthetic */ void access$notifyShowLoopsByApps(XperiaXLoopsManager xperiaXLoopsManager, boolean z) {
        xperiaXLoopsManager.notifyShowLoopsByApps(z);
    }

    public static final /* synthetic */ void access$registerCallback(XperiaXLoopsManager xperiaXLoopsManager) {
        xperiaXLoopsManager.registerCallback();
    }

    public static final /* synthetic */ void access$setMIsConnectionRequested$p(XperiaXLoopsManager xperiaXLoopsManager, boolean z) {
        xperiaXLoopsManager.mIsConnectionRequested = z;
    }

    public static final /* synthetic */ void access$setMService$p(XperiaXLoopsManager xperiaXLoopsManager, @Nullable IXperiaXLoopsService iXperiaXLoopsService) {
        xperiaXLoopsManager.mService = iXperiaXLoopsService;
    }

    public final boolean isConnected() {
        return this.mService != null;
    }

    @UiThread
    public final void connect() {
        if (CamLog.DEBUG) {
            CamLog.d("connect");
        }
        Intent intent = new Intent();
        intent.setClassName(LOOPS_SERVICE_PACKAGE_NAME, LOOPS_SERVICE_CLASS_NAME);
        this.mContext.bindService(intent, this.mConnection, 1);
        this.mIsConnectionRequested = true;
    }

    @UiThread
    public final void disconnect() {
        if (CamLog.DEBUG) {
            CamLog.d("disconnect");
        }
        if (isConnected()) {
            notifyShowLoopsByApps(false);
            unregisterCallback();
            this.mContext.unbindService(this.mConnection);
            this.mService = (IXperiaXLoopsService) null;
        }
        this.mIsConnectionRequested = false;
    }

    private final void registerCallback() {
        if (CamLog.VERBOSE) {
            CamLog.d("registerCallback");
        }
        try {
            IXperiaXLoopsService iXperiaXLoopsService = this.mService;
            if (iXperiaXLoopsService != null) {
                iXperiaXLoopsService.registerCallback(TYPE_CAMERA, this.mCallback);
            }
        } catch (RemoteException e) {
            CamLog.e(e.toString());
        }
    }

    private final void unregisterCallback() {
        if (CamLog.VERBOSE) {
            CamLog.d("unregisterCallback");
        }
        try {
            IXperiaXLoopsService iXperiaXLoopsService = this.mService;
            if (iXperiaXLoopsService != null) {
                iXperiaXLoopsService.unregisterCallback(TYPE_CAMERA, this.mCallback);
            }
        } catch (RemoteException e) {
            CamLog.e(e.toString());
        }
    }

    private final void notifyShowLoopsByApps(boolean isShown) {
        if (CamLog.VERBOSE) {
            CamLog.d("notifyShowLoopsByApps: " + isShown);
        }
        try {
            IXperiaXLoopsService iXperiaXLoopsService = this.mService;
            if (iXperiaXLoopsService != null) {
                iXperiaXLoopsService.notifyShowLoopsByApps(isShown, TYPE_CAMERA);
            }
        } catch (RemoteException e) {
            CamLog.e(e.toString());
        }
    }
}

package com.sonyericsson.android.camera.controller.xperiaxloops;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonymobile.xperiaxloops.IXperiaXLoopsService;
import com.sonymobile.xperiaxloops.IXperiaXLoopsService$Stub;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: XperiaXLoopsManager.kt */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\t"}, d2 = {"com/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$mConnection$1", "Landroid/content/ServiceConnection;", "onServiceConnected", "", "name", "Landroid/content/ComponentName;", "service", "Landroid/os/IBinder;", "onServiceDisconnected", "SemcCameraUI_release"}, k = 1, mv = {1, 1, 11})
public final class XperiaXLoopsManager$mConnection$1 implements ServiceConnection {
    final /* synthetic */ XperiaXLoopsManager this$0;

    XperiaXLoopsManager$mConnection$1(XperiaXLoopsManager xperiaXLoopsManager) {
        this.this$0 = xperiaXLoopsManager;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(@NotNull ComponentName name, @NotNull IBinder service) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(service, "service");
        if (CamLog.DEBUG) {
            CamLog.d("onServiceConnected");
        }
        if (XperiaXLoopsManager.access$getMIsConnectionRequested$p(this.this$0)) {
            XperiaXLoopsManager.access$setMService$p(this.this$0, IXperiaXLoopsService$Stub.asInterface(service));
            XperiaXLoopsManager.access$registerCallback(this.this$0);
            XperiaXLoopsManager.access$notifyShowLoopsByApps(this.this$0, true);
        } else {
            if (CamLog.DEBUG) {
                CamLog.d("Loops is already hidden.");
            }
            XperiaXLoopsManager.access$getMContext$p(this.this$0).unbindService(this);
            XperiaXLoopsManager.access$setMService$p(this.this$0, (IXperiaXLoopsService) null);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(@NotNull ComponentName name) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        if (CamLog.DEBUG) {
            CamLog.d("onServiceDisConnected");
        }
    }
}

package com.sonyericsson.android.camera.device;

import android.util.Printer;
import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
class CameraDeviceHandler$CloseBypassCameraTimeoutTask$1 implements Printer {
    final /* synthetic */ CameraDeviceHandler$CloseBypassCameraTimeoutTask this$1;

    CameraDeviceHandler$CloseBypassCameraTimeoutTask$1(CameraDeviceHandler$CloseBypassCameraTimeoutTask cameraDeviceHandler$CloseBypassCameraTimeoutTask) {
        this.this$1 = cameraDeviceHandler$CloseBypassCameraTimeoutTask;
    }

    @Override // android.util.Printer
    public void println(String str) {
        CamLog.e("CloseBypassCameraTimeoutTask", str);
    }
}

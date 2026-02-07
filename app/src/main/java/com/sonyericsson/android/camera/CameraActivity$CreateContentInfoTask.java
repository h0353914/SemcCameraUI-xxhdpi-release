package com.sonyericsson.android.camera;

import android.net.Uri;
import com.sonyericsson.android.camera.view.ViewFinderImpl;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class CameraActivity$CreateContentInfoTask implements Runnable {
    ArrayList<Uri> mCapturedUris;
    final /* synthetic */ CameraActivity this$0;

    CameraActivity$CreateContentInfoTask(CameraActivity cameraActivity, ArrayList<Uri> arrayList) {
        this.this$0 = cameraActivity;
        this.mCapturedUris = new ArrayList<>();
        this.mCapturedUris = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        ((ViewFinderImpl) CameraActivity.access$2900(this.this$0)).requestCreateContentInfoSync(this.mCapturedUris);
    }
}

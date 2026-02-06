package com.sonyericsson.android.camera;

class CameraApplication$ClassPreloadDoneCallback implements ClassStaticBlockPreLoadThread$PreloadDoneCallback {
    final /* synthetic */ CameraApplication this$0;

    private CameraApplication$ClassPreloadDoneCallback(CameraApplication cameraApplication) {
        this.this$0 = cameraApplication;
    }

    /* synthetic */ CameraApplication$ClassPreloadDoneCallback(CameraApplication cameraApplication, CameraApplication$1 cameraApplication$1) {
        this(cameraApplication);
    }

    @Override // com.sonyericsson.android.camera.ClassStaticBlockPreLoadThread$PreloadDoneCallback
    public void onPreloadDone() {
        CameraApplication.access$202(this.this$0, null);
        CameraApplication.access$302(this.this$0, null);
    }
}

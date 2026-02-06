package com.sonyericsson.android.camera.view;

import com.sonyericsson.cameracommon.storage.Storage$StorageType;

class ViewFinderImpl$1$1 implements Runnable {
    final /* synthetic */ ViewFinderImpl$1 this$1;

    ViewFinderImpl$1$1(ViewFinderImpl$1 viewFinderImpl$1) {
        this.this$1 = viewFinderImpl$1;
    }

    @Override // java.lang.Runnable
    public void run() {
        ViewFinderImpl.access$300(this.this$1.this$0).getLowMemoryInternalIndicator().set(!ViewFinderImpl.access$200(this.this$1.this$0, Storage$StorageType.INTERNAL));
        ViewFinderImpl.access$300(this.this$1.this$0).getLowMemorySdIndicator().set(!ViewFinderImpl.access$200(this.this$1.this$0, Storage$StorageType.EXTERNAL_CARD));
    }
}

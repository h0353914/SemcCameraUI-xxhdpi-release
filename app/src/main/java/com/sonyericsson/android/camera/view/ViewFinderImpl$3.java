package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.util.CamLog;

class ViewFinderImpl$3 implements Runnable {
    final /* synthetic */ ViewFinderImpl this$0;

    ViewFinderImpl$3(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (ViewFinderImpl.access$2300(this.this$0) != null) {
            this.this$0.notifyOnEvfPrepared();
        } else {
            CamLog.w("All reference of ViewFinderImpl has aleady been released.");
        }
    }
}

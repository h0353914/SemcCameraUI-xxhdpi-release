package com.sonyericsson.android.camera.view.modeselector;

import android.database.ContentObserver;
import android.os.Handler;
import com.sonyericsson.android.camera.util.CamLog;

class CapturingModeListLoader$1 extends ContentObserver {
    final /* synthetic */ CapturingModeListLoader this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CapturingModeListLoader$1(CapturingModeListLoader capturingModeListLoader, Handler handler) {
        super(handler);
        this.this$0 = capturingModeListLoader;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        if (CamLog.VERBOSE) {
            CamLog.d("CAPTURINGMODE_CONTENT_URI has been changed.");
        }
        this.this$0.startLoadTask();
    }
}

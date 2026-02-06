package com.sonyericsson.android.camera.view.modeselector.internalmode.googlelens;

import com.sonyericsson.android.camera.util.CamLog;

class GoogleLensModeActivity$1 implements Runnable {
    final /* synthetic */ GoogleLensModeActivity this$0;

    GoogleLensModeActivity$1(GoogleLensModeActivity googleLensModeActivity) {
        this.this$0 = googleLensModeActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        CamLog.e("Finish. Timeout of launch Google Lens.");
        GoogleLensModeActivity.access$000(this.this$0);
        this.this$0.finish();
    }
}

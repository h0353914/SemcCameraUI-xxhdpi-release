package com.sonyericsson.android.camera.view.modeselector.internalmode.googlelens;

import android.app.KeyguardManager$KeyguardDismissCallback;
import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
class GoogleLensModeActivity$KeyguardDismissCallbackImpl extends KeyguardManager$KeyguardDismissCallback {
    final /* synthetic */ GoogleLensModeActivity this$0;

    private GoogleLensModeActivity$KeyguardDismissCallbackImpl(GoogleLensModeActivity googleLensModeActivity) {
        this.this$0 = googleLensModeActivity;
    }

    /* synthetic */ GoogleLensModeActivity$KeyguardDismissCallbackImpl(GoogleLensModeActivity googleLensModeActivity, GoogleLensModeActivity$1 googleLensModeActivity$1) {
        this(googleLensModeActivity);
    }

    @Override // android.app.KeyguardManager$KeyguardDismissCallback
    public void onDismissSucceeded() {
        if (CamLog.DEBUG) {
            CamLog.d("Keyguard successfully dismissed");
        }
        if (GoogleLensModeActivity.access$200(this.this$0)) {
            GoogleLensModeActivity.access$300(this.this$0, GoogleLensModeActivity$State.DONE);
        } else {
            GoogleLensModeActivity.access$300(this.this$0, GoogleLensModeActivity$State.READY);
            this.this$0.finish();
        }
    }

    @Override // android.app.KeyguardManager$KeyguardDismissCallback
    public void onDismissError() {
        if (CamLog.DEBUG) {
            CamLog.d("Error dismissing keyguard");
        }
        GoogleLensModeActivity.access$300(this.this$0, GoogleLensModeActivity$State.READY);
        this.this$0.finish();
    }

    @Override // android.app.KeyguardManager$KeyguardDismissCallback
    public void onDismissCancelled() {
        if (CamLog.DEBUG) {
            CamLog.d("Keyguard dismiss cancelled");
        }
        GoogleLensModeActivity.access$300(this.this$0, GoogleLensModeActivity$State.READY);
        this.this$0.finish();
    }
}

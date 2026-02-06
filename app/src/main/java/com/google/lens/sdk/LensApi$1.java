package com.google.lens.sdk;

import android.app.Activity;
import android.app.KeyguardManager$KeyguardDismissCallback;
import android.util.Log;

class LensApi$1 extends KeyguardManager$KeyguardDismissCallback {
    final /* synthetic */ LensApi this$0;
    final /* synthetic */ Activity val$activity;

    LensApi$1(final LensApi this$0, final Activity val$activity) {
        this.this$0 = this$0;
        this.val$activity = val$activity;
    }

    @Override // android.app.KeyguardManager$KeyguardDismissCallback
    public void onDismissSucceeded() {
        Log.d("LensApi", "Keyguard successfully dismissed");
        LensApi.access$100(this.this$0, this.val$activity);
    }

    @Override // android.app.KeyguardManager$KeyguardDismissCallback
    public void onDismissError() {
        Log.e("LensApi", "Error dismissing keyguard");
    }

    @Override // android.app.KeyguardManager$KeyguardDismissCallback
    public void onDismissCancelled() {
        Log.d("LensApi", "Keyguard dismiss cancelled");
    }
}

package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.animation.AnimationRequest;

/* JADX INFO: loaded from: classes.dex */
class ViewFinderImpl$14$1 implements Runnable {
    final /* synthetic */ ViewFinderImpl$14 this$1;
    final /* synthetic */ AnimationRequest val$nextRequest;

    ViewFinderImpl$14$1(ViewFinderImpl$14 viewFinderImpl$14, AnimationRequest animationRequest) {
        this.this$1 = viewFinderImpl$14;
        this.val$nextRequest = animationRequest;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke current:" + this.val$nextRequest.mFrom.name() + ", target:" + this.val$nextRequest.mTarget.name());
        }
        ViewFinderImpl.access$1200(this.this$1.this$0, this.val$nextRequest);
    }
}

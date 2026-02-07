package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.animation.AnimationRequest;

/* JADX INFO: loaded from: classes.dex */
class ViewFinderImpl$15 implements Runnable {
    final /* synthetic */ ViewFinderImpl this$0;
    final /* synthetic */ AnimationRequest val$nextRequest;

    ViewFinderImpl$15(ViewFinderImpl viewFinderImpl, AnimationRequest animationRequest) {
        this.this$0 = viewFinderImpl;
        this.val$nextRequest = animationRequest;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke current:" + this.val$nextRequest.mFrom.name() + ", target:" + this.val$nextRequest.mTarget.name());
        }
        this.this$0.hideSurface();
        this.this$0.hideViews();
        this.this$0.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_RELEASED, new Object[0]);
        ViewFinderImpl.access$1200(this.this$0, this.val$nextRequest);
    }
}

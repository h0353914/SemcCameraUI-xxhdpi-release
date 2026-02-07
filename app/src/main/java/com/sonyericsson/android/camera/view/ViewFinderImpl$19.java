package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.animation.AnimationRequest;
import com.sonyericsson.android.camera.view.animation.AnimationRequest$AnimationDegree;
import com.sonyericsson.android.camera.view.animation.AnimationRequest$AnimationType;

/* JADX INFO: loaded from: classes.dex */
class ViewFinderImpl$19 implements Runnable {
    final /* synthetic */ ViewFinderImpl this$0;

    ViewFinderImpl$19(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke AfterSwitchAnimationTask");
        }
        ViewFinderImpl.access$5100(this.this$0).setAlpha(0.0f);
        ViewFinderImpl.access$5200(this.this$0).requestAnimation(new AnimationRequest(AnimationRequest$AnimationType.SWITCH_TOUCH, AnimationRequest$AnimationDegree.FINISH, ViewFinderImpl.access$900(this.this$0), ViewFinderImpl.access$900(this.this$0)), new ViewFinderImpl$19$1(this));
    }
}

package com.sonyericsson.android.camera.view;

import android.view.animation.Animation;
import android.view.animation.Animation$AnimationListener;

/* JADX INFO: loaded from: classes.dex */
class ViewFinderImpl$20 implements Animation$AnimationListener {
    final /* synthetic */ ViewFinderImpl this$0;

    @Override // android.view.animation.Animation$AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation$AnimationListener
    public void onAnimationStart(Animation animation) {
    }

    ViewFinderImpl$20(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    @Override // android.view.animation.Animation$AnimationListener
    public void onAnimationEnd(Animation animation) {
        if (ViewFinderImpl.access$2200(this.this$0).isRecording()) {
            ViewFinderImpl.access$700(this.this$0).getContentsViewController().hide();
        }
    }
}

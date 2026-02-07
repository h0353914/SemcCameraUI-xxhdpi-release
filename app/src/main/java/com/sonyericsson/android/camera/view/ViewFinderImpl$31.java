package com.sonyericsson.android.camera.view;

import android.graphics.drawable.Animatable2$AnimationCallback;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
class ViewFinderImpl$31 extends Animatable2$AnimationCallback {
    final /* synthetic */ ViewFinderImpl this$0;

    ViewFinderImpl$31(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    @Override // android.graphics.drawable.Animatable2$AnimationCallback
    public void onAnimationEnd(Drawable drawable) {
        ViewFinderImpl.access$300(this.this$0).releasePredictiveLaunchCover();
        if (ViewFinderImpl.access$3600(this.this$0) || ViewFinderImpl.access$9800(this.this$0)) {
            return;
        }
        ViewFinderImpl.access$300(this.this$0).setViewFinderGestureDetectorEnabled(true, true);
    }
}

package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.view.baselayout.PredictiveLaunchCoverView$PredictiveLaunchCoverTouchListener;

/* JADX INFO: loaded from: classes.dex */
class ViewFinderImpl$PredictiveLaunchCoverTouchListenerImpl implements PredictiveLaunchCoverView$PredictiveLaunchCoverTouchListener {
    final /* synthetic */ ViewFinderImpl this$0;

    private ViewFinderImpl$PredictiveLaunchCoverTouchListenerImpl(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    /* synthetic */ ViewFinderImpl$PredictiveLaunchCoverTouchListenerImpl(ViewFinderImpl viewFinderImpl, ViewFinderImpl$1 viewFinderImpl$1) {
        this(viewFinderImpl);
    }

    @Override // com.sonyericsson.android.camera.view.baselayout.PredictiveLaunchCoverView$PredictiveLaunchCoverTouchListener
    public void onCircleTouched() {
        ViewFinderImpl.access$2000(this.this$0).sendTouchUp(UserEventHandler$UiComponent.PREDICTIVE_LAUNCH_COVER, null);
    }
}

package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.cameracommon.review.ReviewWindowListener;

/* JADX INFO: loaded from: classes.dex */
class ViewFinderImpl$ReviewWindowListenerImpl implements ReviewWindowListener {
    final /* synthetic */ ViewFinderImpl this$0;

    private ViewFinderImpl$ReviewWindowListenerImpl(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    /* synthetic */ ViewFinderImpl$ReviewWindowListenerImpl(ViewFinderImpl viewFinderImpl, ViewFinderImpl$1 viewFinderImpl$1) {
        this(viewFinderImpl);
    }

    @Override // com.sonyericsson.cameracommon.review.ReviewWindowListener
    public void onReviewWindowOpen() {
        ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_DIALOG_OPENED, ViewFinder$UiComponentKind.REVIEW_WINDOW);
    }

    @Override // com.sonyericsson.cameracommon.review.ReviewWindowListener
    public void onReviewWindowClose() {
        ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_DIALOG_CLOSED, new Object[0]);
    }
}

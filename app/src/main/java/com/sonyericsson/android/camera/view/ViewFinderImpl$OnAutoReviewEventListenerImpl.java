package com.sonyericsson.android.camera.view;

class ViewFinderImpl$OnAutoReviewEventListenerImpl implements AutoReviewController$OnAutoReviewEventListener {
    final /* synthetic */ ViewFinderImpl this$0;

    private ViewFinderImpl$OnAutoReviewEventListenerImpl(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    /* synthetic */ ViewFinderImpl$OnAutoReviewEventListenerImpl(ViewFinderImpl viewFinderImpl, ViewFinderImpl$1 viewFinderImpl$1) {
        this(viewFinderImpl);
    }

    @Override // com.sonyericsson.android.camera.view.AutoReviewController$OnAutoReviewEventListener
    public void onAutoReviewClosed() {
        ViewFinderImpl.access$6900(this.this$0);
        ViewFinderImpl.access$7000(this.this$0);
    }
}

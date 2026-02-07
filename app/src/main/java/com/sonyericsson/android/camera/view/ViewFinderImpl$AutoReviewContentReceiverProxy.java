package com.sonyericsson.android.camera.view;

/* JADX INFO: loaded from: classes.dex */
public class ViewFinderImpl$AutoReviewContentReceiverProxy {
    private AutoReviewContent$ContentReceiver mReceiver;

    public void bindReceiver(AutoReviewContent$ContentReceiver autoReviewContent$ContentReceiver) {
        this.mReceiver = autoReviewContent$ContentReceiver;
    }

    protected void notifyContent(AutoReviewContent autoReviewContent) {
        this.mReceiver.onReceive(autoReviewContent);
    }
}

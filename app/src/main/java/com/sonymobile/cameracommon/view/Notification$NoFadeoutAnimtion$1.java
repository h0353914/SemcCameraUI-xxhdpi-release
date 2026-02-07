package com.sonymobile.cameracommon.view;

/* JADX INFO: loaded from: classes.dex */
class Notification$NoFadeoutAnimtion$1 implements Runnable {
    final /* synthetic */ Notification$NoFadeoutAnimtion this$1;

    Notification$NoFadeoutAnimtion$1(Notification$NoFadeoutAnimtion notification$NoFadeoutAnimtion) {
        this.this$1 = notification$NoFadeoutAnimtion;
    }

    @Override // java.lang.Runnable
    public void run() {
        Notification.access$000(this.this$1.this$0).setVisibility(4);
        Notification.access$100(this.this$1.this$0).setVisibility(4);
        this.this$1.this$0.setAnimationStatus(false);
    }
}

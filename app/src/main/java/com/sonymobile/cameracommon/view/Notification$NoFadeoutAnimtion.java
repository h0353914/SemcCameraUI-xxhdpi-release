package com.sonymobile.cameracommon.view;

class Notification$NoFadeoutAnimtion implements Notification$SceneTextAnimation {
    private Runnable mSceneTextRunnable;
    final /* synthetic */ Notification this$0;

    Notification$NoFadeoutAnimtion(Notification notification) {
        this.this$0 = notification;
    }

    @Override // com.sonymobile.cameracommon.view.Notification$SceneTextAnimation
    public void create() {
        this.mSceneTextRunnable = new Notification$NoFadeoutAnimtion$1(this);
    }

    @Override // com.sonymobile.cameracommon.view.Notification$SceneTextAnimation
    public void release() {
        this.this$0.removeCallbacks(this.mSceneTextRunnable);
    }

    @Override // com.sonymobile.cameracommon.view.Notification$SceneTextAnimation
    public void start() {
        if (Notification.access$200(this.this$0)) {
            cancel();
        }
        this.this$0.postDelayed(this.mSceneTextRunnable, this.this$0.getResources().getInteger(2131361804) + this.this$0.getResources().getInteger(2131361805));
        this.this$0.setAnimationStatus(true);
        Notification.access$000(this.this$0).setVisibility(0);
        Notification.access$100(this.this$0).setVisibility(0);
    }

    @Override // com.sonymobile.cameracommon.view.Notification$SceneTextAnimation
    public void cancel() {
        this.this$0.removeCallbacks(this.mSceneTextRunnable);
    }
}

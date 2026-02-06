package android.support.v4.app;

class ActivityCompat$SharedElementCallback21Impl$1 implements SharedElementCallback$OnSharedElementsReadyListener {
    final /* synthetic */ ActivityCompat$SharedElementCallback21Impl this$0;
    final /* synthetic */ android.app.SharedElementCallback$OnSharedElementsReadyListener val$listener;

    ActivityCompat$SharedElementCallback21Impl$1(ActivityCompat$SharedElementCallback21Impl activityCompat$SharedElementCallback21Impl, android.app.SharedElementCallback$OnSharedElementsReadyListener sharedElementCallback$OnSharedElementsReadyListener) {
        this.this$0 = activityCompat$SharedElementCallback21Impl;
        this.val$listener = sharedElementCallback$OnSharedElementsReadyListener;
    }

    @Override // android.support.v4.app.SharedElementCallback$OnSharedElementsReadyListener
    public void onSharedElementsReady() {
        this.val$listener.onSharedElementsReady();
    }
}

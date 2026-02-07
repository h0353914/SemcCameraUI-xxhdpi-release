package android.arch.lifecycle;

/* JADX INFO: loaded from: classes.dex */
class ReflectiveGenericLifecycleObserver implements GenericLifecycleObserver {
    private final ClassesInfoCache$CallbackInfo mInfo;
    private final Object mWrapped;

    ReflectiveGenericLifecycleObserver(Object obj) {
        this.mWrapped = obj;
        this.mInfo = ClassesInfoCache.sInstance.getInfo(this.mWrapped.getClass());
    }

    @Override // android.arch.lifecycle.GenericLifecycleObserver
    public void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event) {
        this.mInfo.invokeCallbacks(lifecycleOwner, lifecycle$Event, this.mWrapped);
    }
}

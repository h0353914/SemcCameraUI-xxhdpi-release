package android.arch.lifecycle;

/* JADX INFO: loaded from: classes.dex */
abstract class LiveData$ObserverWrapper {
    boolean mActive;
    int mLastVersion = -1;
    final Observer<T> mObserver;
    final /* synthetic */ LiveData this$0;

    void detachObserver() {
    }

    boolean isAttachedTo(LifecycleOwner lifecycleOwner) {
        return false;
    }

    abstract boolean shouldBeActive();

    LiveData$ObserverWrapper(LiveData liveData, Observer<T> observer) {
        this.this$0 = liveData;
        this.mObserver = observer;
    }

    void activeStateChanged(boolean z) {
        if (z == this.mActive) {
            return;
        }
        this.mActive = z;
        boolean z2 = LiveData.access$300(this.this$0) == 0;
        LiveData liveData = this.this$0;
        LiveData.access$302(liveData, LiveData.access$300(liveData) + (this.mActive ? 1 : -1));
        if (z2 && this.mActive) {
            this.this$0.onActive();
        }
        if (LiveData.access$300(this.this$0) == 0 && !this.mActive) {
            this.this$0.onInactive();
        }
        if (this.mActive) {
            LiveData.access$400(this.this$0, this);
        }
    }
}

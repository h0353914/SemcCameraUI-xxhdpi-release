package android.arch.lifecycle;

import android.support.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
class LiveData$LifecycleBoundObserver extends LiveData<T>.LiveData$ObserverWrapper implements GenericLifecycleObserver {

    @NonNull
    final LifecycleOwner mOwner;
    final /* synthetic */ LiveData this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LiveData$LifecycleBoundObserver(@NonNull LiveData liveData, LifecycleOwner lifecycleOwner, Observer<T> observer) {
        super(liveData, observer);
        this.this$0 = liveData;
        this.mOwner = lifecycleOwner;
    }

    @Override // android.arch.lifecycle.LiveData$ObserverWrapper
    boolean shouldBeActive() {
        return this.mOwner.getLifecycle().getCurrentState().isAtLeast(Lifecycle$State.STARTED);
    }

    @Override // android.arch.lifecycle.GenericLifecycleObserver
    public void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event) {
        if (this.mOwner.getLifecycle().getCurrentState() == Lifecycle$State.DESTROYED) {
            this.this$0.removeObserver(this.mObserver);
        } else {
            activeStateChanged(shouldBeActive());
        }
    }

    @Override // android.arch.lifecycle.LiveData$ObserverWrapper
    boolean isAttachedTo(LifecycleOwner lifecycleOwner) {
        return this.mOwner == lifecycleOwner;
    }

    @Override // android.arch.lifecycle.LiveData$ObserverWrapper
    void detachObserver() {
        this.mOwner.getLifecycle().removeObserver(this);
    }
}

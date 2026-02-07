package android.arch.lifecycle;

/* JADX INFO: loaded from: classes.dex */
class LifecycleRegistry$ObserverWithState {
    GenericLifecycleObserver mLifecycleObserver;
    Lifecycle$State mState;

    LifecycleRegistry$ObserverWithState(LifecycleObserver lifecycleObserver, Lifecycle$State lifecycle$State) {
        this.mLifecycleObserver = Lifecycling.getCallback(lifecycleObserver);
        this.mState = lifecycle$State;
    }

    void dispatchEvent(LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event) {
        Lifecycle$State stateAfter = LifecycleRegistry.getStateAfter(lifecycle$Event);
        this.mState = LifecycleRegistry.min(this.mState, stateAfter);
        this.mLifecycleObserver.onStateChanged(lifecycleOwner, lifecycle$Event);
        this.mState = stateAfter;
    }
}

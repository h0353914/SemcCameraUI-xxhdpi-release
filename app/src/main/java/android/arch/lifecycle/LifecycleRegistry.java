package android.arch.lifecycle;

import android.arch.core.internal.FastSafeIterableMap;
import android.arch.core.internal.SafeIterableMap$IteratorWithAdditions;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map$Entry;

/* JADX INFO: loaded from: classes.dex */
public class LifecycleRegistry extends Lifecycle {
    private static final String LOG_TAG = "LifecycleRegistry";
    private final WeakReference<LifecycleOwner> mLifecycleOwner;
    private FastSafeIterableMap<LifecycleObserver, LifecycleRegistry$ObserverWithState> mObserverMap = new FastSafeIterableMap<>();
    private int mAddingObserverCounter = 0;
    private boolean mHandlingEvent = false;
    private boolean mNewEventOccurred = false;
    private ArrayList<Lifecycle$State> mParentStates = new ArrayList<>();
    private Lifecycle$State mState = Lifecycle$State.INITIALIZED;

    public LifecycleRegistry(@NonNull LifecycleOwner lifecycleOwner) {
        this.mLifecycleOwner = new WeakReference<>(lifecycleOwner);
    }

    @MainThread
    public void markState(@NonNull Lifecycle$State lifecycle$State) {
        moveToState(lifecycle$State);
    }

    public void handleLifecycleEvent(@NonNull Lifecycle$Event lifecycle$Event) {
        moveToState(getStateAfter(lifecycle$Event));
    }

    private void moveToState(Lifecycle$State lifecycle$State) {
        if (this.mState == lifecycle$State) {
            return;
        }
        this.mState = lifecycle$State;
        if (this.mHandlingEvent || this.mAddingObserverCounter != 0) {
            this.mNewEventOccurred = true;
            return;
        }
        this.mHandlingEvent = true;
        sync();
        this.mHandlingEvent = false;
    }

    private boolean isSynced() {
        if (this.mObserverMap.size() == 0) {
            return true;
        }
        Lifecycle$State lifecycle$State = this.mObserverMap.eldest().getValue().mState;
        Lifecycle$State lifecycle$State2 = this.mObserverMap.newest().getValue().mState;
        return lifecycle$State == lifecycle$State2 && this.mState == lifecycle$State2;
    }

    private Lifecycle$State calculateTargetState(LifecycleObserver lifecycleObserver) {
        Map$Entry<LifecycleObserver, LifecycleRegistry$ObserverWithState> map$EntryCeil = this.mObserverMap.ceil(lifecycleObserver);
        return min(min(this.mState, map$EntryCeil != null ? map$EntryCeil.getValue().mState : null), this.mParentStates.isEmpty() ? null : this.mParentStates.get(this.mParentStates.size() - 1));
    }

    @Override // android.arch.lifecycle.Lifecycle
    public void addObserver(@NonNull LifecycleObserver lifecycleObserver) {
        LifecycleOwner lifecycleOwner;
        LifecycleRegistry$ObserverWithState lifecycleRegistry$ObserverWithState = new LifecycleRegistry$ObserverWithState(lifecycleObserver, this.mState == Lifecycle$State.DESTROYED ? Lifecycle$State.DESTROYED : Lifecycle$State.INITIALIZED);
        if (this.mObserverMap.putIfAbsent(lifecycleObserver, lifecycleRegistry$ObserverWithState) == null && (lifecycleOwner = this.mLifecycleOwner.get()) != null) {
            boolean z = this.mAddingObserverCounter != 0 || this.mHandlingEvent;
            Lifecycle$State lifecycle$StateCalculateTargetState = calculateTargetState(lifecycleObserver);
            this.mAddingObserverCounter++;
            while (lifecycleRegistry$ObserverWithState.mState.compareTo(lifecycle$StateCalculateTargetState) < 0 && this.mObserverMap.contains(lifecycleObserver)) {
                pushParentState(lifecycleRegistry$ObserverWithState.mState);
                lifecycleRegistry$ObserverWithState.dispatchEvent(lifecycleOwner, upEvent(lifecycleRegistry$ObserverWithState.mState));
                popParentState();
                lifecycle$StateCalculateTargetState = calculateTargetState(lifecycleObserver);
            }
            if (!z) {
                sync();
            }
            this.mAddingObserverCounter--;
        }
    }

    private void popParentState() {
        this.mParentStates.remove(this.mParentStates.size() - 1);
    }

    private void pushParentState(Lifecycle$State lifecycle$State) {
        this.mParentStates.add(lifecycle$State);
    }

    @Override // android.arch.lifecycle.Lifecycle
    public void removeObserver(@NonNull LifecycleObserver lifecycleObserver) {
        this.mObserverMap.remove(lifecycleObserver);
    }

    public int getObserverCount() {
        return this.mObserverMap.size();
    }

    @Override // android.arch.lifecycle.Lifecycle
    @NonNull
    public Lifecycle$State getCurrentState() {
        return this.mState;
    }

    static Lifecycle$State getStateAfter(Lifecycle$Event lifecycle$Event) {
        switch (lifecycle$Event) {
            case ON_CREATE:
            case ON_STOP:
                return Lifecycle$State.CREATED;
            case ON_START:
            case ON_PAUSE:
                return Lifecycle$State.STARTED;
            case ON_RESUME:
                return Lifecycle$State.RESUMED;
            case ON_DESTROY:
                return Lifecycle$State.DESTROYED;
            default:
                throw new IllegalArgumentException("Unexpected event value " + lifecycle$Event);
        }
    }

    private static Lifecycle$Event downEvent(Lifecycle$State lifecycle$State) {
        switch (lifecycle$State) {
            case INITIALIZED:
                throw new IllegalArgumentException();
            case CREATED:
                return Lifecycle$Event.ON_DESTROY;
            case STARTED:
                return Lifecycle$Event.ON_STOP;
            case RESUMED:
                return Lifecycle$Event.ON_PAUSE;
            case DESTROYED:
                throw new IllegalArgumentException();
            default:
                throw new IllegalArgumentException("Unexpected state value " + lifecycle$State);
        }
    }

    private static Lifecycle$Event upEvent(Lifecycle$State lifecycle$State) {
        switch (lifecycle$State) {
            case INITIALIZED:
            case DESTROYED:
                return Lifecycle$Event.ON_CREATE;
            case CREATED:
                return Lifecycle$Event.ON_START;
            case STARTED:
                return Lifecycle$Event.ON_RESUME;
            case RESUMED:
                throw new IllegalArgumentException();
            default:
                throw new IllegalArgumentException("Unexpected state value " + lifecycle$State);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void forwardPass(LifecycleOwner lifecycleOwner) {
        SafeIterableMap$IteratorWithAdditions safeIterableMap$IteratorWithAdditionsIteratorWithAdditions = this.mObserverMap.iteratorWithAdditions();
        while (safeIterableMap$IteratorWithAdditionsIteratorWithAdditions.hasNext() && !this.mNewEventOccurred) {
            Map$Entry next = safeIterableMap$IteratorWithAdditionsIteratorWithAdditions.next();
            LifecycleRegistry$ObserverWithState lifecycleRegistry$ObserverWithState = (LifecycleRegistry$ObserverWithState) next.getValue();
            while (lifecycleRegistry$ObserverWithState.mState.compareTo(this.mState) < 0 && !this.mNewEventOccurred && this.mObserverMap.contains(next.getKey())) {
                pushParentState(lifecycleRegistry$ObserverWithState.mState);
                lifecycleRegistry$ObserverWithState.dispatchEvent(lifecycleOwner, upEvent(lifecycleRegistry$ObserverWithState.mState));
                popParentState();
            }
        }
    }

    private void backwardPass(LifecycleOwner lifecycleOwner) {
        Iterator<Map$Entry<LifecycleObserver, LifecycleRegistry$ObserverWithState>> itDescendingIterator = this.mObserverMap.descendingIterator();
        while (itDescendingIterator.hasNext() && !this.mNewEventOccurred) {
            Map$Entry<LifecycleObserver, LifecycleRegistry$ObserverWithState> next = itDescendingIterator.next();
            LifecycleRegistry$ObserverWithState value = next.getValue();
            while (value.mState.compareTo(this.mState) > 0 && !this.mNewEventOccurred && this.mObserverMap.contains(next.getKey())) {
                Lifecycle$Event lifecycle$EventDownEvent = downEvent(value.mState);
                pushParentState(getStateAfter(lifecycle$EventDownEvent));
                value.dispatchEvent(lifecycleOwner, lifecycle$EventDownEvent);
                popParentState();
            }
        }
    }

    private void sync() {
        LifecycleOwner lifecycleOwner = this.mLifecycleOwner.get();
        if (lifecycleOwner == null) {
            Log.w("LifecycleRegistry", "LifecycleOwner is garbage collected, you shouldn't try dispatch new events from it.");
            return;
        }
        while (!isSynced()) {
            this.mNewEventOccurred = false;
            if (this.mState.compareTo(this.mObserverMap.eldest().getValue().mState) < 0) {
                backwardPass(lifecycleOwner);
            }
            Map$Entry<LifecycleObserver, LifecycleRegistry$ObserverWithState> map$EntryNewest = this.mObserverMap.newest();
            if (!this.mNewEventOccurred && map$EntryNewest != null && this.mState.compareTo(map$EntryNewest.getValue().mState) > 0) {
                forwardPass(lifecycleOwner);
            }
        }
        this.mNewEventOccurred = false;
    }

    static Lifecycle$State min(@NonNull Lifecycle$State lifecycle$State, @Nullable Lifecycle$State lifecycle$State2) {
        return (lifecycle$State2 == null || lifecycle$State2.compareTo(lifecycle$State) >= 0) ? lifecycle$State : lifecycle$State2;
    }
}

package android.arch.lifecycle;

import android.arch.core.executor.ArchTaskExecutor;
import android.arch.core.internal.SafeIterableMap;
import android.arch.core.internal.SafeIterableMap$IteratorWithAdditions;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.Map$Entry;

public abstract class LiveData<T> {
    private static final Object NOT_SET = new Object();
    static final int START_VERSION = -1;
    private boolean mDispatchInvalidated;
    private boolean mDispatchingValue;
    private final Object mDataLock = new Object();
    private SafeIterableMap<Observer<T>, LiveData<T>.LiveData$ObserverWrapper> mObservers = new SafeIterableMap<>();
    private int mActiveCount = 0;
    private volatile Object mData = NOT_SET;
    private volatile Object mPendingData = NOT_SET;
    private int mVersion = -1;
    private final Runnable mPostValueRunnable = new LiveData$1(this);

    protected void onActive() {
    }

    protected void onInactive() {
    }

    static /* synthetic */ Object access$000(LiveData liveData) {
        return liveData.mDataLock;
    }

    static /* synthetic */ Object access$100(LiveData liveData) {
        return liveData.mPendingData;
    }

    static /* synthetic */ Object access$102(LiveData liveData, Object obj) {
        liveData.mPendingData = obj;
        return obj;
    }

    static /* synthetic */ Object access$200() {
        return NOT_SET;
    }

    static /* synthetic */ int access$300(LiveData liveData) {
        return liveData.mActiveCount;
    }

    static /* synthetic */ int access$302(LiveData liveData, int i) {
        liveData.mActiveCount = i;
        return i;
    }

    static /* synthetic */ void access$400(LiveData liveData, LiveData$ObserverWrapper liveData$ObserverWrapper) {
        liveData.dispatchingValue(liveData$ObserverWrapper);
    }

    /* JADX WARN: Incorrect inner types in method signature: (Landroid/arch/lifecycle/LiveData<TT;>.ObserverWrapper;)V */
    /* JADX WARN: Multi-variable type inference failed */
    private void considerNotify(LiveData$ObserverWrapper liveData$ObserverWrapper) {
        if (liveData$ObserverWrapper.mActive) {
            if (!liveData$ObserverWrapper.shouldBeActive()) {
                liveData$ObserverWrapper.activeStateChanged(false);
            } else {
                if (liveData$ObserverWrapper.mLastVersion >= this.mVersion) {
                    return;
                }
                liveData$ObserverWrapper.mLastVersion = this.mVersion;
                liveData$ObserverWrapper.mObserver.onChanged(this.mData);
            }
        }
    }

    /* JADX WARN: Incorrect inner types in method signature: (Landroid/arch/lifecycle/LiveData<TT;>.ObserverWrapper;)V */
    private void dispatchingValue(@Nullable LiveData$ObserverWrapper liveData$ObserverWrapper) {
        if (this.mDispatchingValue) {
            this.mDispatchInvalidated = true;
            return;
        }
        this.mDispatchingValue = true;
        do {
            this.mDispatchInvalidated = false;
            if (liveData$ObserverWrapper != null) {
                considerNotify(liveData$ObserverWrapper);
                liveData$ObserverWrapper = null;
            } else {
                SafeIterableMap$IteratorWithAdditions safeIterableMap$IteratorWithAdditionsIteratorWithAdditions = this.mObservers.iteratorWithAdditions();
                while (safeIterableMap$IteratorWithAdditionsIteratorWithAdditions.hasNext()) {
                    considerNotify((LiveData$ObserverWrapper) safeIterableMap$IteratorWithAdditionsIteratorWithAdditions.next().getValue());
                    if (this.mDispatchInvalidated) {
                        break;
                    }
                }
            }
        } while (this.mDispatchInvalidated);
        this.mDispatchingValue = false;
    }

    @MainThread
    public void observe(@NonNull LifecycleOwner lifecycleOwner, @NonNull Observer<T> observer) {
        if (lifecycleOwner.getLifecycle().getCurrentState() == Lifecycle$State.DESTROYED) {
            return;
        }
        LiveData$LifecycleBoundObserver liveData$LifecycleBoundObserver = new LiveData$LifecycleBoundObserver(this, lifecycleOwner, observer);
        LiveData<T>.LiveData$ObserverWrapper liveData$ObserverWrapperPutIfAbsent = this.mObservers.putIfAbsent(observer, liveData$LifecycleBoundObserver);
        if (liveData$ObserverWrapperPutIfAbsent != null && !liveData$ObserverWrapperPutIfAbsent.isAttachedTo(lifecycleOwner)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (liveData$ObserverWrapperPutIfAbsent != null) {
            return;
        }
        lifecycleOwner.getLifecycle().addObserver(liveData$LifecycleBoundObserver);
    }

    @MainThread
    public void observeForever(@NonNull Observer<T> observer) {
        LiveData$AlwaysActiveObserver liveData$AlwaysActiveObserver = new LiveData$AlwaysActiveObserver(this, observer);
        LiveData<T>.LiveData$ObserverWrapper liveData$ObserverWrapperPutIfAbsent = this.mObservers.putIfAbsent(observer, liveData$AlwaysActiveObserver);
        if (liveData$ObserverWrapperPutIfAbsent != null && (liveData$ObserverWrapperPutIfAbsent instanceof LiveData$LifecycleBoundObserver)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (liveData$ObserverWrapperPutIfAbsent != null) {
            return;
        }
        liveData$AlwaysActiveObserver.activeStateChanged(true);
    }

    @MainThread
    public void removeObserver(@NonNull Observer<T> observer) {
        assertMainThread("removeObserver");
        LiveData<T>.LiveData$ObserverWrapper liveData$ObserverWrapperRemove = this.mObservers.remove(observer);
        if (liveData$ObserverWrapperRemove == null) {
            return;
        }
        liveData$ObserverWrapperRemove.detachObserver();
        liveData$ObserverWrapperRemove.activeStateChanged(false);
    }

    @MainThread
    public void removeObservers(@NonNull LifecycleOwner lifecycleOwner) {
        assertMainThread("removeObservers");
        for (Map$Entry<Observer<T>, LiveData<T>.LiveData$ObserverWrapper> map$Entry : this.mObservers) {
            if (map$Entry.getValue().isAttachedTo(lifecycleOwner)) {
                removeObserver(map$Entry.getKey());
            }
        }
    }

    protected void postValue(T t) {
        boolean z;
        synchronized (this.mDataLock) {
            z = this.mPendingData == NOT_SET;
            this.mPendingData = t;
        }
        if (z) {
            ArchTaskExecutor.getInstance().postToMainThread(this.mPostValueRunnable);
        }
    }

    @MainThread
    protected void setValue(T t) {
        assertMainThread("setValue");
        this.mVersion++;
        this.mData = t;
        dispatchingValue(null);
    }

    @Nullable
    public T getValue() {
        T t = (T) this.mData;
        if (t != NOT_SET) {
            return t;
        }
        return null;
    }

    int getVersion() {
        return this.mVersion;
    }

    public boolean hasObservers() {
        return this.mObservers.size() > 0;
    }

    public boolean hasActiveObservers() {
        return this.mActiveCount > 0;
    }

    private static void assertMainThread(String str) {
        if (ArchTaskExecutor.getInstance().isMainThread()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }
}

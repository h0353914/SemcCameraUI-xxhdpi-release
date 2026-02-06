package android.arch.lifecycle;

class LiveData$AlwaysActiveObserver extends LiveData<T>.LiveData$ObserverWrapper {
    final /* synthetic */ LiveData this$0;

    @Override // android.arch.lifecycle.LiveData$ObserverWrapper
    boolean shouldBeActive() {
        return true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LiveData$AlwaysActiveObserver(LiveData liveData, Observer<T> observer) {
        super(liveData, observer);
        this.this$0 = liveData;
    }
}

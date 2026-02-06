package android.arch.lifecycle;

class LiveData$1 implements Runnable {
    final /* synthetic */ LiveData this$0;

    LiveData$1(LiveData liveData) {
        this.this$0 = liveData;
    }

    @Override // java.lang.Runnable
    public void run() {
        Object objAccess$100;
        synchronized (LiveData.access$000(this.this$0)) {
            objAccess$100 = LiveData.access$100(this.this$0);
            LiveData.access$102(this.this$0, LiveData.access$200());
        }
        this.this$0.setValue(objAccess$100);
    }
}

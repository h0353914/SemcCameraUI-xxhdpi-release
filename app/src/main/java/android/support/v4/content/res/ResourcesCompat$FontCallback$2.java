package android.support.v4.content.res;

/* JADX INFO: loaded from: classes.dex */
class ResourcesCompat$FontCallback$2 implements Runnable {
    final /* synthetic */ ResourcesCompat$FontCallback this$0;
    final /* synthetic */ int val$reason;

    ResourcesCompat$FontCallback$2(ResourcesCompat$FontCallback resourcesCompat$FontCallback, int i) {
        this.this$0 = resourcesCompat$FontCallback;
        this.val$reason = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.onFontRetrievalFailed(this.val$reason);
    }
}

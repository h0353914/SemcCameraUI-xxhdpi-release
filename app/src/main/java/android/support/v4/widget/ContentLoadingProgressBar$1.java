package android.support.v4.widget;

/* JADX INFO: loaded from: classes.dex */
class ContentLoadingProgressBar$1 implements Runnable {
    final /* synthetic */ ContentLoadingProgressBar this$0;

    ContentLoadingProgressBar$1(ContentLoadingProgressBar contentLoadingProgressBar) {
        this.this$0 = contentLoadingProgressBar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.mPostedHide = false;
        this.this$0.mStartTime = -1L;
        this.this$0.setVisibility(8);
    }
}

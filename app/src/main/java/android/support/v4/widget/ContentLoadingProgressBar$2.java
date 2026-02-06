package android.support.v4.widget;

class ContentLoadingProgressBar$2 implements Runnable {
    final /* synthetic */ ContentLoadingProgressBar this$0;

    ContentLoadingProgressBar$2(ContentLoadingProgressBar contentLoadingProgressBar) {
        this.this$0 = contentLoadingProgressBar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.mPostedShow = false;
        if (this.this$0.mDismissed) {
            return;
        }
        this.this$0.mStartTime = System.currentTimeMillis();
        this.this$0.setVisibility(0);
    }
}

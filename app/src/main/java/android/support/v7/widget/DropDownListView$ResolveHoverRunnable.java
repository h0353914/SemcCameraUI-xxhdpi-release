package android.support.v7.widget;

/* JADX INFO: loaded from: classes.dex */
class DropDownListView$ResolveHoverRunnable implements Runnable {
    final /* synthetic */ DropDownListView this$0;

    DropDownListView$ResolveHoverRunnable(DropDownListView dropDownListView) {
        this.this$0 = dropDownListView;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.mResolveHoverRunnable = null;
        this.this$0.drawableStateChanged();
    }

    public void cancel() {
        this.this$0.mResolveHoverRunnable = null;
        this.this$0.removeCallbacks(this);
    }

    public void post() {
        this.this$0.post(this);
    }
}

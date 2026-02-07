package android.support.v7.widget;

/* JADX INFO: loaded from: classes.dex */
class TooltipCompatHandler$1 implements Runnable {
    final /* synthetic */ TooltipCompatHandler this$0;

    TooltipCompatHandler$1(TooltipCompatHandler tooltipCompatHandler) {
        this.this$0 = tooltipCompatHandler;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.show(false);
    }
}

package android.support.v7.widget;

class TooltipCompatHandler$2 implements Runnable {
    final /* synthetic */ TooltipCompatHandler this$0;

    TooltipCompatHandler$2(TooltipCompatHandler tooltipCompatHandler) {
        this.this$0 = tooltipCompatHandler;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.hide();
    }
}

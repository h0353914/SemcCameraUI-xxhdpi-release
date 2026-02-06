package android.support.v4.widget;

class ViewDragHelper$2 implements Runnable {
    final /* synthetic */ ViewDragHelper this$0;

    ViewDragHelper$2(ViewDragHelper viewDragHelper) {
        this.this$0 = viewDragHelper;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.setDragState(0);
    }
}

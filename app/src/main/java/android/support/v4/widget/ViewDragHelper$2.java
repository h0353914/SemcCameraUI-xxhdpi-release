package android.support.v4.widget;

/* JADX INFO: loaded from: classes.dex */
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

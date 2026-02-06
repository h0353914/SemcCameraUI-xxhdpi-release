package android.support.v7.widget;

class Toolbar$2 implements Runnable {
    final /* synthetic */ Toolbar this$0;

    Toolbar$2(Toolbar toolbar) {
        this.this$0 = toolbar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.showOverflowMenu();
    }
}

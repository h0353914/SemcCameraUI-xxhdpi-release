package android.support.v7.app;

/* JADX INFO: loaded from: classes.dex */
class ToolbarActionBar$1 implements Runnable {
    final /* synthetic */ ToolbarActionBar this$0;

    ToolbarActionBar$1(ToolbarActionBar toolbarActionBar) {
        this.this$0 = toolbarActionBar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.populateOptionsMenu();
    }
}

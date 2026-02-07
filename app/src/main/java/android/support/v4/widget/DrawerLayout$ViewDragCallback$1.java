package android.support.v4.widget;

/* JADX INFO: loaded from: classes.dex */
class DrawerLayout$ViewDragCallback$1 implements Runnable {
    final /* synthetic */ DrawerLayout$ViewDragCallback this$1;

    DrawerLayout$ViewDragCallback$1(DrawerLayout$ViewDragCallback drawerLayout$ViewDragCallback) {
        this.this$1 = drawerLayout$ViewDragCallback;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$1.peekDrawer();
    }
}

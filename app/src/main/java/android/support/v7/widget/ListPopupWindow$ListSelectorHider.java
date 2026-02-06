package android.support.v7.widget;

class ListPopupWindow$ListSelectorHider implements Runnable {
    final /* synthetic */ ListPopupWindow this$0;

    ListPopupWindow$ListSelectorHider(ListPopupWindow listPopupWindow) {
        this.this$0 = listPopupWindow;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.clearListSelection();
    }
}

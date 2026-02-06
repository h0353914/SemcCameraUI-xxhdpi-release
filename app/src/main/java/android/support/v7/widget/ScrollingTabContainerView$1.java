package android.support.v7.widget;

import android.view.View;

class ScrollingTabContainerView$1 implements Runnable {
    final /* synthetic */ ScrollingTabContainerView this$0;
    final /* synthetic */ View val$tabView;

    ScrollingTabContainerView$1(ScrollingTabContainerView scrollingTabContainerView, View view) {
        this.this$0 = scrollingTabContainerView;
        this.val$tabView = view;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.smoothScrollTo(this.val$tabView.getLeft() - ((this.this$0.getWidth() - this.val$tabView.getWidth()) / 2), 0);
        this.this$0.mTabSelector = null;
    }
}

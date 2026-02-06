package android.support.v7.widget;

import android.view.ViewParent;

class ForwardingListener$DisallowIntercept implements Runnable {
    final /* synthetic */ ForwardingListener this$0;

    ForwardingListener$DisallowIntercept(ForwardingListener forwardingListener) {
        this.this$0 = forwardingListener;
    }

    @Override // java.lang.Runnable
    public void run() {
        ViewParent parent = this.this$0.mSrc.getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
    }
}

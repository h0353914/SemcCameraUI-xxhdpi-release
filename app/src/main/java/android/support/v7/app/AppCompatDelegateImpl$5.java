package android.support.v7.app;

import android.support.v7.widget.ContentFrameLayout$OnAttachListener;

class AppCompatDelegateImpl$5 implements ContentFrameLayout$OnAttachListener {
    final /* synthetic */ AppCompatDelegateImpl this$0;

    @Override // android.support.v7.widget.ContentFrameLayout$OnAttachListener
    public void onAttachedFromWindow() {
    }

    AppCompatDelegateImpl$5(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.this$0 = appCompatDelegateImpl;
    }

    @Override // android.support.v7.widget.ContentFrameLayout$OnAttachListener
    public void onDetachedFromWindow() {
        this.this$0.dismissPopups();
    }
}

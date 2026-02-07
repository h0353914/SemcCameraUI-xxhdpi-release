package android.support.v7.app;

import android.graphics.Rect;
import android.support.v7.widget.FitWindowsViewGroup$OnFitSystemWindowsListener;

/* JADX INFO: loaded from: classes.dex */
class AppCompatDelegateImpl$4 implements FitWindowsViewGroup$OnFitSystemWindowsListener {
    final /* synthetic */ AppCompatDelegateImpl this$0;

    AppCompatDelegateImpl$4(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.this$0 = appCompatDelegateImpl;
    }

    @Override // android.support.v7.widget.FitWindowsViewGroup$OnFitSystemWindowsListener
    public void onFitSystemWindows(Rect rect) {
        rect.top = this.this$0.updateStatusGuard(rect.top);
    }
}

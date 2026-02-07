package android.support.design.widget;

import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.WindowInsetsCompat;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class CoordinatorLayout$1 implements OnApplyWindowInsetsListener {
    final /* synthetic */ CoordinatorLayout this$0;

    CoordinatorLayout$1(CoordinatorLayout coordinatorLayout) {
        this.this$0 = coordinatorLayout;
    }

    @Override // android.support.v4.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        return this.this$0.setWindowInsets(windowInsetsCompat);
    }
}

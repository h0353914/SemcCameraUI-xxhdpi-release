package android.support.v4.view;

import android.view.View;
import android.view.View$OnApplyWindowInsetsListener;
import android.view.WindowInsets;

class ViewCompat$1 implements View$OnApplyWindowInsetsListener {
    final /* synthetic */ OnApplyWindowInsetsListener val$listener;

    ViewCompat$1(OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        this.val$listener = onApplyWindowInsetsListener;
    }

    @Override // android.view.View$OnApplyWindowInsetsListener
    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        return (WindowInsets) WindowInsetsCompat.unwrap(this.val$listener.onApplyWindowInsets(view, WindowInsetsCompat.wrap(windowInsets)));
    }
}

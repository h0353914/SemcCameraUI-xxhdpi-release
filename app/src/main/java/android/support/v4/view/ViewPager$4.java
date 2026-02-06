package android.support.v4.view;

import android.graphics.Rect;
import android.view.View;

class ViewPager$4 implements OnApplyWindowInsetsListener {
    private final Rect mTempRect = new Rect();
    final /* synthetic */ ViewPager this$0;

    ViewPager$4(ViewPager viewPager) {
        this.this$0 = viewPager;
    }

    @Override // android.support.v4.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompatOnApplyWindowInsets = ViewCompat.onApplyWindowInsets(view, windowInsetsCompat);
        if (windowInsetsCompatOnApplyWindowInsets.isConsumed()) {
            return windowInsetsCompatOnApplyWindowInsets;
        }
        Rect rect = this.mTempRect;
        rect.left = windowInsetsCompatOnApplyWindowInsets.getSystemWindowInsetLeft();
        rect.top = windowInsetsCompatOnApplyWindowInsets.getSystemWindowInsetTop();
        rect.right = windowInsetsCompatOnApplyWindowInsets.getSystemWindowInsetRight();
        rect.bottom = windowInsetsCompatOnApplyWindowInsets.getSystemWindowInsetBottom();
        int childCount = this.this$0.getChildCount();
        for (int i = 0; i < childCount; i++) {
            WindowInsetsCompat windowInsetsCompatDispatchApplyWindowInsets = ViewCompat.dispatchApplyWindowInsets(this.this$0.getChildAt(i), windowInsetsCompatOnApplyWindowInsets);
            rect.left = Math.min(windowInsetsCompatDispatchApplyWindowInsets.getSystemWindowInsetLeft(), rect.left);
            rect.top = Math.min(windowInsetsCompatDispatchApplyWindowInsets.getSystemWindowInsetTop(), rect.top);
            rect.right = Math.min(windowInsetsCompatDispatchApplyWindowInsets.getSystemWindowInsetRight(), rect.right);
            rect.bottom = Math.min(windowInsetsCompatDispatchApplyWindowInsets.getSystemWindowInsetBottom(), rect.bottom);
        }
        return windowInsetsCompatOnApplyWindowInsets.replaceSystemWindowInsets(rect.left, rect.top, rect.right, rect.bottom);
    }
}

package android.support.v4.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater$Factory2;
import android.view.View;

class LayoutInflaterCompat$Factory2Wrapper implements LayoutInflater$Factory2 {
    final LayoutInflaterFactory mDelegateFactory;

    LayoutInflaterCompat$Factory2Wrapper(LayoutInflaterFactory layoutInflaterFactory) {
        this.mDelegateFactory = layoutInflaterFactory;
    }

    @Override // android.view.LayoutInflater$Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return this.mDelegateFactory.onCreateView(null, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater$Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return this.mDelegateFactory.onCreateView(view, str, context, attributeSet);
    }

    public String toString() {
        return getClass().getName() + "{" + this.mDelegateFactory + "}";
    }
}

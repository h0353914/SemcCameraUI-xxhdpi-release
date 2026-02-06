package android.support.v4.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;

class AsyncLayoutInflater$BasicInflater extends LayoutInflater {
    private static final String[] sClassPrefixList = {"android.widget.", "android.webkit.", "android.app."};

    AsyncLayoutInflater$BasicInflater(Context context) {
        super(context);
    }

    @Override // android.view.LayoutInflater
    public LayoutInflater cloneInContext(Context context) {
        return new AsyncLayoutInflater$BasicInflater(context);
    }

    @Override // android.view.LayoutInflater
    protected View onCreateView(String str, AttributeSet attributeSet) throws ClassNotFoundException {
        View viewCreateView;
        for (String str2 : sClassPrefixList) {
            try {
                viewCreateView = createView(str, str2, attributeSet);
            } catch (ClassNotFoundException unused) {
            }
            if (viewCreateView != null) {
                return viewCreateView;
            }
        }
        return super.onCreateView(str, attributeSet);
    }
}

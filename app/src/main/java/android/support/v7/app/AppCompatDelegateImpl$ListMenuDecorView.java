package android.support.v7.app;

import android.content.Context;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.widget.ContentFrameLayout;
import android.view.KeyEvent;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
class AppCompatDelegateImpl$ListMenuDecorView extends ContentFrameLayout {
    final /* synthetic */ AppCompatDelegateImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatDelegateImpl$ListMenuDecorView(AppCompatDelegateImpl appCompatDelegateImpl, Context context) {
        super(context);
        this.this$0 = appCompatDelegateImpl;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.this$0.dispatchKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && isOutOfBounds((int) motionEvent.getX(), (int) motionEvent.getY())) {
            this.this$0.closePanel(0);
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        setBackgroundDrawable(AppCompatResources.getDrawable(getContext(), i));
    }

    private boolean isOutOfBounds(int i, int i2) {
        return i < -5 || i2 < -5 || i > getWidth() + 5 || i2 > getHeight() + 5;
    }
}

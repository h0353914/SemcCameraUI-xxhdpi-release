package android.support.v7.widget;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes.dex */
class SearchView$UpdatableTouchDelegate extends TouchDelegate {
    private final Rect mActualBounds;
    private boolean mDelegateTargeted;
    private final View mDelegateView;
    private final int mSlop;
    private final Rect mSlopBounds;
    private final Rect mTargetBounds;

    public SearchView$UpdatableTouchDelegate(Rect rect, Rect rect2, View view) {
        super(rect, view);
        this.mSlop = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        this.mTargetBounds = new Rect();
        this.mSlopBounds = new Rect();
        this.mActualBounds = new Rect();
        setBounds(rect, rect2);
        this.mDelegateView = view;
    }

    public void setBounds(Rect rect, Rect rect2) {
        this.mTargetBounds.set(rect);
        this.mSlopBounds.set(rect);
        this.mSlopBounds.inset(-this.mSlop, -this.mSlop);
        this.mActualBounds.set(rect2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0033  */
    @Override // android.view.TouchDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        boolean z2 = true;
        switch (motionEvent.getAction()) {
            case 0:
                if (!this.mTargetBounds.contains(x, y)) {
                    z = false;
                } else {
                    this.mDelegateTargeted = true;
                    z = true;
                }
                break;
            case 1:
            case 2:
                z = this.mDelegateTargeted;
                if (z && !this.mSlopBounds.contains(x, y)) {
                    z2 = false;
                }
                break;
            case 3:
                z = this.mDelegateTargeted;
                this.mDelegateTargeted = false;
                break;
        }
        if (!z) {
            return false;
        }
        if (z2 && !this.mActualBounds.contains(x, y)) {
            motionEvent.setLocation(this.mDelegateView.getWidth() / 2, this.mDelegateView.getHeight() / 2);
        } else {
            motionEvent.setLocation(x - this.mActualBounds.left, y - this.mActualBounds.top);
        }
        return this.mDelegateView.dispatchTouchEvent(motionEvent);
    }
}

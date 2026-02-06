package android.support.v4.widget;

import android.view.animation.Animation;
import android.view.animation.Animation$AnimationListener;

class SwipeRefreshLayout$1 implements Animation$AnimationListener {
    final /* synthetic */ SwipeRefreshLayout this$0;

    @Override // android.view.animation.Animation$AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation$AnimationListener
    public void onAnimationStart(Animation animation) {
    }

    SwipeRefreshLayout$1(SwipeRefreshLayout swipeRefreshLayout) {
        this.this$0 = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation$AnimationListener
    public void onAnimationEnd(Animation animation) {
        if (this.this$0.mRefreshing) {
            this.this$0.mProgress.setAlpha(255);
            this.this$0.mProgress.start();
            if (this.this$0.mNotify && this.this$0.mListener != null) {
                this.this$0.mListener.onRefresh();
            }
            this.this$0.mCurrentTargetOffsetTop = this.this$0.mCircleView.getTop();
            return;
        }
        this.this$0.reset();
    }
}

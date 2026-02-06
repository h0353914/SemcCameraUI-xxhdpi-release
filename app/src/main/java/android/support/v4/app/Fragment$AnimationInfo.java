package android.support.v4.app;

import android.animation.Animator;
import android.view.View;

class Fragment$AnimationInfo {
    Boolean mAllowEnterTransitionOverlap;
    Boolean mAllowReturnTransitionOverlap;
    View mAnimatingAway;
    Animator mAnimator;
    boolean mEnterTransitionPostponed;
    boolean mIsHideReplaced;
    int mNextAnim;
    int mNextTransition;
    int mNextTransitionStyle;
    Fragment$OnStartEnterTransitionListener mStartEnterTransitionListener;
    int mStateAfterAnimating;
    Object mEnterTransition = null;
    Object mReturnTransition = Fragment.USE_DEFAULT_TRANSITION;
    Object mExitTransition = null;
    Object mReenterTransition = Fragment.USE_DEFAULT_TRANSITION;
    Object mSharedElementEnterTransition = null;
    Object mSharedElementReturnTransition = Fragment.USE_DEFAULT_TRANSITION;
    SharedElementCallback mEnterTransitionCallback = null;
    SharedElementCallback mExitTransitionCallback = null;

    Fragment$AnimationInfo() {
    }
}

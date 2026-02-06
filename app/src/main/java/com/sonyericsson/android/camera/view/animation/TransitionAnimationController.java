package com.sonyericsson.android.camera.view.animation;

import android.animation.AnimatorSet;
import android.content.Context;
import android.view.View;
import com.sonyericsson.android.camera.NavigatorContents;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.ApplicationNavigator;
import com.sonyericsson.android.camera.view.baselayout.SwitchAnimationView;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public class TransitionAnimationController {
    private final FacingTransitionAnimation mFacingAnimation;
    private final ModeTransitionAnimation mModeAnimation;
    private final BlockingQueue<AnimatorSet> mQueue = new LinkedBlockingQueue();
    private AnimationRequest mLastRequest = null;

    static /* synthetic */ BlockingQueue access$100(TransitionAnimationController transitionAnimationController) {
        return transitionAnimationController.mQueue;
    }

    static /* synthetic */ AnimationRequest access$202(TransitionAnimationController transitionAnimationController, AnimationRequest animationRequest) {
        transitionAnimationController.mLastRequest = animationRequest;
        return animationRequest;
    }

    public TransitionAnimationController(ApplicationNavigator applicationNavigator, List<View> list, View view, View view2, View view3, View view4, View view5, View view6, View view7, View view8, View view9, SwitchAnimationView switchAnimationView) {
        this.mModeAnimation = new ModeTransitionAnimation(applicationNavigator, list, view, view2, view3, view4, view5, view6, view7, view8, view9);
        this.mFacingAnimation = new FacingTransitionAnimation(switchAnimationView, view4, list);
    }

    public void resume() {
        this.mModeAnimation.resume();
        this.mFacingAnimation.resume();
    }

    public void pause() {
        for (AnimatorSet animatorSet : this.mQueue) {
            animatorSet.removeAllListeners();
            animatorSet.cancel();
        }
        this.mQueue.clear();
        this.mLastRequest = null;
    }

    public static int getSwipeThreshold(Context context) {
        return context.getResources().getDimensionPixelSize(2131165658);
    }

    public static int getSwitchSwipeThreshold(Context context) {
        return context.getResources().getDimensionPixelSize(2131165284);
    }

    public boolean requestAnimation(AnimationRequest animationRequest) {
        return requestAnimation(animationRequest, null);
    }

    public boolean requestAnimation(AnimationRequest animationRequest, TransitionAnimationController$TransitionAnimationCallback transitionAnimationController$TransitionAnimationCallback) {
        AnimatorSet modeIconAnimation;
        if (CamLog.DEBUG) {
            CamLog.d("request source:" + animationRequest.mType + ", type:" + animationRequest.mDegree + ", mFrom:" + animationRequest.mFrom + ", mTarget:" + animationRequest.mTarget);
        }
        if (!verifyLastRequest(animationRequest)) {
            return false;
        }
        switch (animationRequest.mType) {
            case MODE_ICON:
                modeIconAnimation = getModeIconAnimation(animationRequest);
                break;
            case MODE_TOUCH:
                modeIconAnimation = getModeTouchAnimation(animationRequest);
                break;
            case MODE_SELECTOR:
                modeIconAnimation = getModeIconAnimation(animationRequest);
                break;
            case MRU_SHORTCUT:
                modeIconAnimation = getModeIconAnimation(animationRequest);
                break;
            case SWITCH_TOUCH:
                if (animationRequest.mDegree == AnimationRequest$AnimationDegree.START) {
                    this.mLastRequest = animationRequest;
                    this.mFacingAnimation.getSwitchAnimationView().startDraggingStartedAnimation();
                    return true;
                }
                modeIconAnimation = getSwitchAnimation(animationRequest);
                break;
                break;
            default:
                return false;
        }
        if (modeIconAnimation == null) {
            return false;
        }
        modeIconAnimation.addListener(new TransitionAnimationController$TransitionAnimatorListener(this, animationRequest, transitionAnimationController$TransitionAnimationCallback, null));
        try {
            this.mQueue.put(modeIconAnimation);
            this.mLastRequest = animationRequest;
            if (this.mQueue.size() == 1) {
                modeIconAnimation.start();
            }
            return true;
        } catch (InterruptedException unused) {
            CamLog.e("startAnimation failed.");
            return false;
        }
    }

    private AnimatorSet getModeTouchAnimation(AnimationRequest animationRequest) {
        switch (animationRequest.mDegree) {
            case START:
                return this.mModeAnimation.getStartAnimation();
            case EXEC:
                if (!this.mQueue.isEmpty()) {
                    this.mQueue.poll().cancel();
                    this.mQueue.clear();
                }
                return this.mModeAnimation.getExecuteAnimation(NavigatorContents.valueOf(animationRequest.mTarget));
            case CANCEL:
                return this.mModeAnimation.getCancelAnimation(NavigatorContents.valueOf(animationRequest.mTarget));
            case FINISH:
                return this.mModeAnimation.getFinishAnimation(animationRequest.mTarget);
            default:
                return null;
        }
    }

    private AnimatorSet getModeIconAnimation(AnimationRequest animationRequest) {
        int i = TransitionAnimationController$1.$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree[animationRequest.mDegree.ordinal()];
        if (i != 4) {
            switch (i) {
                case 1:
                    return this.mModeAnimation.getStartAnimation();
                case 2:
                    return this.mModeAnimation.getExecuteAnimation(NavigatorContents.valueOf(animationRequest.mTarget));
                default:
                    return null;
            }
        }
        return this.mModeAnimation.getFinishAnimation(animationRequest.mTarget);
    }

    private AnimatorSet getSwitchAnimation(AnimationRequest animationRequest) {
        switch (animationRequest.mDegree) {
            case EXEC:
                return this.mFacingAnimation.getSwipeSwitchAnimation();
            case CANCEL:
                return this.mFacingAnimation.getDraggingCancelAnimation();
            case FINISH:
                return this.mFacingAnimation.getAfterSwitchAnimation();
            default:
                return null;
        }
    }

    public static float getPreviewAlpha(Context context, int i) {
        return ModeTransitionAnimation.getPreviewAlpha(i, getSwipeThreshold(context));
    }

    public boolean startSwitchDraggingAnimation(float f) {
        if (CamLog.VERBOSE) {
            CamLog.d("startDraggingAnimation");
        }
        if (this.mLastRequest == null || this.mLastRequest.mType != AnimationRequest$AnimationType.SWITCH_TOUCH) {
            return false;
        }
        this.mFacingAnimation.getSwitchAnimationView().startDraggingAnimation(f);
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004a A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean verifyLastRequest(AnimationRequest animationRequest) {
        if (this.mLastRequest != null) {
            if (animationRequest.mType == this.mLastRequest.mType) {
                switch (this.mLastRequest.mDegree) {
                    case START:
                        return animationRequest.mDegree == AnimationRequest$AnimationDegree.EXEC || animationRequest.mDegree == AnimationRequest$AnimationDegree.CANCEL;
                    case EXEC:
                        if (animationRequest.mDegree == AnimationRequest$AnimationDegree.FINISH) {
                            return true;
                        }
                        break;
                    case FINISH:
                        if (animationRequest.mDegree == AnimationRequest$AnimationDegree.START) {
                            return true;
                        }
                        break;
                }
            } else {
                return false;
            }
        } else {
            return animationRequest.mDegree == AnimationRequest$AnimationDegree.START && this.mQueue.isEmpty();
        }
    }
}

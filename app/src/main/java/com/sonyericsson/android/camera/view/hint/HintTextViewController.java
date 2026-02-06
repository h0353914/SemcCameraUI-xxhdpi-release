package com.sonyericsson.android.camera.view.hint;

import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.graphics.Rect;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.FrameLayout$LayoutParams;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.baselayout.LayoutDependencyResolver$ScreenAspect;
import com.sonyericsson.cameracommon.utility.ResourceUtil;
import java.util.Iterator;
import java.util.concurrent.BlockingQueue;

public class HintTextViewController {
    private static final String TAG = "HintTextViewController";
    private HintTextContent$HintPriority mContentDisplayThreshold;
    private Context mContext;
    private HintTextViewController$TimeoutHandler mHandler;
    private ViewGroup mHintTextBackground;
    private FrameLayout mHintTextContainer;
    private ObjectAnimator mHintTextFadeOutAnimator;
    private HintTextView mHintTextView;
    private HintTextViewController$HintTextContentListener mListener;
    private final LayoutDependencyResolver$ScreenAspect mScreenAspect;
    private BlockingQueue<HintTextContent> mContentPrioritizedStack = new HintTextViewController$BlockingFiloContentQueue();
    private View$OnClickListener mOnClickListener = new HintTextViewController$1(this);

    static /* synthetic */ HintTextContent access$000(HintTextViewController hintTextViewController) {
        return hintTextViewController.referTop();
    }

    static /* synthetic */ HintTextViewController$HintTextContentListener access$100(HintTextViewController hintTextViewController) {
        return hintTextViewController.mListener;
    }

    static /* synthetic */ HintTextViewController$TimeoutHandler access$300(HintTextViewController hintTextViewController) {
        return hintTextViewController.mHandler;
    }

    static /* synthetic */ boolean access$400(HintTextViewController hintTextViewController, HintTextContent hintTextContent) {
        return hintTextViewController.cancelFromContentStack(hintTextContent);
    }

    static /* synthetic */ HintTextView access$500(HintTextViewController hintTextViewController) {
        return hintTextViewController.mHintTextView;
    }

    static /* synthetic */ ObjectAnimator access$700(HintTextViewController hintTextViewController) {
        return hintTextViewController.mHintTextFadeOutAnimator;
    }

    static /* synthetic */ BlockingQueue access$800(HintTextViewController hintTextViewController) {
        return hintTextViewController.mContentPrioritizedStack;
    }

    public HintTextViewController(ViewGroup viewGroup, HintTextViewController$HintTextContentListener hintTextViewController$HintTextContentListener, LayoutDependencyResolver$ScreenAspect layoutDependencyResolver$ScreenAspect) {
        this.mListener = hintTextViewController$HintTextContentListener;
        this.mScreenAspect = layoutDependencyResolver$ScreenAspect;
        initHintTextBackground(viewGroup);
        initHintTextView(viewGroup);
        this.mHintTextFadeOutAnimator = ObjectAnimator.ofPropertyValuesHolder(this.mHintTextView, PropertyValuesHolder.ofFloat("alpha", 1.0f, 0.0f));
        this.mHintTextFadeOutAnimator.addListener(new HintTextViewController$2(this));
    }

    public void clearAll() {
        cancelTimeoutCount();
        hideInternal(referTop());
        while (!this.mContentPrioritizedStack.isEmpty()) {
            this.mContentPrioritizedStack.poll();
        }
        if (CamLog.VERBOSE) {
            CamLog.d("clear: removed all entry");
        }
    }

    public void clearToastContent() {
        HintTextContent hintTextContentReferTop = referTop();
        if (hintTextContentReferTop == null || !hintTextContentReferTop.isToast()) {
            return;
        }
        cancelFromContentStack(hintTextContentReferTop);
    }

    public boolean post(@NonNull HintTextContent hintTextContent) {
        if (CamLog.VERBOSE) {
            CamLog.d("post: content = " + hintTextContent.getTag());
        }
        if (this.mContentPrioritizedStack.contains(hintTextContent)) {
            if (CamLog.VERBOSE) {
                CamLog.d("post: content has been queued, content = " + hintTextContent.getTag());
            }
            return false;
        }
        HintTextContent hintTextContentReferTop = referTop();
        this.mContentPrioritizedStack.add(hintTextContent);
        HintTextContent hintTextContentReferTop2 = referTop();
        if (!isSameContent(hintTextContentReferTop, hintTextContentReferTop2)) {
            if (CamLog.VERBOSE) {
                CamLog.d("post: top is changed, old = " + hintTextContentReferTop + ", new = " + hintTextContentReferTop2.getTag());
            }
            if (this.mContentDisplayThreshold != null && hintTextContentReferTop2.getPriority().compareTo(this.mContentDisplayThreshold) <= 0) {
                if (hintTextContentReferTop != null) {
                    hideInternal(hintTextContentReferTop);
                }
                showInternal(hintTextContentReferTop2);
            }
        }
        return true;
    }

    public boolean cancel(@NonNull String str) {
        if (this.mContentPrioritizedStack.isEmpty()) {
            if (CamLog.VERBOSE) {
                CamLog.d("cancel: content is empty = " + str);
            }
            return false;
        }
        HintTextContent hintTextContent = null;
        Iterator it = this.mContentPrioritizedStack.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            HintTextContent hintTextContent2 = (HintTextContent) it.next();
            if (hintTextContent2.getTag().equals(str)) {
                hintTextContent = hintTextContent2;
                break;
            }
        }
        if (hintTextContent == null) {
            if (CamLog.VERBOSE) {
                CamLog.d("cancel: content is not queued, tag = " + str);
            }
            return false;
        }
        return cancelFromContentStack(hintTextContent);
    }

    public boolean showAll() {
        return show(HintTextContent$HintPriority.LOW);
    }

    public boolean show(@NonNull HintTextContent$HintPriority hintTextContent$HintPriority) {
        if (this.mContentDisplayThreshold != null && hintTextContent$HintPriority.compareTo(this.mContentDisplayThreshold) == 0) {
            if (!CamLog.VERBOSE) {
                return false;
            }
            CamLog.d("show: hint text was already shown");
            return false;
        }
        HintTextContent hintTextContentReferTop = referTop();
        if (hintTextContentReferTop != null) {
            if (hintTextContentReferTop.getPriority().compareTo(hintTextContent$HintPriority) <= 0) {
                if (this.mContentDisplayThreshold == null || hintTextContentReferTop.getPriority().compareTo(this.mContentDisplayThreshold) > 0) {
                    showInternal(hintTextContentReferTop);
                }
            } else {
                hideInternal(hintTextContentReferTop);
            }
        }
        this.mContentDisplayThreshold = hintTextContent$HintPriority;
        return true;
    }

    public boolean hide() {
        if (this.mContentDisplayThreshold != null) {
            hideInternal(referTop());
            this.mContentDisplayThreshold = null;
            return true;
        }
        if (!CamLog.VERBOSE) {
            return false;
        }
        CamLog.d("hide: hint text was already hidden");
        return false;
    }

    public void setUiOrientation(Rect rect, Context context, LayoutDependencyResolver$ScreenAspect layoutDependencyResolver$ScreenAspect, int i) {
        if (this.mHintTextView == null) {
            return;
        }
        this.mHintTextView.setUiOrientation(rect, context, layoutDependencyResolver$ScreenAspect, i);
    }

    public boolean isNoTimeOutHinTextDisplayed() {
        HintTextContent hintTextContentReferTop = referTop();
        return (hintTextContentReferTop == null || hintTextContentReferTop.getTimedOutDuration() != -1 || this.mContentDisplayThreshold == null) ? false : true;
    }

    public boolean isHintTextDisplayed(@NonNull String str) {
        HintTextContent hintTextContentReferTop = referTop();
        return this.mHintTextView != null && hintTextContentReferTop != null && this.mHintTextView.getVisibility() == 0 && hintTextContentReferTop.getTag().equals(str);
    }

    private void showInternal(@Nullable HintTextContent hintTextContent) {
        if (hintTextContent == null) {
            if (CamLog.VERBOSE) {
                CamLog.d("showInternal: content is null");
                return;
            }
            return;
        }
        cancelTimeoutCount();
        hintTextContent.attach(this.mHintTextView);
        long timedOutDuration = hintTextContent.getTimedOutDuration();
        if (timedOutDuration != -1) {
            int fadeDuration = hintTextContent.getFadeDuration();
            if (fadeDuration != -1) {
                startFadeOut(timedOutDuration, fadeDuration, hintTextContent);
            } else {
                startTimeoutCount(timedOutDuration, hintTextContent);
            }
        }
    }

    private void hideInternal(@Nullable HintTextContent hintTextContent) {
        if (hintTextContent == null) {
            if (CamLog.VERBOSE) {
                CamLog.d("hideInternal: content is null");
                return;
            }
            return;
        }
        cancelTimeoutCount();
        hintTextContent.detach(this.mHintTextView);
        if (hintTextContent.isToast()) {
            if (CamLog.VERBOSE) {
                CamLog.d("hideInternal: remove onetime content");
            }
            this.mContentPrioritizedStack.remove(hintTextContent);
        }
    }

    private boolean cancelFromContentStack(@NonNull HintTextContent hintTextContent) {
        if (CamLog.VERBOSE) {
            CamLog.d("cancel: content = " + hintTextContent.getTag());
        }
        if (!this.mContentPrioritizedStack.contains(hintTextContent)) {
            if (CamLog.VERBOSE) {
                CamLog.d("cancel: content is not queued, content = " + hintTextContent.getTag());
            }
            return false;
        }
        HintTextContent hintTextContentReferTop = referTop();
        this.mContentPrioritizedStack.remove(hintTextContent);
        if (this.mContentPrioritizedStack.isEmpty()) {
            hideInternal(hintTextContent);
        }
        HintTextContent hintTextContentReferTop2 = referTop();
        if (hintTextContentReferTop2 != null && !isSameContent(hintTextContentReferTop, hintTextContentReferTop2)) {
            if (this.mContentDisplayThreshold != null && hintTextContentReferTop2.getPriority().compareTo(this.mContentDisplayThreshold) <= 0) {
                showInternal(hintTextContentReferTop2);
            } else {
                hideInternal(hintTextContent);
            }
        }
        return true;
    }

    private void startTimeoutCount(long j, HintTextContent hintTextContent) {
        if (this.mHandler == null) {
            this.mHandler = new HintTextViewController$TimeoutHandler(this, null);
        }
        this.mHandler.startTimeoutCount(j, hintTextContent);
    }

    private void startFadeOut(long j, int i, HintTextContent hintTextContent) {
        if (this.mHandler == null) {
            this.mHandler = new HintTextViewController$TimeoutHandler(this, null);
        }
        this.mHandler.startFadeOut(j, i, hintTextContent);
    }

    private void cancelTimeoutCount() {
        if (this.mHandler != null) {
            this.mHandler.cancelCount();
            this.mHandler = null;
        }
    }

    @Nullable
    private HintTextContent referTop() {
        if (!this.mContentPrioritizedStack.isEmpty()) {
            return this.mContentPrioritizedStack.peek();
        }
        if (!CamLog.VERBOSE) {
            return null;
        }
        CamLog.d("referTop: queue is empty");
        return null;
    }

    private boolean isSameContent(@Nullable HintTextContent hintTextContent, @Nullable HintTextContent hintTextContent2) {
        if (hintTextContent != null) {
            return hintTextContent.equals(hintTextContent2);
        }
        return hintTextContent2 == null;
    }

    private void initHintTextBackground(ViewGroup viewGroup) {
        this.mHintTextBackground = new HintTextViewController$Background(this, viewGroup.getContext());
        viewGroup.addView(this.mHintTextBackground);
        this.mHintTextBackground.getLayoutParams().width = -1;
        this.mHintTextBackground.getLayoutParams().height = -1;
        this.mHintTextBackground.setClickable(false);
        this.mHintTextBackground.setFocusable(false);
    }

    private void initHintTextView(ViewGroup viewGroup) {
        ViewStub viewStub = (ViewStub) viewGroup.findViewById(2131296414);
        this.mContext = viewStub.getContext();
        this.mHintTextContainer = (FrameLayout) viewStub.inflate();
        if (this.mScreenAspect == LayoutDependencyResolver$ScreenAspect.EIGHTEEN_NINE) {
            ((FrameLayout$LayoutParams) this.mHintTextContainer.getLayoutParams()).setMargins(ResourceUtil.getDimensionPixelSize(this.mContext, this.mContext.getPackageName(), 2131165456), 0, 0, 0);
        }
        this.mHintTextView = HintTextView.inflate(this.mContext);
        this.mHintTextView.setOnButtonClickListener(this.mOnClickListener);
        this.mHintTextContainer.addView(this.mHintTextView);
    }

    public void updateHintTextContainer(int i, int i2) {
        FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams) this.mHintTextContainer.getLayoutParams();
        int iMax = Math.max(i, i2);
        int iMin = Math.min(i, i2);
        frameLayout$LayoutParams.width = iMax;
        frameLayout$LayoutParams.height = iMin;
        frameLayout$LayoutParams.gravity = 16;
        int dimensionPixelSize = this.mScreenAspect == LayoutDependencyResolver$ScreenAspect.EIGHTEEN_NINE ? 0 + ResourceUtil.getDimensionPixelSize(this.mContext, this.mContext.getPackageName(), 2131165456) : 0;
        if (i == i2) {
            dimensionPixelSize += i2 / 3;
        }
        frameLayout$LayoutParams.leftMargin = dimensionPixelSize;
        this.mHintTextContainer.requestLayout();
    }
}

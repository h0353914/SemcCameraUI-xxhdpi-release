package com.sonyericsson.android.camera.view.selectabledialog;

import android.animation.Animator$AnimatorListener;
import android.content.Context;
import android.support.annotation.NonNull;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
import android.widget.FrameLayout$LayoutParams;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import com.sonyericsson.android.camera.util.CamLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbsDialogScrollView extends FrameLayout {
    protected final List<AbsDialogScrollView$ContentArrange> mArranges;
    protected FrameLayout mBackground;
    protected int mBottomMarginHint;
    protected LinearLayout mContentsBinder;
    private ScrollView mDefaultScroller;
    private final Interpolator mInterporater;
    protected boolean mIsExpandedWhenOpened;
    protected int mOrientation;
    protected AbsSelectableDialog$Params mParams;
    protected ScrollContainer mSomcScroller;
    protected int mTopMarginHint;

    protected abstract void addContent(String str, ArrayAdapter arrayAdapter);

    protected abstract int getScrollableContentLength();

    public void selectTagItem(Object obj) {
    }

    public abstract void updateRotatableLayout(ViewGroup viewGroup, int i, int i2);

    static /* synthetic */ Interpolator access$200(AbsDialogScrollView absDialogScrollView) {
        return absDialogScrollView.mInterporater;
    }

    public AbsDialogScrollView(@NonNull Context context) {
        super(context);
        this.mOrientation = 2;
        this.mInterporater = new PathInterpolator(0.645f, 0.045f, 0.355f, 1.0f);
        this.mArranges = new ArrayList();
    }

    protected int dimenToPixel(int i) {
        return getResources().getDimensionPixelSize(i);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (isEnabled()) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        return true;
    }

    protected void setup(boolean z, AbsSelectableDialog$Params absSelectableDialog$Params, ScrollContainer$OnScrollListener scrollContainer$OnScrollListener, int i, int i2, boolean z2) {
        this.mIsExpandedWhenOpened = z2;
        this.mParams = new AbsSelectableDialog$Params(absSelectableDialog$Params);
        inflate(getContext(), 2131492994, this);
        this.mBackground = (FrameLayout) findViewById(2131296573);
        this.mBackground.getLayoutParams().width = i;
        ((FrameLayout$LayoutParams) this.mBackground.getLayoutParams()).gravity = i2;
        if (this.mParams.dropShadowSpace > 0) {
            this.mBackground.setBackgroundResource(2131231020);
            this.mBackground.setPadding(this.mParams.dropShadowSpace, this.mParams.dropShadowSpace, this.mParams.dropShadowSpace, this.mParams.dropShadowSpace);
        }
        if (z) {
            this.mSomcScroller = (ScrollContainer) findViewById(2131296619);
            this.mSomcScroller.setSettingMenuParams(this.mParams);
            this.mSomcScroller.setOnScrollListener(scrollContainer$OnScrollListener);
            this.mSomcScroller.setVisibility(0);
            this.mContentsBinder = (LinearLayout) this.mSomcScroller.findViewById(2131296620);
            this.mSomcScroller.post(new AbsDialogScrollView$1(this));
            return;
        }
        this.mDefaultScroller = (ScrollView) findViewById(2131296382);
        this.mDefaultScroller.setVisibility(0);
        if (this.mParams.scrollbarFadeDuration > 0) {
            this.mDefaultScroller.setScrollBarFadeDuration(this.mParams.scrollbarFadeDuration);
        }
        if (this.mParams.scrollBarDefaultDelayBeforeFade > 0) {
            this.mDefaultScroller.setScrollBarDefaultDelayBeforeFade(this.mParams.scrollBarDefaultDelayBeforeFade);
        }
        this.mContentsBinder = (LinearLayout) this.mDefaultScroller.findViewById(2131296383);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        Iterator<AbsDialogScrollView$ContentArrange> it = this.mArranges.iterator();
        while (it.hasNext()) {
            it.next().release();
        }
        this.mArranges.clear();
        super.onDetachedFromWindow();
    }

    protected void onInitializeScroll() {
        int initialDisplayHeight;
        if (this.mArranges.size() == 0) {
            if (CamLog.VERBOSE) {
                CamLog.d("panel size is 0");
            }
        } else {
            if (this.mIsExpandedWhenOpened) {
                int iComputeScrollOffset = this.mArranges.get(0).computeScrollOffset();
                if (isPortrait()) {
                    initialDisplayHeight = this.mParams.maxHeightPortrait - getInitialDisplayHeight();
                } else {
                    initialDisplayHeight = this.mParams.maxHeightLandscape - getInitialDisplayHeight();
                }
                scrollTo(0, iComputeScrollOffset + initialDisplayHeight);
                return;
            }
            scrollTo(0, 0);
        }
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
        if (this.mSomcScroller != null) {
            this.mSomcScroller.scrollTo(i, i2);
        }
        if (this.mDefaultScroller != null) {
            this.mDefaultScroller.scrollTo(i, i2);
        }
    }

    protected void setUiOrientation(int i) {
        this.mOrientation = i;
        if (this.mSomcScroller != null) {
            this.mSomcScroller.setOrientation(i);
        }
    }

    protected void setBottomMarginHint(int i) {
        if (this.mBottomMarginHint != i) {
            this.mBottomMarginHint = i;
        }
    }

    protected void setTopMarginHint(int i) {
        if (this.mTopMarginHint != i) {
            this.mTopMarginHint = i;
        }
    }

    protected void setScrollStatus(ScrollContainer$Status scrollContainer$Status) {
        this.mSomcScroller.setCurrentStatus(scrollContainer$Status);
    }

    protected void addContentView(View view) {
        this.mContentsBinder.addView(view);
    }

    protected boolean isPortrait() {
        return this.mOrientation == 1;
    }

    protected void updateDefaultScrollPosition() {
        this.mSomcScroller.setSettingDefaultHeight(getInitialDisplayHeight());
        this.mSomcScroller.setChildHeight(getScrollableContentLength());
    }

    protected int getArrangeHeightAtIndex(int i) {
        if (this.mArranges.isEmpty()) {
            return 0;
        }
        return this.mArranges.get(i).computeHeight();
    }

    protected int getTotalArrangeHeight() {
        if (this.mArranges.isEmpty()) {
            return 0;
        }
        int iComputeHeight = 0;
        for (int i = 0; i < this.mArranges.size(); i++) {
            iComputeHeight += this.mArranges.get(i).computeHeight();
        }
        return iComputeHeight;
    }

    protected FrameLayout getBackgroundLayout() {
        return this.mBackground;
    }

    protected LinearLayout getContentLayout() {
        return this.mContentsBinder;
    }

    protected int getInitialDisplayHeight() {
        return calculateInitialDisplayHeight(2131165581);
    }

    protected int calculateInitialDisplayHeight(int i) {
        int iDimenToPixel = dimenToPixel(i);
        int scrollableContentLength = getScrollableContentLength();
        return iDimenToPixel > scrollableContentLength ? scrollableContentLength : iDimenToPixel;
    }

    protected int getScrolledHeight() {
        if (this.mSomcScroller == null) {
            return 0;
        }
        return this.mSomcScroller.getScrolledHeight();
    }

    protected ScrollContainer$Status getScrollStatus() {
        if (this.mSomcScroller == null) {
            return null;
        }
        return this.mSomcScroller.getCurrentStatus();
    }

    protected View findItemViewWithTag(Object obj) {
        Iterator<AbsDialogScrollView$ContentArrange> it = this.mArranges.iterator();
        while (it.hasNext()) {
            View viewFindViewWithTag = it.next().findViewWithTag(obj);
            if (viewFindViewWithTag != null) {
                return viewFindViewWithTag;
            }
        }
        return null;
    }

    protected void startOpenAnimation(int i, int i2, Animator$AnimatorListener animator$AnimatorListener) {
        getAnimationFactory().open(i, i2, animator$AnimatorListener);
    }

    protected void startCloseAnimation(int i, int i2, Animator$AnimatorListener animator$AnimatorListener) {
        getAnimationFactory().close(i, i2, animator$AnimatorListener);
    }

    protected AbsDialogScrollView$AnimationFactory getAnimationFactory() {
        switch (AbsDialogScrollView$3.$SwitchMap$com$sonyericsson$android$camera$view$selectabledialog$AbsSelectableDialog$AnimationType[this.mParams.animationType.ordinal()]) {
            case 1:
                return new AbsDialogScrollView$FadeAnimation(this, null);
            case 2:
                return new AbsDialogScrollView$SliderAnimation(this, null);
            default:
                return new AbsDialogScrollView$2(this);
        }
    }
}

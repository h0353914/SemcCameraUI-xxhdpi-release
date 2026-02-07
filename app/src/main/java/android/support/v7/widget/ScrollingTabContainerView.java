package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v7.app.ActionBar$Tab;
import android.support.v7.appcompat.R$attr;
import android.support.v7.view.ActionBarPolicy;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewPropertyAnimator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView$LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemSelectedListener;
import android.widget.HorizontalScrollView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
public class ScrollingTabContainerView extends HorizontalScrollView implements AdapterView$OnItemSelectedListener {
    private static final int FADE_DURATION = 200;
    private static final String TAG = "ScrollingTabContainerView";
    private static final Interpolator sAlphaInterpolator = new DecelerateInterpolator();
    private boolean mAllowCollapse;
    private int mContentHeight;
    int mMaxTabWidth;
    private int mSelectedTabIndex;
    int mStackedTabMaxWidth;
    private ScrollingTabContainerView$TabClickListener mTabClickListener;
    LinearLayoutCompat mTabLayout;
    Runnable mTabSelector;
    private Spinner mTabSpinner;
    protected final ScrollingTabContainerView$VisibilityAnimListener mVisAnimListener;
    protected ViewPropertyAnimator mVisibilityAnim;

    @Override // android.widget.AdapterView$OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public ScrollingTabContainerView(Context context) {
        super(context);
        this.mVisAnimListener = new ScrollingTabContainerView$VisibilityAnimListener(this);
        setHorizontalScrollBarEnabled(false);
        ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(context);
        setContentHeight(actionBarPolicy.getTabContainerHeight());
        this.mStackedTabMaxWidth = actionBarPolicy.getStackedTabMaxWidth();
        this.mTabLayout = createTabLayout();
        addView(this.mTabLayout, new ViewGroup$LayoutParams(-2, -1));
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View$MeasureSpec.getMode(i);
        boolean z = mode == 1073741824;
        setFillViewport(z);
        int childCount = this.mTabLayout.getChildCount();
        if (childCount > 1 && (mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            if (childCount > 2) {
                this.mMaxTabWidth = (int) (View$MeasureSpec.getSize(i) * 0.4f);
            } else {
                this.mMaxTabWidth = View$MeasureSpec.getSize(i) / 2;
            }
            this.mMaxTabWidth = Math.min(this.mMaxTabWidth, this.mStackedTabMaxWidth);
        } else {
            this.mMaxTabWidth = -1;
        }
        int iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(this.mContentHeight, 1073741824);
        if (!z && this.mAllowCollapse) {
            this.mTabLayout.measure(0, iMakeMeasureSpec);
            if (this.mTabLayout.getMeasuredWidth() > View$MeasureSpec.getSize(i)) {
                performCollapse();
            } else {
                performExpand();
            }
        } else {
            performExpand();
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i, iMakeMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (!z || measuredWidth == measuredWidth2) {
            return;
        }
        setTabSelected(this.mSelectedTabIndex);
    }

    private boolean isCollapsed() {
        return this.mTabSpinner != null && this.mTabSpinner.getParent() == this;
    }

    public void setAllowCollapse(boolean z) {
        this.mAllowCollapse = z;
    }

    private void performCollapse() {
        if (isCollapsed()) {
            return;
        }
        if (this.mTabSpinner == null) {
            this.mTabSpinner = createSpinner();
        }
        removeView(this.mTabLayout);
        addView(this.mTabSpinner, new ViewGroup$LayoutParams(-2, -1));
        if (this.mTabSpinner.getAdapter() == null) {
            this.mTabSpinner.setAdapter((SpinnerAdapter) new ScrollingTabContainerView$TabAdapter(this));
        }
        if (this.mTabSelector != null) {
            removeCallbacks(this.mTabSelector);
            this.mTabSelector = null;
        }
        this.mTabSpinner.setSelection(this.mSelectedTabIndex);
    }

    private boolean performExpand() {
        if (!isCollapsed()) {
            return false;
        }
        removeView(this.mTabSpinner);
        addView(this.mTabLayout, new ViewGroup$LayoutParams(-2, -1));
        setTabSelected(this.mTabSpinner.getSelectedItemPosition());
        return false;
    }

    public void setTabSelected(int i) {
        this.mSelectedTabIndex = i;
        int childCount = this.mTabLayout.getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = this.mTabLayout.getChildAt(i2);
            boolean z = i2 == i;
            childAt.setSelected(z);
            if (z) {
                animateToTab(i);
            }
            i2++;
        }
        if (this.mTabSpinner == null || i < 0) {
            return;
        }
        this.mTabSpinner.setSelection(i);
    }

    public void setContentHeight(int i) {
        this.mContentHeight = i;
        requestLayout();
    }

    private LinearLayoutCompat createTabLayout() {
        LinearLayoutCompat linearLayoutCompat = new LinearLayoutCompat(getContext(), null, R$attr.actionBarTabBarStyle);
        linearLayoutCompat.setMeasureWithLargestChildEnabled(true);
        linearLayoutCompat.setGravity(17);
        linearLayoutCompat.setLayoutParams(new LinearLayoutCompat$LayoutParams(-2, -1));
        return linearLayoutCompat;
    }

    private Spinner createSpinner() {
        AppCompatSpinner appCompatSpinner = new AppCompatSpinner(getContext(), null, R$attr.actionDropDownStyle);
        appCompatSpinner.setLayoutParams(new LinearLayoutCompat$LayoutParams(-2, -1));
        appCompatSpinner.setOnItemSelectedListener(this);
        return appCompatSpinner;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(getContext());
        setContentHeight(actionBarPolicy.getTabContainerHeight());
        this.mStackedTabMaxWidth = actionBarPolicy.getStackedTabMaxWidth();
    }

    public void animateToVisibility(int i) {
        if (this.mVisibilityAnim != null) {
            this.mVisibilityAnim.cancel();
        }
        if (i == 0) {
            if (getVisibility() != 0) {
                setAlpha(0.0f);
            }
            ViewPropertyAnimator viewPropertyAnimatorAlpha = animate().alpha(1.0f);
            viewPropertyAnimatorAlpha.setDuration(200L);
            viewPropertyAnimatorAlpha.setInterpolator(sAlphaInterpolator);
            viewPropertyAnimatorAlpha.setListener(this.mVisAnimListener.withFinalVisibility(viewPropertyAnimatorAlpha, i));
            viewPropertyAnimatorAlpha.start();
            return;
        }
        ViewPropertyAnimator viewPropertyAnimatorAlpha2 = animate().alpha(0.0f);
        viewPropertyAnimatorAlpha2.setDuration(200L);
        viewPropertyAnimatorAlpha2.setInterpolator(sAlphaInterpolator);
        viewPropertyAnimatorAlpha2.setListener(this.mVisAnimListener.withFinalVisibility(viewPropertyAnimatorAlpha2, i));
        viewPropertyAnimatorAlpha2.start();
    }

    public void animateToTab(int i) {
        View childAt = this.mTabLayout.getChildAt(i);
        if (this.mTabSelector != null) {
            removeCallbacks(this.mTabSelector);
        }
        this.mTabSelector = new ScrollingTabContainerView$1(this, childAt);
        post(this.mTabSelector);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mTabSelector != null) {
            post(this.mTabSelector);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mTabSelector != null) {
            removeCallbacks(this.mTabSelector);
        }
    }

    ScrollingTabContainerView$TabView createTabView(ActionBar$Tab actionBar$Tab, boolean z) {
        ScrollingTabContainerView$TabView scrollingTabContainerView$TabView = new ScrollingTabContainerView$TabView(this, getContext(), actionBar$Tab, z);
        if (z) {
            scrollingTabContainerView$TabView.setBackgroundDrawable(null);
            scrollingTabContainerView$TabView.setLayoutParams(new AbsListView$LayoutParams(-1, this.mContentHeight));
        } else {
            scrollingTabContainerView$TabView.setFocusable(true);
            if (this.mTabClickListener == null) {
                this.mTabClickListener = new ScrollingTabContainerView$TabClickListener(this);
            }
            scrollingTabContainerView$TabView.setOnClickListener(this.mTabClickListener);
        }
        return scrollingTabContainerView$TabView;
    }

    public void addTab(ActionBar$Tab actionBar$Tab, boolean z) {
        ScrollingTabContainerView$TabView scrollingTabContainerView$TabViewCreateTabView = createTabView(actionBar$Tab, false);
        this.mTabLayout.addView(scrollingTabContainerView$TabViewCreateTabView, new LinearLayoutCompat$LayoutParams(0, -1, 1.0f));
        if (this.mTabSpinner != null) {
            ((ScrollingTabContainerView$TabAdapter) this.mTabSpinner.getAdapter()).notifyDataSetChanged();
        }
        if (z) {
            scrollingTabContainerView$TabViewCreateTabView.setSelected(true);
        }
        if (this.mAllowCollapse) {
            requestLayout();
        }
    }

    public void addTab(ActionBar$Tab actionBar$Tab, int i, boolean z) {
        ScrollingTabContainerView$TabView scrollingTabContainerView$TabViewCreateTabView = createTabView(actionBar$Tab, false);
        this.mTabLayout.addView(scrollingTabContainerView$TabViewCreateTabView, i, new LinearLayoutCompat$LayoutParams(0, -1, 1.0f));
        if (this.mTabSpinner != null) {
            ((ScrollingTabContainerView$TabAdapter) this.mTabSpinner.getAdapter()).notifyDataSetChanged();
        }
        if (z) {
            scrollingTabContainerView$TabViewCreateTabView.setSelected(true);
        }
        if (this.mAllowCollapse) {
            requestLayout();
        }
    }

    public void updateTab(int i) {
        ((ScrollingTabContainerView$TabView) this.mTabLayout.getChildAt(i)).update();
        if (this.mTabSpinner != null) {
            ((ScrollingTabContainerView$TabAdapter) this.mTabSpinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.mAllowCollapse) {
            requestLayout();
        }
    }

    public void removeTabAt(int i) {
        this.mTabLayout.removeViewAt(i);
        if (this.mTabSpinner != null) {
            ((ScrollingTabContainerView$TabAdapter) this.mTabSpinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.mAllowCollapse) {
            requestLayout();
        }
    }

    public void removeAllTabs() {
        this.mTabLayout.removeAllViews();
        if (this.mTabSpinner != null) {
            ((ScrollingTabContainerView$TabAdapter) this.mTabSpinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.mAllowCollapse) {
            requestLayout();
        }
    }

    @Override // android.widget.AdapterView$OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        ((ScrollingTabContainerView$TabView) view).getTab().select();
    }
}

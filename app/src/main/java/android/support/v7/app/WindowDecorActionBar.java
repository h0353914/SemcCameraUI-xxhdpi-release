package android.support.v7.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v4.view.ViewPropertyAnimatorUpdateListener;
import android.support.v7.appcompat.R$attr;
import android.support.v7.appcompat.R$id;
import android.support.v7.appcompat.R$styleable;
import android.support.v7.view.ActionBarPolicy;
import android.support.v7.view.ActionMode;
import android.support.v7.view.ActionMode$Callback;
import android.support.v7.view.ViewPropertyAnimatorCompatSet;
import android.support.v7.widget.ActionBarContainer;
import android.support.v7.widget.ActionBarContextView;
import android.support.v7.widget.ActionBarOverlayLayout;
import android.support.v7.widget.ActionBarOverlayLayout$ActionBarVisibilityCallback;
import android.support.v7.widget.DecorToolbar;
import android.support.v7.widget.ScrollingTabContainerView;
import android.support.v7.widget.Toolbar;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.SpinnerAdapter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
public class WindowDecorActionBar extends ActionBar implements ActionBarOverlayLayout$ActionBarVisibilityCallback {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final long FADE_IN_DURATION_MS = 200;
    private static final long FADE_OUT_DURATION_MS = 100;
    private static final int INVALID_POSITION = -1;
    private static final String TAG = "WindowDecorActionBar";
    private static final Interpolator sHideInterpolator = new AccelerateInterpolator();
    private static final Interpolator sShowInterpolator = new DecelerateInterpolator();
    WindowDecorActionBar$ActionModeImpl mActionMode;
    private Activity mActivity;
    ActionBarContainer mContainerView;
    View mContentView;
    Context mContext;
    ActionBarContextView mContextView;
    ViewPropertyAnimatorCompatSet mCurrentShowAnim;
    DecorToolbar mDecorToolbar;
    ActionMode mDeferredDestroyActionMode;
    ActionMode$Callback mDeferredModeDestroyCallback;
    private Dialog mDialog;
    private boolean mDisplayHomeAsUpSet;
    private boolean mHasEmbeddedTabs;
    boolean mHiddenByApp;
    boolean mHiddenBySystem;
    boolean mHideOnContentScroll;
    private boolean mLastMenuVisibility;
    ActionBarOverlayLayout mOverlayLayout;
    private WindowDecorActionBar$TabImpl mSelectedTab;
    private boolean mShowHideAnimationEnabled;
    private boolean mShowingForMode;
    ScrollingTabContainerView mTabScrollView;
    private Context mThemedContext;
    private ArrayList<WindowDecorActionBar$TabImpl> mTabs = new ArrayList<>();
    private int mSavedTabPosition = -1;
    private ArrayList<ActionBar$OnMenuVisibilityListener> mMenuVisibilityListeners = new ArrayList<>();
    private int mCurWindowVisibility = 0;
    boolean mContentAnimations = true;
    private boolean mNowShowing = true;
    final ViewPropertyAnimatorListener mHideListener = new WindowDecorActionBar$1(this);
    final ViewPropertyAnimatorListener mShowListener = new WindowDecorActionBar$2(this);
    final ViewPropertyAnimatorUpdateListener mUpdateListener = new WindowDecorActionBar$3(this);

    static boolean checkShowingFlags(boolean z, boolean z2, boolean z3) {
        if (z3) {
            return true;
        }
        return (z || z2) ? false : true;
    }

    @Override // android.support.v7.widget.ActionBarOverlayLayout$ActionBarVisibilityCallback
    public void onContentScrollStopped() {
    }

    @Override // android.support.v7.app.ActionBar
    public void setSplitBackgroundDrawable(Drawable drawable) {
    }

    public WindowDecorActionBar(Activity activity, boolean z) {
        this.mActivity = activity;
        View decorView = activity.getWindow().getDecorView();
        init(decorView);
        if (z) {
            return;
        }
        this.mContentView = decorView.findViewById(16908290);
    }

    public WindowDecorActionBar(Dialog dialog) {
        this.mDialog = dialog;
        init(dialog.getWindow().getDecorView());
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public WindowDecorActionBar(View view) {
        init(view);
    }

    private void init(View view) {
        this.mOverlayLayout = (ActionBarOverlayLayout) view.findViewById(R$id.decor_content_parent);
        if (this.mOverlayLayout != null) {
            this.mOverlayLayout.setActionBarVisibilityCallback(this);
        }
        this.mDecorToolbar = getDecorToolbar(view.findViewById(R$id.action_bar));
        this.mContextView = (ActionBarContextView) view.findViewById(R$id.action_context_bar);
        this.mContainerView = (ActionBarContainer) view.findViewById(R$id.action_bar_container);
        if (this.mDecorToolbar == null || this.mContextView == null || this.mContainerView == null) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.mContext = this.mDecorToolbar.getContext();
        boolean z = (this.mDecorToolbar.getDisplayOptions() & 4) != 0;
        if (z) {
            this.mDisplayHomeAsUpSet = true;
        }
        ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(this.mContext);
        setHomeButtonEnabled(actionBarPolicy.enableHomeButtonByDefault() || z);
        setHasEmbeddedTabs(actionBarPolicy.hasEmbeddedTabs());
        TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(null, R$styleable.ActionBar, R$attr.actionBarStyle, 0);
        if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.ActionBar_hideOnContentScroll, false)) {
            setHideOnContentScrollEnabled(true);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            setElevation(dimensionPixelSize);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private DecorToolbar getDecorToolbar(View view) {
        if (view instanceof DecorToolbar) {
            return (DecorToolbar) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't make a decor toolbar out of ");
        sb.append(view != 0 ? view.getClass().getSimpleName() : "null");
        throw new IllegalStateException(sb.toString());
    }

    @Override // android.support.v7.app.ActionBar
    public void setElevation(float f) {
        ViewCompat.setElevation(this.mContainerView, f);
    }

    @Override // android.support.v7.app.ActionBar
    public float getElevation() {
        return ViewCompat.getElevation(this.mContainerView);
    }

    @Override // android.support.v7.app.ActionBar
    public void onConfigurationChanged(Configuration configuration) {
        setHasEmbeddedTabs(ActionBarPolicy.get(this.mContext).hasEmbeddedTabs());
    }

    private void setHasEmbeddedTabs(boolean z) {
        this.mHasEmbeddedTabs = z;
        if (!this.mHasEmbeddedTabs) {
            this.mDecorToolbar.setEmbeddedTabView(null);
            this.mContainerView.setTabContainer(this.mTabScrollView);
        } else {
            this.mContainerView.setTabContainer(null);
            this.mDecorToolbar.setEmbeddedTabView(this.mTabScrollView);
        }
        boolean z2 = getNavigationMode() == 2;
        if (this.mTabScrollView != null) {
            if (z2) {
                this.mTabScrollView.setVisibility(0);
                if (this.mOverlayLayout != null) {
                    ViewCompat.requestApplyInsets(this.mOverlayLayout);
                }
            } else {
                this.mTabScrollView.setVisibility(8);
            }
        }
        this.mDecorToolbar.setCollapsible(!this.mHasEmbeddedTabs && z2);
        this.mOverlayLayout.setHasNonEmbeddedTabs(!this.mHasEmbeddedTabs && z2);
    }

    private void ensureTabsExist() {
        if (this.mTabScrollView != null) {
            return;
        }
        ScrollingTabContainerView scrollingTabContainerView = new ScrollingTabContainerView(this.mContext);
        if (this.mHasEmbeddedTabs) {
            scrollingTabContainerView.setVisibility(0);
            this.mDecorToolbar.setEmbeddedTabView(scrollingTabContainerView);
        } else {
            if (getNavigationMode() == 2) {
                scrollingTabContainerView.setVisibility(0);
                if (this.mOverlayLayout != null) {
                    ViewCompat.requestApplyInsets(this.mOverlayLayout);
                }
            } else {
                scrollingTabContainerView.setVisibility(8);
            }
            this.mContainerView.setTabContainer(scrollingTabContainerView);
        }
        this.mTabScrollView = scrollingTabContainerView;
    }

    void completeDeferredDestroyActionMode() {
        if (this.mDeferredModeDestroyCallback != null) {
            this.mDeferredModeDestroyCallback.onDestroyActionMode(this.mDeferredDestroyActionMode);
            this.mDeferredDestroyActionMode = null;
            this.mDeferredModeDestroyCallback = null;
        }
    }

    @Override // android.support.v7.widget.ActionBarOverlayLayout$ActionBarVisibilityCallback
    public void onWindowVisibilityChanged(int i) {
        this.mCurWindowVisibility = i;
    }

    @Override // android.support.v7.app.ActionBar
    public void setShowHideAnimationEnabled(boolean z) {
        this.mShowHideAnimationEnabled = z;
        if (z || this.mCurrentShowAnim == null) {
            return;
        }
        this.mCurrentShowAnim.cancel();
    }

    @Override // android.support.v7.app.ActionBar
    public void addOnMenuVisibilityListener(ActionBar$OnMenuVisibilityListener actionBar$OnMenuVisibilityListener) {
        this.mMenuVisibilityListeners.add(actionBar$OnMenuVisibilityListener);
    }

    @Override // android.support.v7.app.ActionBar
    public void removeOnMenuVisibilityListener(ActionBar$OnMenuVisibilityListener actionBar$OnMenuVisibilityListener) {
        this.mMenuVisibilityListeners.remove(actionBar$OnMenuVisibilityListener);
    }

    @Override // android.support.v7.app.ActionBar
    public void dispatchMenuVisibilityChanged(boolean z) {
        if (z == this.mLastMenuVisibility) {
            return;
        }
        this.mLastMenuVisibility = z;
        int size = this.mMenuVisibilityListeners.size();
        for (int i = 0; i < size; i++) {
            this.mMenuVisibilityListeners.get(i).onMenuVisibilityChanged(z);
        }
    }

    @Override // android.support.v7.app.ActionBar
    public void setCustomView(int i) {
        setCustomView(LayoutInflater.from(getThemedContext()).inflate(i, this.mDecorToolbar.getViewGroup(), false));
    }

    @Override // android.support.v7.app.ActionBar
    public void setDisplayUseLogoEnabled(boolean z) {
        setDisplayOptions(z ? 1 : 0, 1);
    }

    @Override // android.support.v7.app.ActionBar
    public void setDisplayShowHomeEnabled(boolean z) {
        setDisplayOptions(z ? 2 : 0, 2);
    }

    @Override // android.support.v7.app.ActionBar
    public void setDisplayHomeAsUpEnabled(boolean z) {
        setDisplayOptions(z ? 4 : 0, 4);
    }

    @Override // android.support.v7.app.ActionBar
    public void setDisplayShowTitleEnabled(boolean z) {
        setDisplayOptions(z ? 8 : 0, 8);
    }

    @Override // android.support.v7.app.ActionBar
    public void setDisplayShowCustomEnabled(boolean z) {
        setDisplayOptions(z ? 16 : 0, 16);
    }

    @Override // android.support.v7.app.ActionBar
    public void setHomeButtonEnabled(boolean z) {
        this.mDecorToolbar.setHomeButtonEnabled(z);
    }

    @Override // android.support.v7.app.ActionBar
    public void setTitle(int i) {
        setTitle(this.mContext.getString(i));
    }

    @Override // android.support.v7.app.ActionBar
    public void setSubtitle(int i) {
        setSubtitle(this.mContext.getString(i));
    }

    @Override // android.support.v7.app.ActionBar
    public void setSelectedNavigationItem(int i) {
        switch (this.mDecorToolbar.getNavigationMode()) {
            case 1:
                this.mDecorToolbar.setDropdownSelectedPosition(i);
                return;
            case 2:
                selectTab(this.mTabs.get(i));
                return;
            default:
                throw new IllegalStateException("setSelectedNavigationIndex not valid for current navigation mode");
        }
    }

    @Override // android.support.v7.app.ActionBar
    public void removeAllTabs() {
        cleanupTabs();
    }

    private void cleanupTabs() {
        if (this.mSelectedTab != null) {
            selectTab(null);
        }
        this.mTabs.clear();
        if (this.mTabScrollView != null) {
            this.mTabScrollView.removeAllTabs();
        }
        this.mSavedTabPosition = -1;
    }

    @Override // android.support.v7.app.ActionBar
    public void setTitle(CharSequence charSequence) {
        this.mDecorToolbar.setTitle(charSequence);
    }

    @Override // android.support.v7.app.ActionBar
    public void setWindowTitle(CharSequence charSequence) {
        this.mDecorToolbar.setWindowTitle(charSequence);
    }

    @Override // android.support.v7.app.ActionBar
    public boolean requestFocus() {
        ViewGroup viewGroup = this.mDecorToolbar.getViewGroup();
        if (viewGroup == null || viewGroup.hasFocus()) {
            return false;
        }
        viewGroup.requestFocus();
        return true;
    }

    @Override // android.support.v7.app.ActionBar
    public void setSubtitle(CharSequence charSequence) {
        this.mDecorToolbar.setSubtitle(charSequence);
    }

    @Override // android.support.v7.app.ActionBar
    public void setDisplayOptions(int i) {
        if ((i & 4) != 0) {
            this.mDisplayHomeAsUpSet = true;
        }
        this.mDecorToolbar.setDisplayOptions(i);
    }

    @Override // android.support.v7.app.ActionBar
    public void setDisplayOptions(int i, int i2) {
        int displayOptions = this.mDecorToolbar.getDisplayOptions();
        if ((i2 & 4) != 0) {
            this.mDisplayHomeAsUpSet = true;
        }
        this.mDecorToolbar.setDisplayOptions((i & i2) | ((~i2) & displayOptions));
    }

    @Override // android.support.v7.app.ActionBar
    public void setBackgroundDrawable(Drawable drawable) {
        this.mContainerView.setPrimaryBackground(drawable);
    }

    @Override // android.support.v7.app.ActionBar
    public void setStackedBackgroundDrawable(Drawable drawable) {
        this.mContainerView.setStackedBackground(drawable);
    }

    @Override // android.support.v7.app.ActionBar
    public View getCustomView() {
        return this.mDecorToolbar.getCustomView();
    }

    @Override // android.support.v7.app.ActionBar
    public CharSequence getTitle() {
        return this.mDecorToolbar.getTitle();
    }

    @Override // android.support.v7.app.ActionBar
    public CharSequence getSubtitle() {
        return this.mDecorToolbar.getSubtitle();
    }

    @Override // android.support.v7.app.ActionBar
    public int getNavigationMode() {
        return this.mDecorToolbar.getNavigationMode();
    }

    @Override // android.support.v7.app.ActionBar
    public int getDisplayOptions() {
        return this.mDecorToolbar.getDisplayOptions();
    }

    @Override // android.support.v7.app.ActionBar
    public ActionMode startActionMode(ActionMode$Callback actionMode$Callback) {
        if (this.mActionMode != null) {
            this.mActionMode.finish();
        }
        this.mOverlayLayout.setHideOnContentScrollEnabled(false);
        this.mContextView.killMode();
        WindowDecorActionBar$ActionModeImpl windowDecorActionBar$ActionModeImpl = new WindowDecorActionBar$ActionModeImpl(this, this.mContextView.getContext(), actionMode$Callback);
        if (!windowDecorActionBar$ActionModeImpl.dispatchOnCreate()) {
            return null;
        }
        this.mActionMode = windowDecorActionBar$ActionModeImpl;
        windowDecorActionBar$ActionModeImpl.invalidate();
        this.mContextView.initForMode(windowDecorActionBar$ActionModeImpl);
        animateToMode(true);
        this.mContextView.sendAccessibilityEvent(32);
        return windowDecorActionBar$ActionModeImpl;
    }

    private void configureTab(ActionBar$Tab actionBar$Tab, int i) {
        WindowDecorActionBar$TabImpl windowDecorActionBar$TabImpl = (WindowDecorActionBar$TabImpl) actionBar$Tab;
        if (windowDecorActionBar$TabImpl.getCallback() == null) {
            throw new IllegalStateException("Action Bar Tab must have a Callback");
        }
        windowDecorActionBar$TabImpl.setPosition(i);
        this.mTabs.add(i, windowDecorActionBar$TabImpl);
        int size = this.mTabs.size();
        while (true) {
            i++;
            if (i >= size) {
                return;
            } else {
                this.mTabs.get(i).setPosition(i);
            }
        }
    }

    @Override // android.support.v7.app.ActionBar
    public void addTab(ActionBar$Tab actionBar$Tab) {
        addTab(actionBar$Tab, this.mTabs.isEmpty());
    }

    @Override // android.support.v7.app.ActionBar
    public void addTab(ActionBar$Tab actionBar$Tab, int i) {
        addTab(actionBar$Tab, i, this.mTabs.isEmpty());
    }

    @Override // android.support.v7.app.ActionBar
    public void addTab(ActionBar$Tab actionBar$Tab, boolean z) {
        ensureTabsExist();
        this.mTabScrollView.addTab(actionBar$Tab, z);
        configureTab(actionBar$Tab, this.mTabs.size());
        if (z) {
            selectTab(actionBar$Tab);
        }
    }

    @Override // android.support.v7.app.ActionBar
    public void addTab(ActionBar$Tab actionBar$Tab, int i, boolean z) {
        ensureTabsExist();
        this.mTabScrollView.addTab(actionBar$Tab, i, z);
        configureTab(actionBar$Tab, i);
        if (z) {
            selectTab(actionBar$Tab);
        }
    }

    @Override // android.support.v7.app.ActionBar
    public ActionBar$Tab newTab() {
        return new WindowDecorActionBar$TabImpl(this);
    }

    @Override // android.support.v7.app.ActionBar
    public void removeTab(ActionBar$Tab actionBar$Tab) {
        removeTabAt(actionBar$Tab.getPosition());
    }

    @Override // android.support.v7.app.ActionBar
    public void removeTabAt(int i) {
        if (this.mTabScrollView == null) {
            return;
        }
        int position = this.mSelectedTab != null ? this.mSelectedTab.getPosition() : this.mSavedTabPosition;
        this.mTabScrollView.removeTabAt(i);
        WindowDecorActionBar$TabImpl windowDecorActionBar$TabImplRemove = this.mTabs.remove(i);
        if (windowDecorActionBar$TabImplRemove != null) {
            windowDecorActionBar$TabImplRemove.setPosition(-1);
        }
        int size = this.mTabs.size();
        for (int i2 = i; i2 < size; i2++) {
            this.mTabs.get(i2).setPosition(i2);
        }
        if (position == i) {
            selectTab(this.mTabs.isEmpty() ? null : this.mTabs.get(Math.max(0, i - 1)));
        }
    }

    @Override // android.support.v7.app.ActionBar
    public void selectTab(ActionBar$Tab actionBar$Tab) {
        if (getNavigationMode() != 2) {
            this.mSavedTabPosition = actionBar$Tab != null ? actionBar$Tab.getPosition() : -1;
            return;
        }
        FragmentTransaction fragmentTransactionDisallowAddToBackStack = (!(this.mActivity instanceof FragmentActivity) || this.mDecorToolbar.getViewGroup().isInEditMode()) ? null : ((FragmentActivity) this.mActivity).getSupportFragmentManager().beginTransaction().disallowAddToBackStack();
        if (this.mSelectedTab == actionBar$Tab) {
            if (this.mSelectedTab != null) {
                this.mSelectedTab.getCallback().onTabReselected(this.mSelectedTab, fragmentTransactionDisallowAddToBackStack);
                this.mTabScrollView.animateToTab(actionBar$Tab.getPosition());
            }
        } else {
            this.mTabScrollView.setTabSelected(actionBar$Tab != null ? actionBar$Tab.getPosition() : -1);
            if (this.mSelectedTab != null) {
                this.mSelectedTab.getCallback().onTabUnselected(this.mSelectedTab, fragmentTransactionDisallowAddToBackStack);
            }
            this.mSelectedTab = (WindowDecorActionBar$TabImpl) actionBar$Tab;
            if (this.mSelectedTab != null) {
                this.mSelectedTab.getCallback().onTabSelected(this.mSelectedTab, fragmentTransactionDisallowAddToBackStack);
            }
        }
        if (fragmentTransactionDisallowAddToBackStack == null || fragmentTransactionDisallowAddToBackStack.isEmpty()) {
            return;
        }
        fragmentTransactionDisallowAddToBackStack.commit();
    }

    @Override // android.support.v7.app.ActionBar
    public ActionBar$Tab getSelectedTab() {
        return this.mSelectedTab;
    }

    @Override // android.support.v7.app.ActionBar
    public int getHeight() {
        return this.mContainerView.getHeight();
    }

    @Override // android.support.v7.widget.ActionBarOverlayLayout$ActionBarVisibilityCallback
    public void enableContentAnimations(boolean z) {
        this.mContentAnimations = z;
    }

    @Override // android.support.v7.app.ActionBar
    public void show() {
        if (this.mHiddenByApp) {
            this.mHiddenByApp = false;
            updateVisibility(false);
        }
    }

    private void showForActionMode() {
        if (this.mShowingForMode) {
            return;
        }
        this.mShowingForMode = true;
        if (this.mOverlayLayout != null) {
            this.mOverlayLayout.setShowingForActionMode(true);
        }
        updateVisibility(false);
    }

    @Override // android.support.v7.widget.ActionBarOverlayLayout$ActionBarVisibilityCallback
    public void showForSystem() {
        if (this.mHiddenBySystem) {
            this.mHiddenBySystem = false;
            updateVisibility(true);
        }
    }

    @Override // android.support.v7.app.ActionBar
    public void hide() {
        if (this.mHiddenByApp) {
            return;
        }
        this.mHiddenByApp = true;
        updateVisibility(false);
    }

    private void hideForActionMode() {
        if (this.mShowingForMode) {
            this.mShowingForMode = false;
            if (this.mOverlayLayout != null) {
                this.mOverlayLayout.setShowingForActionMode(false);
            }
            updateVisibility(false);
        }
    }

    @Override // android.support.v7.widget.ActionBarOverlayLayout$ActionBarVisibilityCallback
    public void hideForSystem() {
        if (this.mHiddenBySystem) {
            return;
        }
        this.mHiddenBySystem = true;
        updateVisibility(true);
    }

    @Override // android.support.v7.app.ActionBar
    public void setHideOnContentScrollEnabled(boolean z) {
        if (z && !this.mOverlayLayout.isInOverlayMode()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
        }
        this.mHideOnContentScroll = z;
        this.mOverlayLayout.setHideOnContentScrollEnabled(z);
    }

    @Override // android.support.v7.app.ActionBar
    public boolean isHideOnContentScrollEnabled() {
        return this.mOverlayLayout.isHideOnContentScrollEnabled();
    }

    @Override // android.support.v7.app.ActionBar
    public int getHideOffset() {
        return this.mOverlayLayout.getActionBarHideOffset();
    }

    @Override // android.support.v7.app.ActionBar
    public void setHideOffset(int i) {
        if (i != 0 && !this.mOverlayLayout.isInOverlayMode()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset");
        }
        this.mOverlayLayout.setActionBarHideOffset(i);
    }

    private void updateVisibility(boolean z) {
        if (checkShowingFlags(this.mHiddenByApp, this.mHiddenBySystem, this.mShowingForMode)) {
            if (this.mNowShowing) {
                return;
            }
            this.mNowShowing = true;
            doShow(z);
            return;
        }
        if (this.mNowShowing) {
            this.mNowShowing = false;
            doHide(z);
        }
    }

    public void doShow(boolean z) {
        if (this.mCurrentShowAnim != null) {
            this.mCurrentShowAnim.cancel();
        }
        this.mContainerView.setVisibility(0);
        if (this.mCurWindowVisibility == 0 && (this.mShowHideAnimationEnabled || z)) {
            this.mContainerView.setTranslationY(0.0f);
            float f = -this.mContainerView.getHeight();
            if (z) {
                this.mContainerView.getLocationInWindow(new int[]{0, 0});
                f -= r5[1];
            }
            this.mContainerView.setTranslationY(f);
            ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = new ViewPropertyAnimatorCompatSet();
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompatTranslationY = ViewCompat.animate(this.mContainerView).translationY(0.0f);
            viewPropertyAnimatorCompatTranslationY.setUpdateListener(this.mUpdateListener);
            viewPropertyAnimatorCompatSet.play(viewPropertyAnimatorCompatTranslationY);
            if (this.mContentAnimations && this.mContentView != null) {
                this.mContentView.setTranslationY(f);
                viewPropertyAnimatorCompatSet.play(ViewCompat.animate(this.mContentView).translationY(0.0f));
            }
            viewPropertyAnimatorCompatSet.setInterpolator(sShowInterpolator);
            viewPropertyAnimatorCompatSet.setDuration(250L);
            viewPropertyAnimatorCompatSet.setListener(this.mShowListener);
            this.mCurrentShowAnim = viewPropertyAnimatorCompatSet;
            viewPropertyAnimatorCompatSet.start();
        } else {
            this.mContainerView.setAlpha(1.0f);
            this.mContainerView.setTranslationY(0.0f);
            if (this.mContentAnimations && this.mContentView != null) {
                this.mContentView.setTranslationY(0.0f);
            }
            this.mShowListener.onAnimationEnd(null);
        }
        if (this.mOverlayLayout != null) {
            ViewCompat.requestApplyInsets(this.mOverlayLayout);
        }
    }

    public void doHide(boolean z) {
        if (this.mCurrentShowAnim != null) {
            this.mCurrentShowAnim.cancel();
        }
        if (this.mCurWindowVisibility == 0 && (this.mShowHideAnimationEnabled || z)) {
            this.mContainerView.setAlpha(1.0f);
            this.mContainerView.setTransitioning(true);
            ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = new ViewPropertyAnimatorCompatSet();
            float f = -this.mContainerView.getHeight();
            if (z) {
                this.mContainerView.getLocationInWindow(new int[]{0, 0});
                f -= r5[1];
            }
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompatTranslationY = ViewCompat.animate(this.mContainerView).translationY(f);
            viewPropertyAnimatorCompatTranslationY.setUpdateListener(this.mUpdateListener);
            viewPropertyAnimatorCompatSet.play(viewPropertyAnimatorCompatTranslationY);
            if (this.mContentAnimations && this.mContentView != null) {
                viewPropertyAnimatorCompatSet.play(ViewCompat.animate(this.mContentView).translationY(f));
            }
            viewPropertyAnimatorCompatSet.setInterpolator(sHideInterpolator);
            viewPropertyAnimatorCompatSet.setDuration(250L);
            viewPropertyAnimatorCompatSet.setListener(this.mHideListener);
            this.mCurrentShowAnim = viewPropertyAnimatorCompatSet;
            viewPropertyAnimatorCompatSet.start();
            return;
        }
        this.mHideListener.onAnimationEnd(null);
    }

    @Override // android.support.v7.app.ActionBar
    public boolean isShowing() {
        int height = getHeight();
        return this.mNowShowing && (height == 0 || getHideOffset() < height);
    }

    public void animateToMode(boolean z) {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat;
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2;
        if (z) {
            showForActionMode();
        } else {
            hideForActionMode();
        }
        if (!shouldAnimateContextView()) {
            if (z) {
                this.mDecorToolbar.setVisibility(4);
                this.mContextView.setVisibility(0);
                return;
            } else {
                this.mDecorToolbar.setVisibility(0);
                this.mContextView.setVisibility(8);
                return;
            }
        }
        if (z) {
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompat3 = this.mDecorToolbar.setupAnimatorToVisibility(4, 100L);
            viewPropertyAnimatorCompat = this.mContextView.setupAnimatorToVisibility(0, 200L);
            viewPropertyAnimatorCompat2 = viewPropertyAnimatorCompat3;
        } else {
            viewPropertyAnimatorCompat = this.mDecorToolbar.setupAnimatorToVisibility(0, 200L);
            viewPropertyAnimatorCompat2 = this.mContextView.setupAnimatorToVisibility(8, 100L);
        }
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = new ViewPropertyAnimatorCompatSet();
        viewPropertyAnimatorCompatSet.playSequentially(viewPropertyAnimatorCompat2, viewPropertyAnimatorCompat);
        viewPropertyAnimatorCompatSet.start();
    }

    private boolean shouldAnimateContextView() {
        return ViewCompat.isLaidOut(this.mContainerView);
    }

    @Override // android.support.v7.app.ActionBar
    public Context getThemedContext() {
        if (this.mThemedContext == null) {
            TypedValue typedValue = new TypedValue();
            this.mContext.getTheme().resolveAttribute(R$attr.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.mThemedContext = new ContextThemeWrapper(this.mContext, i);
            } else {
                this.mThemedContext = this.mContext;
            }
        }
        return this.mThemedContext;
    }

    @Override // android.support.v7.app.ActionBar
    public boolean isTitleTruncated() {
        return this.mDecorToolbar != null && this.mDecorToolbar.isTitleTruncated();
    }

    @Override // android.support.v7.app.ActionBar
    public void setHomeAsUpIndicator(Drawable drawable) {
        this.mDecorToolbar.setNavigationIcon(drawable);
    }

    @Override // android.support.v7.app.ActionBar
    public void setHomeAsUpIndicator(int i) {
        this.mDecorToolbar.setNavigationIcon(i);
    }

    @Override // android.support.v7.app.ActionBar
    public void setHomeActionContentDescription(CharSequence charSequence) {
        this.mDecorToolbar.setNavigationContentDescription(charSequence);
    }

    @Override // android.support.v7.app.ActionBar
    public void setHomeActionContentDescription(int i) {
        this.mDecorToolbar.setNavigationContentDescription(i);
    }

    @Override // android.support.v7.widget.ActionBarOverlayLayout$ActionBarVisibilityCallback
    public void onContentScrollStarted() {
        if (this.mCurrentShowAnim != null) {
            this.mCurrentShowAnim.cancel();
            this.mCurrentShowAnim = null;
        }
    }

    @Override // android.support.v7.app.ActionBar
    public boolean collapseActionView() {
        if (this.mDecorToolbar == null || !this.mDecorToolbar.hasExpandedActionView()) {
            return false;
        }
        this.mDecorToolbar.collapseActionView();
        return true;
    }

    @Override // android.support.v7.app.ActionBar
    public void setCustomView(View view) {
        this.mDecorToolbar.setCustomView(view);
    }

    @Override // android.support.v7.app.ActionBar
    public void setCustomView(View view, ActionBar$LayoutParams actionBar$LayoutParams) {
        view.setLayoutParams(actionBar$LayoutParams);
        this.mDecorToolbar.setCustomView(view);
    }

    @Override // android.support.v7.app.ActionBar
    public void setListNavigationCallbacks(SpinnerAdapter spinnerAdapter, ActionBar$OnNavigationListener actionBar$OnNavigationListener) {
        this.mDecorToolbar.setDropdownParams(spinnerAdapter, new NavItemSelectedListener(actionBar$OnNavigationListener));
    }

    @Override // android.support.v7.app.ActionBar
    public int getSelectedNavigationIndex() {
        switch (this.mDecorToolbar.getNavigationMode()) {
            case 1:
                return this.mDecorToolbar.getDropdownSelectedPosition();
            case 2:
                if (this.mSelectedTab != null) {
                    return this.mSelectedTab.getPosition();
                }
                return -1;
            default:
                return -1;
        }
    }

    @Override // android.support.v7.app.ActionBar
    public int getNavigationItemCount() {
        switch (this.mDecorToolbar.getNavigationMode()) {
            case 1:
                return this.mDecorToolbar.getDropdownItemCount();
            case 2:
                return this.mTabs.size();
            default:
                return 0;
        }
    }

    @Override // android.support.v7.app.ActionBar
    public int getTabCount() {
        return this.mTabs.size();
    }

    @Override // android.support.v7.app.ActionBar
    public void setNavigationMode(int i) {
        int navigationMode = this.mDecorToolbar.getNavigationMode();
        if (navigationMode == 2) {
            this.mSavedTabPosition = getSelectedNavigationIndex();
            selectTab(null);
            this.mTabScrollView.setVisibility(8);
        }
        if (navigationMode != i && !this.mHasEmbeddedTabs && this.mOverlayLayout != null) {
            ViewCompat.requestApplyInsets(this.mOverlayLayout);
        }
        this.mDecorToolbar.setNavigationMode(i);
        boolean z = false;
        if (i == 2) {
            ensureTabsExist();
            this.mTabScrollView.setVisibility(0);
            if (this.mSavedTabPosition != -1) {
                setSelectedNavigationItem(this.mSavedTabPosition);
                this.mSavedTabPosition = -1;
            }
        }
        this.mDecorToolbar.setCollapsible(i == 2 && !this.mHasEmbeddedTabs);
        ActionBarOverlayLayout actionBarOverlayLayout = this.mOverlayLayout;
        if (i == 2 && !this.mHasEmbeddedTabs) {
            z = true;
        }
        actionBarOverlayLayout.setHasNonEmbeddedTabs(z);
    }

    @Override // android.support.v7.app.ActionBar
    public ActionBar$Tab getTabAt(int i) {
        return this.mTabs.get(i);
    }

    @Override // android.support.v7.app.ActionBar
    public void setIcon(int i) {
        this.mDecorToolbar.setIcon(i);
    }

    @Override // android.support.v7.app.ActionBar
    public void setIcon(Drawable drawable) {
        this.mDecorToolbar.setIcon(drawable);
    }

    public boolean hasIcon() {
        return this.mDecorToolbar.hasIcon();
    }

    @Override // android.support.v7.app.ActionBar
    public void setLogo(int i) {
        this.mDecorToolbar.setLogo(i);
    }

    @Override // android.support.v7.app.ActionBar
    public void setLogo(Drawable drawable) {
        this.mDecorToolbar.setLogo(drawable);
    }

    public boolean hasLogo() {
        return this.mDecorToolbar.hasLogo();
    }

    @Override // android.support.v7.app.ActionBar
    public void setDefaultDisplayHomeAsUpEnabled(boolean z) {
        if (this.mDisplayHomeAsUpSet) {
            return;
        }
        setDisplayHomeAsUpEnabled(z);
    }

    @Override // android.support.v7.app.ActionBar
    public boolean onKeyShortcut(int i, KeyEvent keyEvent) {
        Menu menu;
        if (this.mActionMode == null || (menu = this.mActionMode.getMenu()) == null) {
            return false;
        }
        menu.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menu.performShortcut(i, keyEvent, 0);
    }
}

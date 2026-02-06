package android.support.v7.app;

import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager$NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources$Theme;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.NavUtils;
import android.support.v4.view.KeyEventDispatcher;
import android.support.v4.view.KeyEventDispatcher$Component;
import android.support.v4.view.LayoutInflaterCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.widget.PopupWindowCompat;
import android.support.v7.appcompat.R$attr;
import android.support.v7.appcompat.R$color;
import android.support.v7.appcompat.R$id;
import android.support.v7.appcompat.R$layout;
import android.support.v7.appcompat.R$styleable;
import android.support.v7.view.ActionMode;
import android.support.v7.view.ActionMode$Callback;
import android.support.v7.view.ContextThemeWrapper;
import android.support.v7.view.StandaloneActionMode;
import android.support.v7.view.SupportMenuInflater;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuBuilder$Callback;
import android.support.v7.widget.ActionBarContextView;
import android.support.v7.widget.AppCompatDrawableManager;
import android.support.v7.widget.ContentFrameLayout;
import android.support.v7.widget.DecorContentParent;
import android.support.v7.widget.FitWindowsViewGroup;
import android.support.v7.widget.TintTypedArray;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.VectorEnabledTintResources;
import android.support.v7.widget.ViewStubCompat;
import android.support.v7.widget.ViewUtils;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.LayoutInflater$Factory2;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import android.view.ViewParent;
import android.view.Window;
import android.view.Window$Callback;
import android.view.WindowManager;
import android.view.WindowManager$LayoutParams;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import org.xmlpull.v1.XmlPullParser;

class AppCompatDelegateImpl extends AppCompatDelegate implements MenuBuilder$Callback, LayoutInflater$Factory2 {
    private static final boolean DEBUG = false;
    static final String EXCEPTION_HANDLER_MESSAGE_SUFFIX = ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.";
    private static final boolean IS_PRE_LOLLIPOP;
    private static final String KEY_LOCAL_NIGHT_MODE = "appcompat:local_night_mode";
    private static boolean sInstalledExceptionHandler;
    private static final int[] sWindowBackgroundStyleable;
    ActionBar mActionBar;
    private AppCompatDelegateImpl$ActionMenuPresenterCallback mActionMenuPresenterCallback;
    ActionMode mActionMode;
    PopupWindow mActionModePopup;
    ActionBarContextView mActionModeView;
    final AppCompatCallback mAppCompatCallback;
    private AppCompatViewInflater mAppCompatViewInflater;
    final Window$Callback mAppCompatWindowCallback;
    private boolean mApplyDayNightCalled;
    private AppCompatDelegateImpl$AutoNightModeManager mAutoNightModeManager;
    private boolean mClosingActionMenu;
    final Context mContext;
    private DecorContentParent mDecorContentParent;
    private boolean mEnableDefaultActionBarUp;
    private boolean mFeatureIndeterminateProgress;
    private boolean mFeatureProgress;
    boolean mHasActionBar;
    int mInvalidatePanelMenuFeatures;
    boolean mInvalidatePanelMenuPosted;
    boolean mIsDestroyed;
    boolean mIsFloating;
    private boolean mLongPressBackDown;
    MenuInflater mMenuInflater;
    final Window$Callback mOriginalWindowCallback;
    boolean mOverlayActionBar;
    boolean mOverlayActionMode;
    private AppCompatDelegateImpl$PanelMenuPresenterCallback mPanelMenuPresenterCallback;
    private AppCompatDelegateImpl$PanelFeatureState[] mPanels;
    private AppCompatDelegateImpl$PanelFeatureState mPreparedPanel;
    Runnable mShowActionModePopup;
    private View mStatusGuard;
    private ViewGroup mSubDecor;
    private boolean mSubDecorInstalled;
    private Rect mTempRect1;
    private Rect mTempRect2;
    private CharSequence mTitle;
    private TextView mTitleView;
    final Window mWindow;
    boolean mWindowNoTitle;
    ViewPropertyAnimatorCompat mFadeAnim = null;
    private boolean mHandleNativeActionModes = true;
    private int mLocalNightMode = -100;
    private final Runnable mInvalidatePanelMenuRunnable = new AppCompatDelegateImpl$2(this);

    void onSubDecorInstalled(ViewGroup viewGroup) {
    }

    static {
        IS_PRE_LOLLIPOP = Build$VERSION.SDK_INT < 21;
        sWindowBackgroundStyleable = new int[]{16842836};
        if (!IS_PRE_LOLLIPOP || sInstalledExceptionHandler) {
            return;
        }
        Thread.setDefaultUncaughtExceptionHandler(new AppCompatDelegateImpl$1(Thread.getDefaultUncaughtExceptionHandler()));
        sInstalledExceptionHandler = true;
    }

    AppCompatDelegateImpl(Context context, Window window, AppCompatCallback appCompatCallback) {
        this.mContext = context;
        this.mWindow = window;
        this.mAppCompatCallback = appCompatCallback;
        this.mOriginalWindowCallback = this.mWindow.getCallback();
        if (this.mOriginalWindowCallback instanceof AppCompatDelegateImpl$AppCompatWindowCallback) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        this.mAppCompatWindowCallback = new AppCompatDelegateImpl$AppCompatWindowCallback(this, this.mOriginalWindowCallback);
        this.mWindow.setCallback(this.mAppCompatWindowCallback);
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, (AttributeSet) null, sWindowBackgroundStyleable);
        Drawable drawableIfKnown = tintTypedArrayObtainStyledAttributes.getDrawableIfKnown(0);
        if (drawableIfKnown != null) {
            this.mWindow.setBackgroundDrawable(drawableIfKnown);
        }
        tintTypedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void onCreate(Bundle bundle) {
        if (this.mOriginalWindowCallback instanceof Activity) {
            String parentActivityName = null;
            try {
                parentActivityName = NavUtils.getParentActivityName((Activity) this.mOriginalWindowCallback);
            } catch (IllegalArgumentException unused) {
            }
            if (parentActivityName != null) {
                ActionBar actionBarPeekSupportActionBar = peekSupportActionBar();
                if (actionBarPeekSupportActionBar == null) {
                    this.mEnableDefaultActionBarUp = true;
                } else {
                    actionBarPeekSupportActionBar.setDefaultDisplayHomeAsUpEnabled(true);
                }
            }
        }
        if (bundle == null || this.mLocalNightMode != -100) {
            return;
        }
        this.mLocalNightMode = bundle.getInt("appcompat:local_night_mode", -100);
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void onPostCreate(Bundle bundle) {
        ensureSubDecor();
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public ActionBar getSupportActionBar() {
        initWindowDecorActionBar();
        return this.mActionBar;
    }

    final ActionBar peekSupportActionBar() {
        return this.mActionBar;
    }

    final Window$Callback getWindowCallback() {
        return this.mWindow.getCallback();
    }

    private void initWindowDecorActionBar() {
        ensureSubDecor();
        if (this.mHasActionBar && this.mActionBar == null) {
            if (this.mOriginalWindowCallback instanceof Activity) {
                this.mActionBar = new WindowDecorActionBar((Activity) this.mOriginalWindowCallback, this.mOverlayActionBar);
            } else if (this.mOriginalWindowCallback instanceof Dialog) {
                this.mActionBar = new WindowDecorActionBar((Dialog) this.mOriginalWindowCallback);
            }
            if (this.mActionBar != null) {
                this.mActionBar.setDefaultDisplayHomeAsUpEnabled(this.mEnableDefaultActionBarUp);
            }
        }
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void setSupportActionBar(Toolbar toolbar) {
        if (this.mOriginalWindowCallback instanceof Activity) {
            ActionBar supportActionBar = getSupportActionBar();
            if (supportActionBar instanceof WindowDecorActionBar) {
                throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
            }
            this.mMenuInflater = null;
            if (supportActionBar != null) {
                supportActionBar.onDestroy();
            }
            if (toolbar != null) {
                ToolbarActionBar toolbarActionBar = new ToolbarActionBar(toolbar, ((Activity) this.mOriginalWindowCallback).getTitle(), this.mAppCompatWindowCallback);
                this.mActionBar = toolbarActionBar;
                this.mWindow.setCallback(toolbarActionBar.getWrappedWindowCallback());
            } else {
                this.mActionBar = null;
                this.mWindow.setCallback(this.mAppCompatWindowCallback);
            }
            invalidateOptionsMenu();
        }
    }

    final Context getActionBarThemedContext() {
        ActionBar supportActionBar = getSupportActionBar();
        Context themedContext = supportActionBar != null ? supportActionBar.getThemedContext() : null;
        return themedContext == null ? this.mContext : themedContext;
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public MenuInflater getMenuInflater() {
        if (this.mMenuInflater == null) {
            initWindowDecorActionBar();
            this.mMenuInflater = new SupportMenuInflater(this.mActionBar != null ? this.mActionBar.getThemedContext() : this.mContext);
        }
        return this.mMenuInflater;
    }

    @Override // android.support.v7.app.AppCompatDelegate
    @Nullable
    public <T extends View> T findViewById(@IdRes int i) {
        ensureSubDecor();
        return (T) this.mWindow.findViewById(i);
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void onConfigurationChanged(Configuration configuration) {
        ActionBar supportActionBar;
        if (this.mHasActionBar && this.mSubDecorInstalled && (supportActionBar = getSupportActionBar()) != null) {
            supportActionBar.onConfigurationChanged(configuration);
        }
        AppCompatDrawableManager.get().onConfigurationChanged(this.mContext);
        applyDayNight();
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void onStart() {
        applyDayNight();
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void onStop() {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setShowHideAnimationEnabled(false);
        }
        if (this.mAutoNightModeManager != null) {
            this.mAutoNightModeManager.cleanup();
        }
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void onPostResume() {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setShowHideAnimationEnabled(true);
        }
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void setContentView(View view) {
        ensureSubDecor();
        ViewGroup viewGroup = (ViewGroup) this.mSubDecor.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.mOriginalWindowCallback.onContentChanged();
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void setContentView(int i) {
        ensureSubDecor();
        ViewGroup viewGroup = (ViewGroup) this.mSubDecor.findViewById(16908290);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.mContext).inflate(i, viewGroup);
        this.mOriginalWindowCallback.onContentChanged();
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void setContentView(View view, ViewGroup$LayoutParams viewGroup$LayoutParams) {
        ensureSubDecor();
        ViewGroup viewGroup = (ViewGroup) this.mSubDecor.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view, viewGroup$LayoutParams);
        this.mOriginalWindowCallback.onContentChanged();
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void addContentView(View view, ViewGroup$LayoutParams viewGroup$LayoutParams) {
        ensureSubDecor();
        ((ViewGroup) this.mSubDecor.findViewById(16908290)).addView(view, viewGroup$LayoutParams);
        this.mOriginalWindowCallback.onContentChanged();
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void onSaveInstanceState(Bundle bundle) {
        if (this.mLocalNightMode != -100) {
            bundle.putInt("appcompat:local_night_mode", this.mLocalNightMode);
        }
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void onDestroy() {
        if (this.mInvalidatePanelMenuPosted) {
            this.mWindow.getDecorView().removeCallbacks(this.mInvalidatePanelMenuRunnable);
        }
        this.mIsDestroyed = true;
        if (this.mActionBar != null) {
            this.mActionBar.onDestroy();
        }
        if (this.mAutoNightModeManager != null) {
            this.mAutoNightModeManager.cleanup();
        }
    }

    private void ensureSubDecor() {
        if (this.mSubDecorInstalled) {
            return;
        }
        this.mSubDecor = createSubDecor();
        CharSequence title = getTitle();
        if (!TextUtils.isEmpty(title)) {
            if (this.mDecorContentParent != null) {
                this.mDecorContentParent.setWindowTitle(title);
            } else if (peekSupportActionBar() != null) {
                peekSupportActionBar().setWindowTitle(title);
            } else if (this.mTitleView != null) {
                this.mTitleView.setText(title);
            }
        }
        applyFixedSizeWindow();
        onSubDecorInstalled(this.mSubDecor);
        this.mSubDecorInstalled = true;
        AppCompatDelegateImpl$PanelFeatureState panelState = getPanelState(0, false);
        if (this.mIsDestroyed) {
            return;
        }
        if (panelState == null || panelState.menu == null) {
            invalidatePanelMenu(108);
        }
    }

    private ViewGroup createSubDecor() {
        ViewGroup viewGroup;
        Context contextThemeWrapper;
        TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(R$styleable.AppCompatTheme);
        if (!typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTheme_windowActionBar)) {
            typedArrayObtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.AppCompatTheme_windowNoTitle, false)) {
            requestWindowFeature(1);
        } else if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.AppCompatTheme_windowActionBar, false)) {
            requestWindowFeature(108);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.AppCompatTheme_windowActionBarOverlay, false)) {
            requestWindowFeature(109);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.AppCompatTheme_windowActionModeOverlay, false)) {
            requestWindowFeature(10);
        }
        this.mIsFloating = typedArrayObtainStyledAttributes.getBoolean(R$styleable.AppCompatTheme_android_windowIsFloating, false);
        typedArrayObtainStyledAttributes.recycle();
        this.mWindow.getDecorView();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.mContext);
        if (!this.mWindowNoTitle) {
            if (this.mIsFloating) {
                viewGroup = (ViewGroup) layoutInflaterFrom.inflate(R$layout.abc_dialog_title_material, (ViewGroup) null);
                this.mOverlayActionBar = false;
                this.mHasActionBar = false;
            } else if (this.mHasActionBar) {
                TypedValue typedValue = new TypedValue();
                this.mContext.getTheme().resolveAttribute(R$attr.actionBarTheme, typedValue, true);
                if (typedValue.resourceId != 0) {
                    contextThemeWrapper = new ContextThemeWrapper(this.mContext, typedValue.resourceId);
                } else {
                    contextThemeWrapper = this.mContext;
                }
                viewGroup = (ViewGroup) LayoutInflater.from(contextThemeWrapper).inflate(R$layout.abc_screen_toolbar, (ViewGroup) null);
                this.mDecorContentParent = (DecorContentParent) viewGroup.findViewById(R$id.decor_content_parent);
                this.mDecorContentParent.setWindowCallback(getWindowCallback());
                if (this.mOverlayActionBar) {
                    this.mDecorContentParent.initFeature(109);
                }
                if (this.mFeatureProgress) {
                    this.mDecorContentParent.initFeature(2);
                }
                if (this.mFeatureIndeterminateProgress) {
                    this.mDecorContentParent.initFeature(5);
                }
            } else {
                viewGroup = null;
            }
        } else {
            if (this.mOverlayActionMode) {
                viewGroup = (ViewGroup) layoutInflaterFrom.inflate(R$layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null);
            } else {
                viewGroup = (ViewGroup) layoutInflaterFrom.inflate(R$layout.abc_screen_simple, (ViewGroup) null);
            }
            if (Build$VERSION.SDK_INT >= 21) {
                ViewCompat.setOnApplyWindowInsetsListener(viewGroup, new AppCompatDelegateImpl$3(this));
            } else {
                ((FitWindowsViewGroup) viewGroup).setOnFitSystemWindowsListener(new AppCompatDelegateImpl$4(this));
            }
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.mHasActionBar + ", windowActionBarOverlay: " + this.mOverlayActionBar + ", android:windowIsFloating: " + this.mIsFloating + ", windowActionModeOverlay: " + this.mOverlayActionMode + ", windowNoTitle: " + this.mWindowNoTitle + " }");
        }
        if (this.mDecorContentParent == null) {
            this.mTitleView = (TextView) viewGroup.findViewById(R$id.title);
        }
        ViewUtils.makeOptionalFitsSystemWindows(viewGroup);
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(R$id.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.mWindow.findViewById(16908290);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(16908290);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.mWindow.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new AppCompatDelegateImpl$5(this));
        return viewGroup;
    }

    private void applyFixedSizeWindow() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.mSubDecor.findViewById(16908290);
        View decorView = this.mWindow.getDecorView();
        contentFrameLayout.setDecorPadding(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(R$styleable.AppCompatTheme);
        typedArrayObtainStyledAttributes.getValue(R$styleable.AppCompatTheme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
        typedArrayObtainStyledAttributes.getValue(R$styleable.AppCompatTheme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTheme_windowFixedWidthMajor)) {
            typedArrayObtainStyledAttributes.getValue(R$styleable.AppCompatTheme_windowFixedWidthMajor, contentFrameLayout.getFixedWidthMajor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTheme_windowFixedWidthMinor)) {
            typedArrayObtainStyledAttributes.getValue(R$styleable.AppCompatTheme_windowFixedWidthMinor, contentFrameLayout.getFixedWidthMinor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTheme_windowFixedHeightMajor)) {
            typedArrayObtainStyledAttributes.getValue(R$styleable.AppCompatTheme_windowFixedHeightMajor, contentFrameLayout.getFixedHeightMajor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTheme_windowFixedHeightMinor)) {
            typedArrayObtainStyledAttributes.getValue(R$styleable.AppCompatTheme_windowFixedHeightMinor, contentFrameLayout.getFixedHeightMinor());
        }
        typedArrayObtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public boolean requestWindowFeature(int i) {
        int iSanitizeWindowFeatureId = sanitizeWindowFeatureId(i);
        if (this.mWindowNoTitle && iSanitizeWindowFeatureId == 108) {
            return false;
        }
        if (this.mHasActionBar && iSanitizeWindowFeatureId == 1) {
            this.mHasActionBar = false;
        }
        switch (iSanitizeWindowFeatureId) {
            case 1:
                throwFeatureRequestIfSubDecorInstalled();
                this.mWindowNoTitle = true;
                return true;
            case 2:
                throwFeatureRequestIfSubDecorInstalled();
                this.mFeatureProgress = true;
                return true;
            case 5:
                throwFeatureRequestIfSubDecorInstalled();
                this.mFeatureIndeterminateProgress = true;
                return true;
            case 10:
                throwFeatureRequestIfSubDecorInstalled();
                this.mOverlayActionMode = true;
                return true;
            case 108:
                throwFeatureRequestIfSubDecorInstalled();
                this.mHasActionBar = true;
                return true;
            case 109:
                throwFeatureRequestIfSubDecorInstalled();
                this.mOverlayActionBar = true;
                return true;
            default:
                return this.mWindow.requestFeature(iSanitizeWindowFeatureId);
        }
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public boolean hasWindowFeature(int i) {
        boolean z;
        switch (sanitizeWindowFeatureId(i)) {
            case 1:
                z = this.mWindowNoTitle;
                break;
            case 2:
                z = this.mFeatureProgress;
                break;
            case 5:
                z = this.mFeatureIndeterminateProgress;
                break;
            case 10:
                z = this.mOverlayActionMode;
                break;
            case 108:
                z = this.mHasActionBar;
                break;
            case 109:
                z = this.mOverlayActionBar;
                break;
            default:
                z = false;
                break;
        }
        return z || this.mWindow.hasFeature(i);
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public final void setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        if (this.mDecorContentParent != null) {
            this.mDecorContentParent.setWindowTitle(charSequence);
        } else if (peekSupportActionBar() != null) {
            peekSupportActionBar().setWindowTitle(charSequence);
        } else if (this.mTitleView != null) {
            this.mTitleView.setText(charSequence);
        }
    }

    final CharSequence getTitle() {
        if (this.mOriginalWindowCallback instanceof Activity) {
            return ((Activity) this.mOriginalWindowCallback).getTitle();
        }
        return this.mTitle;
    }

    void onPanelClosed(int i) {
        if (i == 108) {
            ActionBar supportActionBar = getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.dispatchMenuVisibilityChanged(false);
                return;
            }
            return;
        }
        if (i == 0) {
            AppCompatDelegateImpl$PanelFeatureState panelState = getPanelState(i, true);
            if (panelState.isOpen) {
                closePanel(panelState, false);
            }
        }
    }

    void onMenuOpened(int i) {
        ActionBar supportActionBar;
        if (i != 108 || (supportActionBar = getSupportActionBar()) == null) {
            return;
        }
        supportActionBar.dispatchMenuVisibilityChanged(true);
    }

    @Override // android.support.v7.view.menu.MenuBuilder$Callback
    public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        AppCompatDelegateImpl$PanelFeatureState appCompatDelegateImpl$PanelFeatureStateFindMenuPanel;
        Window$Callback windowCallback = getWindowCallback();
        if (windowCallback == null || this.mIsDestroyed || (appCompatDelegateImpl$PanelFeatureStateFindMenuPanel = findMenuPanel(menuBuilder.getRootMenu())) == null) {
            return false;
        }
        return windowCallback.onMenuItemSelected(appCompatDelegateImpl$PanelFeatureStateFindMenuPanel.featureId, menuItem);
    }

    @Override // android.support.v7.view.menu.MenuBuilder$Callback
    public void onMenuModeChange(MenuBuilder menuBuilder) {
        reopenMenu(menuBuilder, true);
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public ActionMode startSupportActionMode(@NonNull ActionMode$Callback actionMode$Callback) {
        if (actionMode$Callback == null) {
            throw new IllegalArgumentException("ActionMode callback can not be null.");
        }
        if (this.mActionMode != null) {
            this.mActionMode.finish();
        }
        AppCompatDelegateImpl$ActionModeCallbackWrapperV9 appCompatDelegateImpl$ActionModeCallbackWrapperV9 = new AppCompatDelegateImpl$ActionModeCallbackWrapperV9(this, actionMode$Callback);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            this.mActionMode = supportActionBar.startActionMode(appCompatDelegateImpl$ActionModeCallbackWrapperV9);
            if (this.mActionMode != null && this.mAppCompatCallback != null) {
                this.mAppCompatCallback.onSupportActionModeStarted(this.mActionMode);
            }
        }
        if (this.mActionMode == null) {
            this.mActionMode = startSupportActionModeFromWindow(appCompatDelegateImpl$ActionModeCallbackWrapperV9);
        }
        return this.mActionMode;
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void invalidateOptionsMenu() {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar == null || !supportActionBar.invalidateOptionsMenu()) {
            invalidatePanelMenu(0);
        }
    }

    ActionMode startSupportActionModeFromWindow(@NonNull ActionMode$Callback actionMode$Callback) {
        ActionMode actionModeOnWindowStartingSupportActionMode;
        Context contextThemeWrapper;
        endOnGoingFadeAnimation();
        if (this.mActionMode != null) {
            this.mActionMode.finish();
        }
        if (!(actionMode$Callback instanceof AppCompatDelegateImpl$ActionModeCallbackWrapperV9)) {
            actionMode$Callback = new AppCompatDelegateImpl$ActionModeCallbackWrapperV9(this, actionMode$Callback);
        }
        if (this.mAppCompatCallback == null || this.mIsDestroyed) {
            actionModeOnWindowStartingSupportActionMode = null;
        } else {
            try {
                actionModeOnWindowStartingSupportActionMode = this.mAppCompatCallback.onWindowStartingSupportActionMode(actionMode$Callback);
            } catch (AbstractMethodError unused) {
                actionModeOnWindowStartingSupportActionMode = null;
            }
        }
        if (actionModeOnWindowStartingSupportActionMode != null) {
            this.mActionMode = actionModeOnWindowStartingSupportActionMode;
        } else {
            if (this.mActionModeView == null) {
                if (this.mIsFloating) {
                    TypedValue typedValue = new TypedValue();
                    Resources$Theme theme = this.mContext.getTheme();
                    theme.resolveAttribute(R$attr.actionBarTheme, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        Resources$Theme resources$ThemeNewTheme = this.mContext.getResources().newTheme();
                        resources$ThemeNewTheme.setTo(theme);
                        resources$ThemeNewTheme.applyStyle(typedValue.resourceId, true);
                        contextThemeWrapper = new ContextThemeWrapper(this.mContext, 0);
                        contextThemeWrapper.getTheme().setTo(resources$ThemeNewTheme);
                    } else {
                        contextThemeWrapper = this.mContext;
                    }
                    this.mActionModeView = new ActionBarContextView(contextThemeWrapper);
                    this.mActionModePopup = new PopupWindow(contextThemeWrapper, (AttributeSet) null, R$attr.actionModePopupWindowStyle);
                    PopupWindowCompat.setWindowLayoutType(this.mActionModePopup, 2);
                    this.mActionModePopup.setContentView(this.mActionModeView);
                    this.mActionModePopup.setWidth(-1);
                    contextThemeWrapper.getTheme().resolveAttribute(R$attr.actionBarSize, typedValue, true);
                    this.mActionModeView.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, contextThemeWrapper.getResources().getDisplayMetrics()));
                    this.mActionModePopup.setHeight(-2);
                    this.mShowActionModePopup = new AppCompatDelegateImpl$6(this);
                } else {
                    ViewStubCompat viewStubCompat = (ViewStubCompat) this.mSubDecor.findViewById(R$id.action_mode_bar_stub);
                    if (viewStubCompat != null) {
                        viewStubCompat.setLayoutInflater(LayoutInflater.from(getActionBarThemedContext()));
                        this.mActionModeView = (ActionBarContextView) viewStubCompat.inflate();
                    }
                }
            }
            if (this.mActionModeView != null) {
                endOnGoingFadeAnimation();
                this.mActionModeView.killMode();
                StandaloneActionMode standaloneActionMode = new StandaloneActionMode(this.mActionModeView.getContext(), this.mActionModeView, actionMode$Callback, this.mActionModePopup == null);
                if (actionMode$Callback.onCreateActionMode(standaloneActionMode, standaloneActionMode.getMenu())) {
                    standaloneActionMode.invalidate();
                    this.mActionModeView.initForMode(standaloneActionMode);
                    this.mActionMode = standaloneActionMode;
                    if (shouldAnimateActionModeView()) {
                        this.mActionModeView.setAlpha(0.0f);
                        this.mFadeAnim = ViewCompat.animate(this.mActionModeView).alpha(1.0f);
                        this.mFadeAnim.setListener(new AppCompatDelegateImpl$7(this));
                    } else {
                        this.mActionModeView.setAlpha(1.0f);
                        this.mActionModeView.setVisibility(0);
                        this.mActionModeView.sendAccessibilityEvent(32);
                        if (this.mActionModeView.getParent() instanceof View) {
                            ViewCompat.requestApplyInsets((View) this.mActionModeView.getParent());
                        }
                    }
                    if (this.mActionModePopup != null) {
                        this.mWindow.getDecorView().post(this.mShowActionModePopup);
                    }
                } else {
                    this.mActionMode = null;
                }
            }
        }
        if (this.mActionMode != null && this.mAppCompatCallback != null) {
            this.mAppCompatCallback.onSupportActionModeStarted(this.mActionMode);
        }
        return this.mActionMode;
    }

    final boolean shouldAnimateActionModeView() {
        return this.mSubDecorInstalled && this.mSubDecor != null && ViewCompat.isLaidOut(this.mSubDecor);
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void setHandleNativeActionModesEnabled(boolean z) {
        this.mHandleNativeActionModes = z;
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public boolean isHandleNativeActionModesEnabled() {
        return this.mHandleNativeActionModes;
    }

    void endOnGoingFadeAnimation() {
        if (this.mFadeAnim != null) {
            this.mFadeAnim.cancel();
        }
    }

    boolean onBackPressed() {
        if (this.mActionMode != null) {
            this.mActionMode.finish();
            return true;
        }
        ActionBar supportActionBar = getSupportActionBar();
        return supportActionBar != null && supportActionBar.collapseActionView();
    }

    boolean onKeyShortcut(int i, KeyEvent keyEvent) {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null && supportActionBar.onKeyShortcut(i, keyEvent)) {
            return true;
        }
        if (this.mPreparedPanel != null && performPanelShortcut(this.mPreparedPanel, keyEvent.getKeyCode(), keyEvent, 1)) {
            if (this.mPreparedPanel != null) {
                this.mPreparedPanel.isHandled = true;
            }
            return true;
        }
        if (this.mPreparedPanel == null) {
            AppCompatDelegateImpl$PanelFeatureState panelState = getPanelState(0, true);
            preparePanel(panelState, keyEvent);
            boolean zPerformPanelShortcut = performPanelShortcut(panelState, keyEvent.getKeyCode(), keyEvent, 1);
            panelState.isPrepared = false;
            if (zPerformPanelShortcut) {
                return true;
            }
        }
        return false;
    }

    boolean dispatchKeyEvent(KeyEvent keyEvent) {
        View decorView;
        if (((this.mOriginalWindowCallback instanceof KeyEventDispatcher$Component) || (this.mOriginalWindowCallback instanceof AppCompatDialog)) && (decorView = this.mWindow.getDecorView()) != null && KeyEventDispatcher.dispatchBeforeHierarchy(decorView, keyEvent)) {
            return true;
        }
        if (keyEvent.getKeyCode() == 82 && this.mOriginalWindowCallback.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        return keyEvent.getAction() == 0 ? onKeyDown(keyCode, keyEvent) : onKeyUp(keyCode, keyEvent);
    }

    boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i == 4) {
            boolean z = this.mLongPressBackDown;
            this.mLongPressBackDown = false;
            AppCompatDelegateImpl$PanelFeatureState panelState = getPanelState(0, false);
            if (panelState != null && panelState.isOpen) {
                if (!z) {
                    closePanel(panelState, true);
                }
                return true;
            }
            if (onBackPressed()) {
                return true;
            }
        } else if (i == 82) {
            onKeyUpPanel(0, keyEvent);
            return true;
        }
        return false;
    }

    boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            this.mLongPressBackDown = (keyEvent.getFlags() & 128) != 0;
        } else if (i == 82) {
            onKeyDownPanel(0, keyEvent);
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v7.app.AppCompatDelegate
    public View createView(View view, String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        boolean zShouldInheritContext = false;
        if (this.mAppCompatViewInflater == null) {
            String string = this.mContext.obtainStyledAttributes(R$styleable.AppCompatTheme).getString(R$styleable.AppCompatTheme_viewInflaterClass);
            if (string == null || AppCompatViewInflater.class.getName().equals(string)) {
                this.mAppCompatViewInflater = new AppCompatViewInflater();
            } else {
                try {
                    this.mAppCompatViewInflater = (AppCompatViewInflater) Class.forName(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable th) {
                    Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    this.mAppCompatViewInflater = new AppCompatViewInflater();
                }
            }
        }
        if (IS_PRE_LOLLIPOP) {
            if (attributeSet instanceof XmlPullParser) {
                if (((XmlPullParser) attributeSet).getDepth() > 1) {
                    zShouldInheritContext = true;
                }
            } else {
                zShouldInheritContext = shouldInheritContext((ViewParent) view);
            }
        }
        return this.mAppCompatViewInflater.createView(view, str, context, attributeSet, zShouldInheritContext, IS_PRE_LOLLIPOP, true, VectorEnabledTintResources.shouldBeUsed());
    }

    private boolean shouldInheritContext(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.mWindow.getDecorView();
        while (viewParent != null) {
            if (viewParent == decorView || !(viewParent instanceof View) || ViewCompat.isAttachedToWindow((View) viewParent)) {
                return false;
            }
            viewParent = viewParent.getParent();
        }
        return true;
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void installViewFactory() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.mContext);
        if (layoutInflaterFrom.getFactory() == null) {
            LayoutInflaterCompat.setFactory2(layoutInflaterFrom, this);
        } else {
            if (layoutInflaterFrom.getFactory2() instanceof AppCompatDelegateImpl) {
                return;
            }
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // android.view.LayoutInflater$Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return createView(view, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater$Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    private void openPanel(AppCompatDelegateImpl$PanelFeatureState appCompatDelegateImpl$PanelFeatureState, KeyEvent keyEvent) {
        int i;
        ViewGroup$LayoutParams layoutParams;
        if (appCompatDelegateImpl$PanelFeatureState.isOpen || this.mIsDestroyed) {
            return;
        }
        if (appCompatDelegateImpl$PanelFeatureState.featureId == 0) {
            if ((this.mContext.getResources().getConfiguration().screenLayout & 15) == 4) {
                return;
            }
        }
        Window$Callback windowCallback = getWindowCallback();
        if (windowCallback != null && !windowCallback.onMenuOpened(appCompatDelegateImpl$PanelFeatureState.featureId, appCompatDelegateImpl$PanelFeatureState.menu)) {
            closePanel(appCompatDelegateImpl$PanelFeatureState, true);
            return;
        }
        WindowManager windowManager = (WindowManager) this.mContext.getSystemService("window");
        if (windowManager != null && preparePanel(appCompatDelegateImpl$PanelFeatureState, keyEvent)) {
            if (appCompatDelegateImpl$PanelFeatureState.decorView == null || appCompatDelegateImpl$PanelFeatureState.refreshDecorView) {
                if (appCompatDelegateImpl$PanelFeatureState.decorView == null) {
                    if (!initializePanelDecor(appCompatDelegateImpl$PanelFeatureState) || appCompatDelegateImpl$PanelFeatureState.decorView == null) {
                        return;
                    }
                } else if (appCompatDelegateImpl$PanelFeatureState.refreshDecorView && appCompatDelegateImpl$PanelFeatureState.decorView.getChildCount() > 0) {
                    appCompatDelegateImpl$PanelFeatureState.decorView.removeAllViews();
                }
                if (!initializePanelContent(appCompatDelegateImpl$PanelFeatureState) || !appCompatDelegateImpl$PanelFeatureState.hasPanelItems()) {
                    return;
                }
                ViewGroup$LayoutParams layoutParams2 = appCompatDelegateImpl$PanelFeatureState.shownPanelView.getLayoutParams();
                if (layoutParams2 == null) {
                    layoutParams2 = new ViewGroup$LayoutParams(-2, -2);
                }
                appCompatDelegateImpl$PanelFeatureState.decorView.setBackgroundResource(appCompatDelegateImpl$PanelFeatureState.background);
                ViewParent parent = appCompatDelegateImpl$PanelFeatureState.shownPanelView.getParent();
                if (parent != null && (parent instanceof ViewGroup)) {
                    ((ViewGroup) parent).removeView(appCompatDelegateImpl$PanelFeatureState.shownPanelView);
                }
                appCompatDelegateImpl$PanelFeatureState.decorView.addView(appCompatDelegateImpl$PanelFeatureState.shownPanelView, layoutParams2);
                if (!appCompatDelegateImpl$PanelFeatureState.shownPanelView.hasFocus()) {
                    appCompatDelegateImpl$PanelFeatureState.shownPanelView.requestFocus();
                }
            } else {
                if (appCompatDelegateImpl$PanelFeatureState.createdPanelView != null && (layoutParams = appCompatDelegateImpl$PanelFeatureState.createdPanelView.getLayoutParams()) != null && layoutParams.width == -1) {
                    i = -1;
                }
                appCompatDelegateImpl$PanelFeatureState.isHandled = false;
                WindowManager$LayoutParams windowManager$LayoutParams = new WindowManager$LayoutParams(i, -2, appCompatDelegateImpl$PanelFeatureState.x, appCompatDelegateImpl$PanelFeatureState.y, 1002, 8519680, -3);
                windowManager$LayoutParams.gravity = appCompatDelegateImpl$PanelFeatureState.gravity;
                windowManager$LayoutParams.windowAnimations = appCompatDelegateImpl$PanelFeatureState.windowAnimations;
                windowManager.addView(appCompatDelegateImpl$PanelFeatureState.decorView, windowManager$LayoutParams);
                appCompatDelegateImpl$PanelFeatureState.isOpen = true;
            }
            i = -2;
            appCompatDelegateImpl$PanelFeatureState.isHandled = false;
            WindowManager$LayoutParams windowManager$LayoutParams2 = new WindowManager$LayoutParams(i, -2, appCompatDelegateImpl$PanelFeatureState.x, appCompatDelegateImpl$PanelFeatureState.y, 1002, 8519680, -3);
            windowManager$LayoutParams2.gravity = appCompatDelegateImpl$PanelFeatureState.gravity;
            windowManager$LayoutParams2.windowAnimations = appCompatDelegateImpl$PanelFeatureState.windowAnimations;
            windowManager.addView(appCompatDelegateImpl$PanelFeatureState.decorView, windowManager$LayoutParams2);
            appCompatDelegateImpl$PanelFeatureState.isOpen = true;
        }
    }

    private boolean initializePanelDecor(AppCompatDelegateImpl$PanelFeatureState appCompatDelegateImpl$PanelFeatureState) {
        appCompatDelegateImpl$PanelFeatureState.setStyle(getActionBarThemedContext());
        appCompatDelegateImpl$PanelFeatureState.decorView = new AppCompatDelegateImpl$ListMenuDecorView(this, appCompatDelegateImpl$PanelFeatureState.listPresenterContext);
        appCompatDelegateImpl$PanelFeatureState.gravity = 81;
        return true;
    }

    private void reopenMenu(MenuBuilder menuBuilder, boolean z) {
        if (this.mDecorContentParent != null && this.mDecorContentParent.canShowOverflowMenu() && (!ViewConfiguration.get(this.mContext).hasPermanentMenuKey() || this.mDecorContentParent.isOverflowMenuShowPending())) {
            Window$Callback windowCallback = getWindowCallback();
            if (!this.mDecorContentParent.isOverflowMenuShowing() || !z) {
                if (windowCallback == null || this.mIsDestroyed) {
                    return;
                }
                if (this.mInvalidatePanelMenuPosted && (this.mInvalidatePanelMenuFeatures & 1) != 0) {
                    this.mWindow.getDecorView().removeCallbacks(this.mInvalidatePanelMenuRunnable);
                    this.mInvalidatePanelMenuRunnable.run();
                }
                AppCompatDelegateImpl$PanelFeatureState panelState = getPanelState(0, true);
                if (panelState.menu == null || panelState.refreshMenuContent || !windowCallback.onPreparePanel(0, panelState.createdPanelView, panelState.menu)) {
                    return;
                }
                windowCallback.onMenuOpened(108, panelState.menu);
                this.mDecorContentParent.showOverflowMenu();
                return;
            }
            this.mDecorContentParent.hideOverflowMenu();
            if (this.mIsDestroyed) {
                return;
            }
            windowCallback.onPanelClosed(108, getPanelState(0, true).menu);
            return;
        }
        AppCompatDelegateImpl$PanelFeatureState panelState2 = getPanelState(0, true);
        panelState2.refreshDecorView = true;
        closePanel(panelState2, false);
        openPanel(panelState2, null);
    }

    private boolean initializePanelMenu(AppCompatDelegateImpl$PanelFeatureState appCompatDelegateImpl$PanelFeatureState) {
        Context context = this.mContext;
        if ((appCompatDelegateImpl$PanelFeatureState.featureId == 0 || appCompatDelegateImpl$PanelFeatureState.featureId == 108) && this.mDecorContentParent != null) {
            TypedValue typedValue = new TypedValue();
            Resources$Theme theme = context.getTheme();
            theme.resolveAttribute(R$attr.actionBarTheme, typedValue, true);
            Resources$Theme resources$ThemeNewTheme = null;
            if (typedValue.resourceId != 0) {
                resources$ThemeNewTheme = context.getResources().newTheme();
                resources$ThemeNewTheme.setTo(theme);
                resources$ThemeNewTheme.applyStyle(typedValue.resourceId, true);
                resources$ThemeNewTheme.resolveAttribute(R$attr.actionBarWidgetTheme, typedValue, true);
            } else {
                theme.resolveAttribute(R$attr.actionBarWidgetTheme, typedValue, true);
            }
            if (typedValue.resourceId != 0) {
                if (resources$ThemeNewTheme == null) {
                    resources$ThemeNewTheme = context.getResources().newTheme();
                    resources$ThemeNewTheme.setTo(theme);
                }
                resources$ThemeNewTheme.applyStyle(typedValue.resourceId, true);
            }
            if (resources$ThemeNewTheme != null) {
                ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, 0);
                contextThemeWrapper.getTheme().setTo(resources$ThemeNewTheme);
                context = contextThemeWrapper;
            }
        }
        MenuBuilder menuBuilder = new MenuBuilder(context);
        menuBuilder.setCallback(this);
        appCompatDelegateImpl$PanelFeatureState.setMenu(menuBuilder);
        return true;
    }

    private boolean initializePanelContent(AppCompatDelegateImpl$PanelFeatureState appCompatDelegateImpl$PanelFeatureState) {
        if (appCompatDelegateImpl$PanelFeatureState.createdPanelView != null) {
            appCompatDelegateImpl$PanelFeatureState.shownPanelView = appCompatDelegateImpl$PanelFeatureState.createdPanelView;
            return true;
        }
        if (appCompatDelegateImpl$PanelFeatureState.menu == null) {
            return false;
        }
        if (this.mPanelMenuPresenterCallback == null) {
            this.mPanelMenuPresenterCallback = new AppCompatDelegateImpl$PanelMenuPresenterCallback(this);
        }
        appCompatDelegateImpl$PanelFeatureState.shownPanelView = (View) appCompatDelegateImpl$PanelFeatureState.getListMenuView(this.mPanelMenuPresenterCallback);
        return appCompatDelegateImpl$PanelFeatureState.shownPanelView != null;
    }

    private boolean preparePanel(AppCompatDelegateImpl$PanelFeatureState appCompatDelegateImpl$PanelFeatureState, KeyEvent keyEvent) {
        if (this.mIsDestroyed) {
            return false;
        }
        if (appCompatDelegateImpl$PanelFeatureState.isPrepared) {
            return true;
        }
        if (this.mPreparedPanel != null && this.mPreparedPanel != appCompatDelegateImpl$PanelFeatureState) {
            closePanel(this.mPreparedPanel, false);
        }
        Window$Callback windowCallback = getWindowCallback();
        if (windowCallback != null) {
            appCompatDelegateImpl$PanelFeatureState.createdPanelView = windowCallback.onCreatePanelView(appCompatDelegateImpl$PanelFeatureState.featureId);
        }
        boolean z = appCompatDelegateImpl$PanelFeatureState.featureId == 0 || appCompatDelegateImpl$PanelFeatureState.featureId == 108;
        if (z && this.mDecorContentParent != null) {
            this.mDecorContentParent.setMenuPrepared();
        }
        if (appCompatDelegateImpl$PanelFeatureState.createdPanelView == null && (!z || !(peekSupportActionBar() instanceof ToolbarActionBar))) {
            if (appCompatDelegateImpl$PanelFeatureState.menu == null || appCompatDelegateImpl$PanelFeatureState.refreshMenuContent) {
                if (appCompatDelegateImpl$PanelFeatureState.menu == null && (!initializePanelMenu(appCompatDelegateImpl$PanelFeatureState) || appCompatDelegateImpl$PanelFeatureState.menu == null)) {
                    return false;
                }
                if (z && this.mDecorContentParent != null) {
                    if (this.mActionMenuPresenterCallback == null) {
                        this.mActionMenuPresenterCallback = new AppCompatDelegateImpl$ActionMenuPresenterCallback(this);
                    }
                    this.mDecorContentParent.setMenu(appCompatDelegateImpl$PanelFeatureState.menu, this.mActionMenuPresenterCallback);
                }
                appCompatDelegateImpl$PanelFeatureState.menu.stopDispatchingItemsChanged();
                if (!windowCallback.onCreatePanelMenu(appCompatDelegateImpl$PanelFeatureState.featureId, appCompatDelegateImpl$PanelFeatureState.menu)) {
                    appCompatDelegateImpl$PanelFeatureState.setMenu(null);
                    if (z && this.mDecorContentParent != null) {
                        this.mDecorContentParent.setMenu(null, this.mActionMenuPresenterCallback);
                    }
                    return false;
                }
                appCompatDelegateImpl$PanelFeatureState.refreshMenuContent = false;
            }
            appCompatDelegateImpl$PanelFeatureState.menu.stopDispatchingItemsChanged();
            if (appCompatDelegateImpl$PanelFeatureState.frozenActionViewState != null) {
                appCompatDelegateImpl$PanelFeatureState.menu.restoreActionViewStates(appCompatDelegateImpl$PanelFeatureState.frozenActionViewState);
                appCompatDelegateImpl$PanelFeatureState.frozenActionViewState = null;
            }
            if (!windowCallback.onPreparePanel(0, appCompatDelegateImpl$PanelFeatureState.createdPanelView, appCompatDelegateImpl$PanelFeatureState.menu)) {
                if (z && this.mDecorContentParent != null) {
                    this.mDecorContentParent.setMenu(null, this.mActionMenuPresenterCallback);
                }
                appCompatDelegateImpl$PanelFeatureState.menu.startDispatchingItemsChanged();
                return false;
            }
            appCompatDelegateImpl$PanelFeatureState.qwertyMode = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            appCompatDelegateImpl$PanelFeatureState.menu.setQwertyMode(appCompatDelegateImpl$PanelFeatureState.qwertyMode);
            appCompatDelegateImpl$PanelFeatureState.menu.startDispatchingItemsChanged();
        }
        appCompatDelegateImpl$PanelFeatureState.isPrepared = true;
        appCompatDelegateImpl$PanelFeatureState.isHandled = false;
        this.mPreparedPanel = appCompatDelegateImpl$PanelFeatureState;
        return true;
    }

    void checkCloseActionMenu(MenuBuilder menuBuilder) {
        if (this.mClosingActionMenu) {
            return;
        }
        this.mClosingActionMenu = true;
        this.mDecorContentParent.dismissPopups();
        Window$Callback windowCallback = getWindowCallback();
        if (windowCallback != null && !this.mIsDestroyed) {
            windowCallback.onPanelClosed(108, menuBuilder);
        }
        this.mClosingActionMenu = false;
    }

    void closePanel(int i) {
        closePanel(getPanelState(i, true), true);
    }

    void closePanel(AppCompatDelegateImpl$PanelFeatureState appCompatDelegateImpl$PanelFeatureState, boolean z) {
        if (z && appCompatDelegateImpl$PanelFeatureState.featureId == 0 && this.mDecorContentParent != null && this.mDecorContentParent.isOverflowMenuShowing()) {
            checkCloseActionMenu(appCompatDelegateImpl$PanelFeatureState.menu);
            return;
        }
        WindowManager windowManager = (WindowManager) this.mContext.getSystemService("window");
        if (windowManager != null && appCompatDelegateImpl$PanelFeatureState.isOpen && appCompatDelegateImpl$PanelFeatureState.decorView != null) {
            windowManager.removeView(appCompatDelegateImpl$PanelFeatureState.decorView);
            if (z) {
                callOnPanelClosed(appCompatDelegateImpl$PanelFeatureState.featureId, appCompatDelegateImpl$PanelFeatureState, null);
            }
        }
        appCompatDelegateImpl$PanelFeatureState.isPrepared = false;
        appCompatDelegateImpl$PanelFeatureState.isHandled = false;
        appCompatDelegateImpl$PanelFeatureState.isOpen = false;
        appCompatDelegateImpl$PanelFeatureState.shownPanelView = null;
        appCompatDelegateImpl$PanelFeatureState.refreshDecorView = true;
        if (this.mPreparedPanel == appCompatDelegateImpl$PanelFeatureState) {
            this.mPreparedPanel = null;
        }
    }

    private boolean onKeyDownPanel(int i, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() != 0) {
            return false;
        }
        AppCompatDelegateImpl$PanelFeatureState panelState = getPanelState(i, true);
        if (panelState.isOpen) {
            return false;
        }
        return preparePanel(panelState, keyEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean onKeyUpPanel(int i, KeyEvent keyEvent) {
        boolean zHideOverflowMenu;
        boolean zPreparePanel;
        if (this.mActionMode != null) {
            return false;
        }
        AppCompatDelegateImpl$PanelFeatureState panelState = getPanelState(i, true);
        if (i == 0 && this.mDecorContentParent != null && this.mDecorContentParent.canShowOverflowMenu() && !ViewConfiguration.get(this.mContext).hasPermanentMenuKey()) {
            if (!this.mDecorContentParent.isOverflowMenuShowing()) {
                if (!this.mIsDestroyed && preparePanel(panelState, keyEvent)) {
                    zHideOverflowMenu = this.mDecorContentParent.showOverflowMenu();
                }
            } else {
                zHideOverflowMenu = this.mDecorContentParent.hideOverflowMenu();
            }
        } else if (panelState.isOpen || panelState.isHandled) {
            zHideOverflowMenu = panelState.isOpen;
            closePanel(panelState, true);
        } else if (panelState.isPrepared) {
            if (panelState.refreshMenuContent) {
                panelState.isPrepared = false;
                zPreparePanel = preparePanel(panelState, keyEvent);
            } else {
                zPreparePanel = true;
            }
            if (zPreparePanel) {
                openPanel(panelState, keyEvent);
                zHideOverflowMenu = true;
            }
        } else {
            zHideOverflowMenu = false;
        }
        if (zHideOverflowMenu) {
            AudioManager audioManager = (AudioManager) this.mContext.getSystemService("audio");
            if (audioManager != null) {
                audioManager.playSoundEffect(0);
            } else {
                Log.w("AppCompatDelegate", "Couldn't get audio manager");
            }
        }
        return zHideOverflowMenu;
    }

    void callOnPanelClosed(int i, AppCompatDelegateImpl$PanelFeatureState appCompatDelegateImpl$PanelFeatureState, Menu menu) {
        if (menu == null) {
            if (appCompatDelegateImpl$PanelFeatureState == null && i >= 0 && i < this.mPanels.length) {
                appCompatDelegateImpl$PanelFeatureState = this.mPanels[i];
            }
            if (appCompatDelegateImpl$PanelFeatureState != null) {
                menu = appCompatDelegateImpl$PanelFeatureState.menu;
            }
        }
        if ((appCompatDelegateImpl$PanelFeatureState == null || appCompatDelegateImpl$PanelFeatureState.isOpen) && !this.mIsDestroyed) {
            this.mOriginalWindowCallback.onPanelClosed(i, menu);
        }
    }

    AppCompatDelegateImpl$PanelFeatureState findMenuPanel(Menu menu) {
        AppCompatDelegateImpl$PanelFeatureState[] appCompatDelegateImpl$PanelFeatureStateArr = this.mPanels;
        int length = appCompatDelegateImpl$PanelFeatureStateArr != null ? appCompatDelegateImpl$PanelFeatureStateArr.length : 0;
        for (int i = 0; i < length; i++) {
            AppCompatDelegateImpl$PanelFeatureState appCompatDelegateImpl$PanelFeatureState = appCompatDelegateImpl$PanelFeatureStateArr[i];
            if (appCompatDelegateImpl$PanelFeatureState != null && appCompatDelegateImpl$PanelFeatureState.menu == menu) {
                return appCompatDelegateImpl$PanelFeatureState;
            }
        }
        return null;
    }

    protected AppCompatDelegateImpl$PanelFeatureState getPanelState(int i, boolean z) {
        AppCompatDelegateImpl$PanelFeatureState[] appCompatDelegateImpl$PanelFeatureStateArr = this.mPanels;
        if (appCompatDelegateImpl$PanelFeatureStateArr == null || appCompatDelegateImpl$PanelFeatureStateArr.length <= i) {
            AppCompatDelegateImpl$PanelFeatureState[] appCompatDelegateImpl$PanelFeatureStateArr2 = new AppCompatDelegateImpl$PanelFeatureState[i + 1];
            if (appCompatDelegateImpl$PanelFeatureStateArr != null) {
                System.arraycopy(appCompatDelegateImpl$PanelFeatureStateArr, 0, appCompatDelegateImpl$PanelFeatureStateArr2, 0, appCompatDelegateImpl$PanelFeatureStateArr.length);
            }
            this.mPanels = appCompatDelegateImpl$PanelFeatureStateArr2;
            appCompatDelegateImpl$PanelFeatureStateArr = appCompatDelegateImpl$PanelFeatureStateArr2;
        }
        AppCompatDelegateImpl$PanelFeatureState appCompatDelegateImpl$PanelFeatureState = appCompatDelegateImpl$PanelFeatureStateArr[i];
        if (appCompatDelegateImpl$PanelFeatureState != null) {
            return appCompatDelegateImpl$PanelFeatureState;
        }
        AppCompatDelegateImpl$PanelFeatureState appCompatDelegateImpl$PanelFeatureState2 = new AppCompatDelegateImpl$PanelFeatureState(i);
        appCompatDelegateImpl$PanelFeatureStateArr[i] = appCompatDelegateImpl$PanelFeatureState2;
        return appCompatDelegateImpl$PanelFeatureState2;
    }

    private boolean performPanelShortcut(AppCompatDelegateImpl$PanelFeatureState appCompatDelegateImpl$PanelFeatureState, int i, KeyEvent keyEvent, int i2) {
        boolean zPerformShortcut = false;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((appCompatDelegateImpl$PanelFeatureState.isPrepared || preparePanel(appCompatDelegateImpl$PanelFeatureState, keyEvent)) && appCompatDelegateImpl$PanelFeatureState.menu != null) {
            zPerformShortcut = appCompatDelegateImpl$PanelFeatureState.menu.performShortcut(i, keyEvent, i2);
        }
        if (zPerformShortcut && (i2 & 1) == 0 && this.mDecorContentParent == null) {
            closePanel(appCompatDelegateImpl$PanelFeatureState, true);
        }
        return zPerformShortcut;
    }

    private void invalidatePanelMenu(int i) {
        this.mInvalidatePanelMenuFeatures = (1 << i) | this.mInvalidatePanelMenuFeatures;
        if (this.mInvalidatePanelMenuPosted) {
            return;
        }
        ViewCompat.postOnAnimation(this.mWindow.getDecorView(), this.mInvalidatePanelMenuRunnable);
        this.mInvalidatePanelMenuPosted = true;
    }

    void doInvalidatePanelMenu(int i) {
        AppCompatDelegateImpl$PanelFeatureState panelState;
        AppCompatDelegateImpl$PanelFeatureState panelState2 = getPanelState(i, true);
        if (panelState2.menu != null) {
            Bundle bundle = new Bundle();
            panelState2.menu.saveActionViewStates(bundle);
            if (bundle.size() > 0) {
                panelState2.frozenActionViewState = bundle;
            }
            panelState2.menu.stopDispatchingItemsChanged();
            panelState2.menu.clear();
        }
        panelState2.refreshMenuContent = true;
        panelState2.refreshDecorView = true;
        if ((i != 108 && i != 0) || this.mDecorContentParent == null || (panelState = getPanelState(0, false)) == null) {
            return;
        }
        panelState.isPrepared = false;
        preparePanel(panelState, null);
    }

    int updateStatusGuard(int i) {
        boolean z;
        boolean z2;
        if (this.mActionModeView == null || !(this.mActionModeView.getLayoutParams() instanceof ViewGroup$MarginLayoutParams)) {
            z = false;
        } else {
            ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams = (ViewGroup$MarginLayoutParams) this.mActionModeView.getLayoutParams();
            if (this.mActionModeView.isShown()) {
                if (this.mTempRect1 == null) {
                    this.mTempRect1 = new Rect();
                    this.mTempRect2 = new Rect();
                }
                Rect rect = this.mTempRect1;
                Rect rect2 = this.mTempRect2;
                rect.set(0, i, 0, 0);
                ViewUtils.computeFitSystemWindows(this.mSubDecor, rect, rect2);
                if (viewGroup$MarginLayoutParams.topMargin != (rect2.top == 0 ? i : 0)) {
                    viewGroup$MarginLayoutParams.topMargin = i;
                    if (this.mStatusGuard == null) {
                        this.mStatusGuard = new View(this.mContext);
                        this.mStatusGuard.setBackgroundColor(this.mContext.getResources().getColor(R$color.abc_input_method_navigation_guard));
                        this.mSubDecor.addView(this.mStatusGuard, -1, new ViewGroup$LayoutParams(-1, i));
                    } else {
                        ViewGroup$LayoutParams layoutParams = this.mStatusGuard.getLayoutParams();
                        if (layoutParams.height != i) {
                            layoutParams.height = i;
                            this.mStatusGuard.setLayoutParams(layoutParams);
                        }
                    }
                    z2 = true;
                } else {
                    z2 = false;
                }
                z = this.mStatusGuard != null;
                if (!this.mOverlayActionMode && z) {
                    i = 0;
                }
            } else if (viewGroup$MarginLayoutParams.topMargin != 0) {
                viewGroup$MarginLayoutParams.topMargin = 0;
                z2 = true;
                z = false;
            } else {
                z2 = false;
                z = false;
            }
            if (z2) {
                this.mActionModeView.setLayoutParams(viewGroup$MarginLayoutParams);
            }
        }
        if (this.mStatusGuard != null) {
            this.mStatusGuard.setVisibility(z ? 0 : 8);
        }
        return i;
    }

    private void throwFeatureRequestIfSubDecorInstalled() {
        if (this.mSubDecorInstalled) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    private int sanitizeWindowFeatureId(int i) {
        if (i == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            return 108;
        }
        if (i != 9) {
            return i;
        }
        Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
        return 109;
    }

    ViewGroup getSubDecor() {
        return this.mSubDecor;
    }

    void dismissPopups() {
        if (this.mDecorContentParent != null) {
            this.mDecorContentParent.dismissPopups();
        }
        if (this.mActionModePopup != null) {
            this.mWindow.getDecorView().removeCallbacks(this.mShowActionModePopup);
            if (this.mActionModePopup.isShowing()) {
                try {
                    this.mActionModePopup.dismiss();
                } catch (IllegalArgumentException unused) {
                }
            }
            this.mActionModePopup = null;
        }
        endOnGoingFadeAnimation();
        AppCompatDelegateImpl$PanelFeatureState panelState = getPanelState(0, false);
        if (panelState == null || panelState.menu == null) {
            return;
        }
        panelState.menu.close();
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public boolean applyDayNight() {
        int nightMode = getNightMode();
        int iMapNightMode = mapNightMode(nightMode);
        boolean zUpdateForNightMode = iMapNightMode != -1 ? updateForNightMode(iMapNightMode) : false;
        if (nightMode == 0) {
            ensureAutoNightModeManager();
            this.mAutoNightModeManager.setup();
        }
        this.mApplyDayNightCalled = true;
        return zUpdateForNightMode;
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void setLocalNightMode(int i) {
        switch (i) {
            case -1:
            case 0:
            case 1:
            case 2:
                if (this.mLocalNightMode != i) {
                    this.mLocalNightMode = i;
                    if (this.mApplyDayNightCalled) {
                        applyDayNight();
                    }
                }
                break;
            default:
                Log.i("AppCompatDelegate", "setLocalNightMode() called with an unknown mode");
                break;
        }
    }

    int mapNightMode(int i) {
        if (i == -100) {
            return -1;
        }
        if (i != 0) {
            return i;
        }
        if (Build$VERSION.SDK_INT >= 23 && ((UiModeManager) this.mContext.getSystemService(UiModeManager.class)).getNightMode() == 0) {
            return -1;
        }
        ensureAutoNightModeManager();
        return this.mAutoNightModeManager.getApplyableNightMode();
    }

    private int getNightMode() {
        return this.mLocalNightMode != -100 ? this.mLocalNightMode : getDefaultNightMode();
    }

    private boolean updateForNightMode(int i) {
        Resources resources = this.mContext.getResources();
        Configuration configuration = resources.getConfiguration();
        int i2 = configuration.uiMode & 48;
        int i3 = i == 2 ? 32 : 16;
        if (i2 == i3) {
            return false;
        }
        if (shouldRecreateOnNightModeChange()) {
            ((Activity) this.mContext).recreate();
            return true;
        }
        Configuration configuration2 = new Configuration(configuration);
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        configuration2.uiMode = i3 | (configuration2.uiMode & (-49));
        resources.updateConfiguration(configuration2, displayMetrics);
        if (Build$VERSION.SDK_INT >= 26) {
            return true;
        }
        ResourcesFlusher.flush(resources);
        return true;
    }

    private void ensureAutoNightModeManager() {
        if (this.mAutoNightModeManager == null) {
            this.mAutoNightModeManager = new AppCompatDelegateImpl$AutoNightModeManager(this, TwilightManager.getInstance(this.mContext));
        }
    }

    @VisibleForTesting
    final AppCompatDelegateImpl$AutoNightModeManager getAutoNightModeManager() {
        ensureAutoNightModeManager();
        return this.mAutoNightModeManager;
    }

    private boolean shouldRecreateOnNightModeChange() {
        if (!this.mApplyDayNightCalled || !(this.mContext instanceof Activity)) {
            return false;
        }
        try {
            return (this.mContext.getPackageManager().getActivityInfo(new ComponentName(this.mContext, this.mContext.getClass()), 0).configChanges & 512) == 0;
        } catch (PackageManager$NameNotFoundException e) {
            Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", e);
            return true;
        }
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public final ActionBarDrawerToggle$Delegate getDrawerToggleDelegate() {
        return new AppCompatDelegateImpl$ActionBarDrawableToggleImpl(this);
    }
}

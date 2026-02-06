package android.support.v7.app;

import android.content.Context;
import android.content.res.Resources$Theme;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v7.appcompat.R$attr;
import android.support.v7.appcompat.R$layout;
import android.support.v7.appcompat.R$style;
import android.support.v7.appcompat.R$styleable;
import android.support.v7.view.ContextThemeWrapper;
import android.support.v7.view.menu.ListMenuPresenter;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuPresenter$Callback;
import android.support.v7.view.menu.MenuView;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;

protected final class AppCompatDelegateImpl$PanelFeatureState {
    int background;
    View createdPanelView;
    ViewGroup decorView;
    int featureId;
    Bundle frozenActionViewState;
    Bundle frozenMenuState;
    int gravity;
    boolean isHandled;
    boolean isOpen;
    boolean isPrepared;
    ListMenuPresenter listMenuPresenter;
    Context listPresenterContext;
    MenuBuilder menu;
    public boolean qwertyMode;
    boolean refreshDecorView = false;
    boolean refreshMenuContent;
    View shownPanelView;
    boolean wasLastOpen;
    int windowAnimations;
    int x;
    int y;

    AppCompatDelegateImpl$PanelFeatureState(int i) {
        this.featureId = i;
    }

    public boolean hasPanelItems() {
        if (this.shownPanelView == null) {
            return false;
        }
        return this.createdPanelView != null || this.listMenuPresenter.getAdapter().getCount() > 0;
    }

    public void clearMenuPresenters() {
        if (this.menu != null) {
            this.menu.removeMenuPresenter(this.listMenuPresenter);
        }
        this.listMenuPresenter = null;
    }

    void setStyle(Context context) {
        TypedValue typedValue = new TypedValue();
        Resources$Theme resources$ThemeNewTheme = context.getResources().newTheme();
        resources$ThemeNewTheme.setTo(context.getTheme());
        resources$ThemeNewTheme.resolveAttribute(R$attr.actionBarPopupTheme, typedValue, true);
        if (typedValue.resourceId != 0) {
            resources$ThemeNewTheme.applyStyle(typedValue.resourceId, true);
        }
        resources$ThemeNewTheme.resolveAttribute(R$attr.panelMenuListTheme, typedValue, true);
        if (typedValue.resourceId != 0) {
            resources$ThemeNewTheme.applyStyle(typedValue.resourceId, true);
        } else {
            resources$ThemeNewTheme.applyStyle(R$style.Theme_AppCompat_CompactMenu, true);
        }
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, 0);
        contextThemeWrapper.getTheme().setTo(resources$ThemeNewTheme);
        this.listPresenterContext = contextThemeWrapper;
        TypedArray typedArrayObtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(R$styleable.AppCompatTheme);
        this.background = typedArrayObtainStyledAttributes.getResourceId(R$styleable.AppCompatTheme_panelBackground, 0);
        this.windowAnimations = typedArrayObtainStyledAttributes.getResourceId(R$styleable.AppCompatTheme_android_windowAnimationStyle, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    void setMenu(MenuBuilder menuBuilder) {
        if (menuBuilder == this.menu) {
            return;
        }
        if (this.menu != null) {
            this.menu.removeMenuPresenter(this.listMenuPresenter);
        }
        this.menu = menuBuilder;
        if (menuBuilder == null || this.listMenuPresenter == null) {
            return;
        }
        menuBuilder.addMenuPresenter(this.listMenuPresenter);
    }

    MenuView getListMenuView(MenuPresenter$Callback menuPresenter$Callback) {
        if (this.menu == null) {
            return null;
        }
        if (this.listMenuPresenter == null) {
            this.listMenuPresenter = new ListMenuPresenter(this.listPresenterContext, R$layout.abc_list_menu_item_layout);
            this.listMenuPresenter.setCallback(menuPresenter$Callback);
            this.menu.addMenuPresenter(this.listMenuPresenter);
        }
        return this.listMenuPresenter.getMenuView(this.decorView);
    }

    Parcelable onSaveInstanceState() {
        AppCompatDelegateImpl$PanelFeatureState$SavedState appCompatDelegateImpl$PanelFeatureState$SavedState = new AppCompatDelegateImpl$PanelFeatureState$SavedState();
        appCompatDelegateImpl$PanelFeatureState$SavedState.featureId = this.featureId;
        appCompatDelegateImpl$PanelFeatureState$SavedState.isOpen = this.isOpen;
        if (this.menu != null) {
            appCompatDelegateImpl$PanelFeatureState$SavedState.menuState = new Bundle();
            this.menu.savePresenterStates(appCompatDelegateImpl$PanelFeatureState$SavedState.menuState);
        }
        return appCompatDelegateImpl$PanelFeatureState$SavedState;
    }

    void onRestoreInstanceState(Parcelable parcelable) {
        AppCompatDelegateImpl$PanelFeatureState$SavedState appCompatDelegateImpl$PanelFeatureState$SavedState = (AppCompatDelegateImpl$PanelFeatureState$SavedState) parcelable;
        this.featureId = appCompatDelegateImpl$PanelFeatureState$SavedState.featureId;
        this.wasLastOpen = appCompatDelegateImpl$PanelFeatureState$SavedState.isOpen;
        this.frozenMenuState = appCompatDelegateImpl$PanelFeatureState$SavedState.menuState;
        this.shownPanelView = null;
        this.decorView = null;
    }

    void applyFrozenState() {
        if (this.menu == null || this.frozenMenuState == null) {
            return;
        }
        this.menu.restorePresenterStates(this.frozenMenuState);
        this.frozenMenuState = null;
    }
}

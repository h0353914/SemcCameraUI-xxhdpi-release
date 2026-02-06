package android.support.v7.view;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff$Mode;
import android.support.v4.view.ActionProvider;
import android.support.v4.view.MenuItemCompat;
import android.support.v7.appcompat.R$styleable;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuItemWrapperICS;
import android.support.v7.widget.DrawableUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import java.lang.reflect.Constructor;

class SupportMenuInflater$MenuState {
    private static final int defaultGroupId = 0;
    private static final int defaultItemCategory = 0;
    private static final int defaultItemCheckable = 0;
    private static final boolean defaultItemChecked = false;
    private static final boolean defaultItemEnabled = true;
    private static final int defaultItemId = 0;
    private static final int defaultItemOrder = 0;
    private static final boolean defaultItemVisible = true;
    private int groupCategory;
    private int groupCheckable;
    private boolean groupEnabled;
    private int groupId;
    private int groupOrder;
    private boolean groupVisible;
    ActionProvider itemActionProvider;
    private String itemActionProviderClassName;
    private String itemActionViewClassName;
    private int itemActionViewLayout;
    private boolean itemAdded;
    private int itemAlphabeticModifiers;
    private char itemAlphabeticShortcut;
    private int itemCategoryOrder;
    private int itemCheckable;
    private boolean itemChecked;
    private CharSequence itemContentDescription;
    private boolean itemEnabled;
    private int itemIconResId;
    private ColorStateList itemIconTintList = null;
    private PorterDuff$Mode itemIconTintMode = null;
    private int itemId;
    private String itemListenerMethodName;
    private int itemNumericModifiers;
    private char itemNumericShortcut;
    private int itemShowAsAction;
    private CharSequence itemTitle;
    private CharSequence itemTitleCondensed;
    private CharSequence itemTooltipText;
    private boolean itemVisible;
    private Menu menu;
    final /* synthetic */ SupportMenuInflater this$0;

    public SupportMenuInflater$MenuState(SupportMenuInflater supportMenuInflater, Menu menu) {
        this.this$0 = supportMenuInflater;
        this.menu = menu;
        resetGroup();
    }

    public void resetGroup() {
        this.groupId = 0;
        this.groupCategory = 0;
        this.groupOrder = 0;
        this.groupCheckable = 0;
        this.groupVisible = true;
        this.groupEnabled = true;
    }

    public void readGroup(AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = this.this$0.mContext.obtainStyledAttributes(attributeSet, R$styleable.MenuGroup);
        this.groupId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.MenuGroup_android_id, 0);
        this.groupCategory = typedArrayObtainStyledAttributes.getInt(R$styleable.MenuGroup_android_menuCategory, 0);
        this.groupOrder = typedArrayObtainStyledAttributes.getInt(R$styleable.MenuGroup_android_orderInCategory, 0);
        this.groupCheckable = typedArrayObtainStyledAttributes.getInt(R$styleable.MenuGroup_android_checkableBehavior, 0);
        this.groupVisible = typedArrayObtainStyledAttributes.getBoolean(R$styleable.MenuGroup_android_visible, true);
        this.groupEnabled = typedArrayObtainStyledAttributes.getBoolean(R$styleable.MenuGroup_android_enabled, true);
        typedArrayObtainStyledAttributes.recycle();
    }

    public void readItem(AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = this.this$0.mContext.obtainStyledAttributes(attributeSet, R$styleable.MenuItem);
        this.itemId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.MenuItem_android_id, 0);
        this.itemCategoryOrder = (typedArrayObtainStyledAttributes.getInt(R$styleable.MenuItem_android_menuCategory, this.groupCategory) & (-65536)) | (typedArrayObtainStyledAttributes.getInt(R$styleable.MenuItem_android_orderInCategory, this.groupOrder) & 65535);
        this.itemTitle = typedArrayObtainStyledAttributes.getText(R$styleable.MenuItem_android_title);
        this.itemTitleCondensed = typedArrayObtainStyledAttributes.getText(R$styleable.MenuItem_android_titleCondensed);
        this.itemIconResId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.MenuItem_android_icon, 0);
        this.itemAlphabeticShortcut = getShortcut(typedArrayObtainStyledAttributes.getString(R$styleable.MenuItem_android_alphabeticShortcut));
        this.itemAlphabeticModifiers = typedArrayObtainStyledAttributes.getInt(R$styleable.MenuItem_alphabeticModifiers, 4096);
        this.itemNumericShortcut = getShortcut(typedArrayObtainStyledAttributes.getString(R$styleable.MenuItem_android_numericShortcut));
        this.itemNumericModifiers = typedArrayObtainStyledAttributes.getInt(R$styleable.MenuItem_numericModifiers, 4096);
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.MenuItem_android_checkable)) {
            this.itemCheckable = typedArrayObtainStyledAttributes.getBoolean(R$styleable.MenuItem_android_checkable, false) ? 1 : 0;
        } else {
            this.itemCheckable = this.groupCheckable;
        }
        this.itemChecked = typedArrayObtainStyledAttributes.getBoolean(R$styleable.MenuItem_android_checked, false);
        this.itemVisible = typedArrayObtainStyledAttributes.getBoolean(R$styleable.MenuItem_android_visible, this.groupVisible);
        this.itemEnabled = typedArrayObtainStyledAttributes.getBoolean(R$styleable.MenuItem_android_enabled, this.groupEnabled);
        this.itemShowAsAction = typedArrayObtainStyledAttributes.getInt(R$styleable.MenuItem_showAsAction, -1);
        this.itemListenerMethodName = typedArrayObtainStyledAttributes.getString(R$styleable.MenuItem_android_onClick);
        this.itemActionViewLayout = typedArrayObtainStyledAttributes.getResourceId(R$styleable.MenuItem_actionLayout, 0);
        this.itemActionViewClassName = typedArrayObtainStyledAttributes.getString(R$styleable.MenuItem_actionViewClass);
        this.itemActionProviderClassName = typedArrayObtainStyledAttributes.getString(R$styleable.MenuItem_actionProviderClass);
        boolean z = this.itemActionProviderClassName != null;
        if (z && this.itemActionViewLayout == 0 && this.itemActionViewClassName == null) {
            this.itemActionProvider = (ActionProvider) newInstance(this.itemActionProviderClassName, SupportMenuInflater.ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE, this.this$0.mActionProviderConstructorArguments);
        } else {
            if (z) {
                Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
            }
            this.itemActionProvider = null;
        }
        this.itemContentDescription = typedArrayObtainStyledAttributes.getText(R$styleable.MenuItem_contentDescription);
        this.itemTooltipText = typedArrayObtainStyledAttributes.getText(R$styleable.MenuItem_tooltipText);
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.MenuItem_iconTintMode)) {
            this.itemIconTintMode = DrawableUtils.parseTintMode(typedArrayObtainStyledAttributes.getInt(R$styleable.MenuItem_iconTintMode, -1), this.itemIconTintMode);
        } else {
            this.itemIconTintMode = null;
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.MenuItem_iconTint)) {
            this.itemIconTintList = typedArrayObtainStyledAttributes.getColorStateList(R$styleable.MenuItem_iconTint);
        } else {
            this.itemIconTintList = null;
        }
        typedArrayObtainStyledAttributes.recycle();
        this.itemAdded = false;
    }

    private char getShortcut(String str) {
        if (str == null) {
            return (char) 0;
        }
        return str.charAt(0);
    }

    private void setItem(MenuItem menuItem) {
        boolean z = false;
        menuItem.setChecked(this.itemChecked).setVisible(this.itemVisible).setEnabled(this.itemEnabled).setCheckable(this.itemCheckable >= 1).setTitleCondensed(this.itemTitleCondensed).setIcon(this.itemIconResId);
        if (this.itemShowAsAction >= 0) {
            menuItem.setShowAsAction(this.itemShowAsAction);
        }
        if (this.itemListenerMethodName != null) {
            if (this.this$0.mContext.isRestricted()) {
                throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
            }
            menuItem.setOnMenuItemClickListener(new SupportMenuInflater$InflatedOnMenuItemClickListener(this.this$0.getRealOwner(), this.itemListenerMethodName));
        }
        boolean z2 = menuItem instanceof MenuItemImpl;
        if (z2) {
        }
        if (this.itemCheckable >= 2) {
            if (z2) {
                ((MenuItemImpl) menuItem).setExclusiveCheckable(true);
            } else if (menuItem instanceof MenuItemWrapperICS) {
                ((MenuItemWrapperICS) menuItem).setExclusiveCheckable(true);
            }
        }
        if (this.itemActionViewClassName != null) {
            menuItem.setActionView((View) newInstance(this.itemActionViewClassName, SupportMenuInflater.ACTION_VIEW_CONSTRUCTOR_SIGNATURE, this.this$0.mActionViewConstructorArguments));
            z = true;
        }
        if (this.itemActionViewLayout > 0) {
            if (!z) {
                menuItem.setActionView(this.itemActionViewLayout);
            } else {
                Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
            }
        }
        if (this.itemActionProvider != null) {
            MenuItemCompat.setActionProvider(menuItem, this.itemActionProvider);
        }
        MenuItemCompat.setContentDescription(menuItem, this.itemContentDescription);
        MenuItemCompat.setTooltipText(menuItem, this.itemTooltipText);
        MenuItemCompat.setAlphabeticShortcut(menuItem, this.itemAlphabeticShortcut, this.itemAlphabeticModifiers);
        MenuItemCompat.setNumericShortcut(menuItem, this.itemNumericShortcut, this.itemNumericModifiers);
        if (this.itemIconTintMode != null) {
            MenuItemCompat.setIconTintMode(menuItem, this.itemIconTintMode);
        }
        if (this.itemIconTintList != null) {
            MenuItemCompat.setIconTintList(menuItem, this.itemIconTintList);
        }
    }

    public void addItem() {
        this.itemAdded = true;
        setItem(this.menu.add(this.groupId, this.itemId, this.itemCategoryOrder, this.itemTitle));
    }

    public SubMenu addSubMenuItem() {
        this.itemAdded = true;
        SubMenu subMenuAddSubMenu = this.menu.addSubMenu(this.groupId, this.itemId, this.itemCategoryOrder, this.itemTitle);
        setItem(subMenuAddSubMenu.getItem());
        return subMenuAddSubMenu;
    }

    public boolean hasAddedItem() {
        return this.itemAdded;
    }

    private <T> T newInstance(String str, Class<?>[] clsArr, Object[] objArr) {
        try {
            Constructor<?> constructor = this.this$0.mContext.getClassLoader().loadClass(str).getConstructor(clsArr);
            constructor.setAccessible(true);
            return (T) constructor.newInstance(objArr);
        } catch (Exception e) {
            Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e);
            return null;
        }
    }
}

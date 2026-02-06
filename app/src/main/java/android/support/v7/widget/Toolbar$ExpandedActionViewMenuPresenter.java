package android.support.v7.widget;

import android.content.Context;
import android.os.Parcelable;
import android.support.v7.view.CollapsibleActionView;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuPresenter;
import android.support.v7.view.menu.MenuPresenter$Callback;
import android.support.v7.view.menu.MenuView;
import android.support.v7.view.menu.SubMenuBuilder;
import android.view.ViewGroup;
import android.view.ViewParent;

class Toolbar$ExpandedActionViewMenuPresenter implements MenuPresenter {
    MenuItemImpl mCurrentExpandedItem;
    MenuBuilder mMenu;
    final /* synthetic */ Toolbar this$0;

    @Override // android.support.v7.view.menu.MenuPresenter
    public boolean flagActionItems() {
        return false;
    }

    @Override // android.support.v7.view.menu.MenuPresenter
    public int getId() {
        return 0;
    }

    @Override // android.support.v7.view.menu.MenuPresenter
    public MenuView getMenuView(ViewGroup viewGroup) {
        return null;
    }

    @Override // android.support.v7.view.menu.MenuPresenter
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
    }

    @Override // android.support.v7.view.menu.MenuPresenter
    public void onRestoreInstanceState(Parcelable parcelable) {
    }

    @Override // android.support.v7.view.menu.MenuPresenter
    public Parcelable onSaveInstanceState() {
        return null;
    }

    @Override // android.support.v7.view.menu.MenuPresenter
    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        return false;
    }

    @Override // android.support.v7.view.menu.MenuPresenter
    public void setCallback(MenuPresenter$Callback menuPresenter$Callback) {
    }

    Toolbar$ExpandedActionViewMenuPresenter(Toolbar toolbar) {
        this.this$0 = toolbar;
    }

    @Override // android.support.v7.view.menu.MenuPresenter
    public void initForMenu(Context context, MenuBuilder menuBuilder) {
        if (this.mMenu != null && this.mCurrentExpandedItem != null) {
            this.mMenu.collapseItemActionView(this.mCurrentExpandedItem);
        }
        this.mMenu = menuBuilder;
    }

    @Override // android.support.v7.view.menu.MenuPresenter
    public void updateMenuView(boolean z) {
        if (this.mCurrentExpandedItem != null) {
            boolean z2 = false;
            if (this.mMenu != null) {
                int size = this.mMenu.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        break;
                    }
                    if (this.mMenu.getItem(i) == this.mCurrentExpandedItem) {
                        z2 = true;
                        break;
                    }
                    i++;
                }
            }
            if (z2) {
                return;
            }
            collapseItemActionView(this.mMenu, this.mCurrentExpandedItem);
        }
    }

    @Override // android.support.v7.view.menu.MenuPresenter
    public boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        this.this$0.ensureCollapseButtonView();
        ViewParent parent = this.this$0.mCollapseButtonView.getParent();
        if (parent != this.this$0) {
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.this$0.mCollapseButtonView);
            }
            this.this$0.addView(this.this$0.mCollapseButtonView);
        }
        this.this$0.mExpandedActionView = menuItemImpl.getActionView();
        this.mCurrentExpandedItem = menuItemImpl;
        ViewParent parent2 = this.this$0.mExpandedActionView.getParent();
        if (parent2 != this.this$0) {
            if (parent2 instanceof ViewGroup) {
                ((ViewGroup) parent2).removeView(this.this$0.mExpandedActionView);
            }
            Toolbar$LayoutParams toolbar$LayoutParamsGenerateDefaultLayoutParams = this.this$0.generateDefaultLayoutParams();
            toolbar$LayoutParamsGenerateDefaultLayoutParams.gravity = 8388611 | (this.this$0.mButtonGravity & 112);
            toolbar$LayoutParamsGenerateDefaultLayoutParams.mViewType = 2;
            this.this$0.mExpandedActionView.setLayoutParams(toolbar$LayoutParamsGenerateDefaultLayoutParams);
            this.this$0.addView(this.this$0.mExpandedActionView);
        }
        this.this$0.removeChildrenForExpandedActionView();
        this.this$0.requestLayout();
        menuItemImpl.setActionViewExpanded(true);
        if (this.this$0.mExpandedActionView instanceof CollapsibleActionView) {
            ((CollapsibleActionView) this.this$0.mExpandedActionView).onActionViewExpanded();
        }
        return true;
    }

    @Override // android.support.v7.view.menu.MenuPresenter
    public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        if (this.this$0.mExpandedActionView instanceof CollapsibleActionView) {
            ((CollapsibleActionView) this.this$0.mExpandedActionView).onActionViewCollapsed();
        }
        this.this$0.removeView(this.this$0.mExpandedActionView);
        this.this$0.removeView(this.this$0.mCollapseButtonView);
        this.this$0.mExpandedActionView = null;
        this.this$0.addChildrenForExpandedActionView();
        this.mCurrentExpandedItem = null;
        this.this$0.requestLayout();
        menuItemImpl.setActionViewExpanded(false);
        return true;
    }
}

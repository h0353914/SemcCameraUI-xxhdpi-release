package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Build$VERSION;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v7.view.menu.ListMenuItemView;
import android.support.v7.view.menu.MenuAdapter;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
public class MenuPopupWindow$MenuDropDownListView extends DropDownListView {
    final int mAdvanceKey;
    private MenuItemHoverListener mHoverListener;
    private MenuItem mHoveredMenuItem;
    final int mRetreatKey;

    @Override // android.support.v7.widget.DropDownListView, android.view.ViewGroup, android.view.View
    public /* bridge */ /* synthetic */ boolean hasFocus() {
        return super.hasFocus();
    }

    @Override // android.support.v7.widget.DropDownListView, android.view.View
    public /* bridge */ /* synthetic */ boolean hasWindowFocus() {
        return super.hasWindowFocus();
    }

    @Override // android.support.v7.widget.DropDownListView, android.view.View
    public /* bridge */ /* synthetic */ boolean isFocused() {
        return super.isFocused();
    }

    @Override // android.support.v7.widget.DropDownListView, android.view.View
    public /* bridge */ /* synthetic */ boolean isInTouchMode() {
        return super.isInTouchMode();
    }

    @Override // android.support.v7.widget.DropDownListView
    public /* bridge */ /* synthetic */ int lookForSelectablePosition(int i, boolean z) {
        return super.lookForSelectablePosition(i, z);
    }

    @Override // android.support.v7.widget.DropDownListView
    public /* bridge */ /* synthetic */ int measureHeightOfChildrenCompat(int i, int i2, int i3, int i4, int i5) {
        return super.measureHeightOfChildrenCompat(i, i2, i3, i4, i5);
    }

    @Override // android.support.v7.widget.DropDownListView
    public /* bridge */ /* synthetic */ boolean onForwardedEvent(MotionEvent motionEvent, int i) {
        return super.onForwardedEvent(motionEvent, i);
    }

    @Override // android.support.v7.widget.DropDownListView, android.widget.AbsListView, android.view.View
    public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.support.v7.widget.DropDownListView, android.widget.AbsListView
    public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
        super.setSelector(drawable);
    }

    public MenuPopupWindow$MenuDropDownListView(Context context, boolean z) {
        super(context, z);
        Configuration configuration = context.getResources().getConfiguration();
        if (Build$VERSION.SDK_INT >= 17 && 1 == configuration.getLayoutDirection()) {
            this.mAdvanceKey = 21;
            this.mRetreatKey = 22;
        } else {
            this.mAdvanceKey = 22;
            this.mRetreatKey = 21;
        }
    }

    public void setHoverListener(MenuItemHoverListener menuItemHoverListener) {
        this.mHoverListener = menuItemHoverListener;
    }

    public void clearSelection() {
        setSelection(-1);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent$Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
        if (listMenuItemView != null && i == this.mAdvanceKey) {
            if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
            }
            return true;
        }
        if (listMenuItemView != null && i == this.mRetreatKey) {
            setSelection(-1);
            ((MenuAdapter) getAdapter()).getAdapterMenu().close(false);
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.support.v7.widget.DropDownListView, android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int headersCount;
        MenuAdapter menuAdapter;
        int iPointToPosition;
        int i;
        if (this.mHoverListener != null) {
            ListAdapter adapter = getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                headersCount = headerViewListAdapter.getHeadersCount();
                menuAdapter = (MenuAdapter) headerViewListAdapter.getWrappedAdapter();
            } else {
                headersCount = 0;
                menuAdapter = (MenuAdapter) adapter;
            }
            MenuItemImpl item = null;
            if (motionEvent.getAction() != 10 && (iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) != -1 && (i = iPointToPosition - headersCount) >= 0 && i < menuAdapter.getCount()) {
                item = menuAdapter.getItem(i);
            }
            MenuItem menuItem = this.mHoveredMenuItem;
            if (menuItem != item) {
                MenuBuilder adapterMenu = menuAdapter.getAdapterMenu();
                if (menuItem != null) {
                    this.mHoverListener.onItemHoverExit(adapterMenu, menuItem);
                }
                this.mHoveredMenuItem = item;
                if (item != null) {
                    this.mHoverListener.onItemHoverEnter(adapterMenu, item);
                }
            }
        }
        return super.onHoverEvent(motionEvent);
    }
}

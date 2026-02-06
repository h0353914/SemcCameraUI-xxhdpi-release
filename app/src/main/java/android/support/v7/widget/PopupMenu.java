package android.support.v7.widget;

import android.content.Context;
import android.support.annotation.AttrRes;
import android.support.annotation.MenuRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.annotation.StyleRes;
import android.support.v7.appcompat.R$attr;
import android.support.v7.view.SupportMenuInflater;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuPopupHelper;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.View$OnTouchListener;
import android.widget.ListView;

public class PopupMenu {
    private final View mAnchor;
    private final Context mContext;
    private View$OnTouchListener mDragListener;
    private final MenuBuilder mMenu;
    PopupMenu$OnMenuItemClickListener mMenuItemClickListener;
    PopupMenu$OnDismissListener mOnDismissListener;
    final MenuPopupHelper mPopup;

    public PopupMenu(@NonNull Context context, @NonNull View view) {
        this(context, view, 0);
    }

    public PopupMenu(@NonNull Context context, @NonNull View view, int i) {
        this(context, view, i, R$attr.popupMenuStyle, 0);
    }

    public PopupMenu(@NonNull Context context, @NonNull View view, int i, @AttrRes int i2, @StyleRes int i3) {
        this.mContext = context;
        this.mAnchor = view;
        this.mMenu = new MenuBuilder(context);
        this.mMenu.setCallback(new PopupMenu$1(this));
        this.mPopup = new MenuPopupHelper(context, this.mMenu, view, false, i2, i3);
        this.mPopup.setGravity(i);
        this.mPopup.setOnDismissListener(new PopupMenu$2(this));
    }

    public void setGravity(int i) {
        this.mPopup.setGravity(i);
    }

    public int getGravity() {
        return this.mPopup.getGravity();
    }

    @NonNull
    public View$OnTouchListener getDragToOpenListener() {
        if (this.mDragListener == null) {
            this.mDragListener = new PopupMenu$3(this, this.mAnchor);
        }
        return this.mDragListener;
    }

    @NonNull
    public Menu getMenu() {
        return this.mMenu;
    }

    @NonNull
    public MenuInflater getMenuInflater() {
        return new SupportMenuInflater(this.mContext);
    }

    public void inflate(@MenuRes int i) {
        getMenuInflater().inflate(i, this.mMenu);
    }

    public void show() {
        this.mPopup.show();
    }

    public void dismiss() {
        this.mPopup.dismiss();
    }

    public void setOnMenuItemClickListener(@Nullable PopupMenu$OnMenuItemClickListener popupMenu$OnMenuItemClickListener) {
        this.mMenuItemClickListener = popupMenu$OnMenuItemClickListener;
    }

    public void setOnDismissListener(@Nullable PopupMenu$OnDismissListener popupMenu$OnDismissListener) {
        this.mOnDismissListener = popupMenu$OnDismissListener;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    ListView getMenuListView() {
        if (this.mPopup.isShowing()) {
            return this.mPopup.getListView();
        }
        return null;
    }
}

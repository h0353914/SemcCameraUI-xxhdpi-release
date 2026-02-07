package android.support.v7.widget;

import android.content.Context;
import android.support.v7.appcompat.R$attr;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuPopupHelper;
import android.support.v7.view.menu.SubMenuBuilder;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class ActionMenuPresenter$ActionButtonSubmenu extends MenuPopupHelper {
    final /* synthetic */ ActionMenuPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActionMenuPresenter$ActionButtonSubmenu(ActionMenuPresenter actionMenuPresenter, Context context, SubMenuBuilder subMenuBuilder, View view) {
        super(context, subMenuBuilder, view, false, R$attr.actionOverflowMenuStyle);
        this.this$0 = actionMenuPresenter;
        if (!((MenuItemImpl) subMenuBuilder.getItem()).isActionButton()) {
            setAnchorView(actionMenuPresenter.mOverflowButton == null ? (View) ActionMenuPresenter.access$200(actionMenuPresenter) : actionMenuPresenter.mOverflowButton);
        }
        setPresenterCallback(actionMenuPresenter.mPopupPresenterCallback);
    }

    @Override // android.support.v7.view.menu.MenuPopupHelper
    protected void onDismiss() {
        this.this$0.mActionButtonPopup = null;
        this.this$0.mOpenSubMenuId = 0;
        super.onDismiss();
    }
}

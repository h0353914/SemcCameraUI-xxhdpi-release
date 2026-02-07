package android.support.v7.widget;

import android.content.Context;
import android.support.v7.appcompat.R$attr;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuPopupHelper;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class ActionMenuPresenter$OverflowPopup extends MenuPopupHelper {
    final /* synthetic */ ActionMenuPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActionMenuPresenter$OverflowPopup(ActionMenuPresenter actionMenuPresenter, Context context, MenuBuilder menuBuilder, View view, boolean z) {
        super(context, menuBuilder, view, z, R$attr.actionOverflowMenuStyle);
        this.this$0 = actionMenuPresenter;
        setGravity(8388613);
        setPresenterCallback(actionMenuPresenter.mPopupPresenterCallback);
    }

    @Override // android.support.v7.view.menu.MenuPopupHelper
    protected void onDismiss() {
        if (ActionMenuPresenter.access$000(this.this$0) != null) {
            ActionMenuPresenter.access$100(this.this$0).close();
        }
        this.this$0.mOverflowPopup = null;
        super.onDismiss();
    }
}

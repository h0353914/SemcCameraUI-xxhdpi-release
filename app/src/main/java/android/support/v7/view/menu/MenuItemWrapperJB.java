package android.support.v7.view.menu;

import android.content.Context;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v4.internal.view.SupportMenuItem;
import android.view.ActionProvider;

@RequiresApi(16)
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
class MenuItemWrapperJB extends MenuItemWrapperICS {
    MenuItemWrapperJB(Context context, SupportMenuItem supportMenuItem) {
        super(context, supportMenuItem);
    }

    @Override // android.support.v7.view.menu.MenuItemWrapperICS
    MenuItemWrapperICS$ActionProviderWrapper createActionProviderWrapper(ActionProvider actionProvider) {
        return new MenuItemWrapperJB$ActionProviderWrapperJB(this, this.mContext, actionProvider);
    }
}

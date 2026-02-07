package android.support.v4.view;

import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public abstract class ActionProvider {
    private static final String TAG = "ActionProvider(support)";
    private final Context mContext;
    private ActionProvider$SubUiVisibilityListener mSubUiVisibilityListener;
    private ActionProvider$VisibilityListener mVisibilityListener;

    public boolean hasSubMenu() {
        return false;
    }

    public boolean isVisible() {
        return true;
    }

    public abstract View onCreateActionView();

    public boolean onPerformDefaultAction() {
        return false;
    }

    public void onPrepareSubMenu(SubMenu subMenu) {
    }

    public boolean overridesItemVisibility() {
        return false;
    }

    public ActionProvider(Context context) {
        this.mContext = context;
    }

    public Context getContext() {
        return this.mContext;
    }

    public View onCreateActionView(MenuItem menuItem) {
        return onCreateActionView();
    }

    public void refreshVisibility() {
        if (this.mVisibilityListener == null || !overridesItemVisibility()) {
            return;
        }
        this.mVisibilityListener.onActionProviderVisibilityChanged(isVisible());
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void subUiVisibilityChanged(boolean z) {
        if (this.mSubUiVisibilityListener != null) {
            this.mSubUiVisibilityListener.onSubUiVisibilityChanged(z);
        }
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void setSubUiVisibilityListener(ActionProvider$SubUiVisibilityListener actionProvider$SubUiVisibilityListener) {
        this.mSubUiVisibilityListener = actionProvider$SubUiVisibilityListener;
    }

    public void setVisibilityListener(ActionProvider$VisibilityListener actionProvider$VisibilityListener) {
        if (this.mVisibilityListener != null && actionProvider$VisibilityListener != null) {
            Log.w("ActionProvider(support)", "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?");
        }
        this.mVisibilityListener = actionProvider$VisibilityListener;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void reset() {
        this.mVisibilityListener = null;
        this.mSubUiVisibilityListener = null;
    }
}

package android.support.v7.app;

import android.support.v4.view.ViewCompat;
import android.support.v7.view.ActionMode;
import android.support.v7.view.ActionMode$Callback;
import android.view.Menu;
import android.view.MenuItem;

class AppCompatDelegateImpl$ActionModeCallbackWrapperV9 implements ActionMode$Callback {
    private ActionMode$Callback mWrapped;
    final /* synthetic */ AppCompatDelegateImpl this$0;

    public AppCompatDelegateImpl$ActionModeCallbackWrapperV9(AppCompatDelegateImpl appCompatDelegateImpl, ActionMode$Callback actionMode$Callback) {
        this.this$0 = appCompatDelegateImpl;
        this.mWrapped = actionMode$Callback;
    }

    @Override // android.support.v7.view.ActionMode$Callback
    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        return this.mWrapped.onCreateActionMode(actionMode, menu);
    }

    @Override // android.support.v7.view.ActionMode$Callback
    public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        return this.mWrapped.onPrepareActionMode(actionMode, menu);
    }

    @Override // android.support.v7.view.ActionMode$Callback
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        return this.mWrapped.onActionItemClicked(actionMode, menuItem);
    }

    @Override // android.support.v7.view.ActionMode$Callback
    public void onDestroyActionMode(ActionMode actionMode) {
        this.mWrapped.onDestroyActionMode(actionMode);
        if (this.this$0.mActionModePopup != null) {
            this.this$0.mWindow.getDecorView().removeCallbacks(this.this$0.mShowActionModePopup);
        }
        if (this.this$0.mActionModeView != null) {
            this.this$0.endOnGoingFadeAnimation();
            this.this$0.mFadeAnim = ViewCompat.animate(this.this$0.mActionModeView).alpha(0.0f);
            this.this$0.mFadeAnim.setListener(new AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1(this));
        }
        if (this.this$0.mAppCompatCallback != null) {
            this.this$0.mAppCompatCallback.onSupportActionModeFinished(this.this$0.mActionMode);
        }
        this.this$0.mActionMode = null;
    }
}

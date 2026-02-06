package android.support.v7.widget;

import android.support.v7.view.ActionMode;
import android.view.View;
import android.view.View$OnClickListener;

class ActionBarContextView$1 implements View$OnClickListener {
    final /* synthetic */ ActionBarContextView this$0;
    final /* synthetic */ ActionMode val$mode;

    ActionBarContextView$1(ActionBarContextView actionBarContextView, ActionMode actionMode) {
        this.this$0 = actionBarContextView;
        this.val$mode = actionMode;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        this.val$mode.finish();
    }
}

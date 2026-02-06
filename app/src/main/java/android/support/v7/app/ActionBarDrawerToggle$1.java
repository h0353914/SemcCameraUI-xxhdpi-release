package android.support.v7.app;

import android.view.View;
import android.view.View$OnClickListener;

class ActionBarDrawerToggle$1 implements View$OnClickListener {
    final /* synthetic */ ActionBarDrawerToggle this$0;

    ActionBarDrawerToggle$1(ActionBarDrawerToggle actionBarDrawerToggle) {
        this.this$0 = actionBarDrawerToggle;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        if (this.this$0.mDrawerIndicatorEnabled) {
            this.this$0.toggle();
        } else if (this.this$0.mToolbarNavigationClickListener != null) {
            this.this$0.mToolbarNavigationClickListener.onClick(view);
        }
    }
}

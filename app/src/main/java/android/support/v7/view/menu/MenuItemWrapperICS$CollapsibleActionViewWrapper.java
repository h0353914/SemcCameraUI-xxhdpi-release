package android.support.v7.view.menu;

import android.support.v7.view.CollapsibleActionView;
import android.view.View;
import android.widget.FrameLayout;

class MenuItemWrapperICS$CollapsibleActionViewWrapper extends FrameLayout implements CollapsibleActionView {
    final android.view.CollapsibleActionView mWrappedView;

    /* JADX WARN: Multi-variable type inference failed */
    MenuItemWrapperICS$CollapsibleActionViewWrapper(View view) {
        super(view.getContext());
        this.mWrappedView = (android.view.CollapsibleActionView) view;
        addView(view);
    }

    @Override // android.support.v7.view.CollapsibleActionView
    public void onActionViewExpanded() {
        this.mWrappedView.onActionViewExpanded();
    }

    @Override // android.support.v7.view.CollapsibleActionView
    public void onActionViewCollapsed() {
        this.mWrappedView.onActionViewCollapsed();
    }

    View getWrappedView() {
        return (View) this.mWrappedView;
    }
}

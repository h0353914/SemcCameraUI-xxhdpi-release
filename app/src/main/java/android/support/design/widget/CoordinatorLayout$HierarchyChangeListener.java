package android.support.design.widget;

import android.view.View;
import android.view.ViewGroup$OnHierarchyChangeListener;

/* JADX INFO: loaded from: classes.dex */
class CoordinatorLayout$HierarchyChangeListener implements ViewGroup$OnHierarchyChangeListener {
    final /* synthetic */ CoordinatorLayout this$0;

    CoordinatorLayout$HierarchyChangeListener(CoordinatorLayout coordinatorLayout) {
        this.this$0 = coordinatorLayout;
    }

    @Override // android.view.ViewGroup$OnHierarchyChangeListener
    public void onChildViewAdded(View view, View view2) {
        if (this.this$0.mOnHierarchyChangeListener != null) {
            this.this$0.mOnHierarchyChangeListener.onChildViewAdded(view, view2);
        }
    }

    @Override // android.view.ViewGroup$OnHierarchyChangeListener
    public void onChildViewRemoved(View view, View view2) {
        this.this$0.onChildViewsChanged(2);
        if (this.this$0.mOnHierarchyChangeListener != null) {
            this.this$0.mOnHierarchyChangeListener.onChildViewRemoved(view, view2);
        }
    }
}

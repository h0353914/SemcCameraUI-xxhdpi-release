package android.support.v7.preference;

import android.os.Bundle;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.widget.RecyclerView$Adapter;
import android.view.View;

class PreferenceRecyclerViewAccessibilityDelegate$1 extends AccessibilityDelegateCompat {
    final /* synthetic */ PreferenceRecyclerViewAccessibilityDelegate this$0;

    PreferenceRecyclerViewAccessibilityDelegate$1(PreferenceRecyclerViewAccessibilityDelegate preferenceRecyclerViewAccessibilityDelegate) {
        this.this$0 = preferenceRecyclerViewAccessibilityDelegate;
    }

    @Override // android.support.v4.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        Preference item;
        this.this$0.mDefaultItemDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        int childAdapterPosition = this.this$0.mRecyclerView.getChildAdapterPosition(view);
        RecyclerView$Adapter adapter = this.this$0.mRecyclerView.getAdapter();
        if ((adapter instanceof PreferenceGroupAdapter) && (item = ((PreferenceGroupAdapter) adapter).getItem(childAdapterPosition)) != null) {
            item.onInitializeAccessibilityNodeInfo(accessibilityNodeInfoCompat);
        }
    }

    @Override // android.support.v4.view.AccessibilityDelegateCompat
    public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        return this.this$0.mDefaultItemDelegate.performAccessibilityAction(view, i, bundle);
    }
}

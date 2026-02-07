package android.support.v7.preference;

import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerViewAccessibilityDelegate;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
public class PreferenceRecyclerViewAccessibilityDelegate extends RecyclerViewAccessibilityDelegate {
    final AccessibilityDelegateCompat mDefaultItemDelegate;
    final AccessibilityDelegateCompat mItemDelegate;
    final RecyclerView mRecyclerView;

    public PreferenceRecyclerViewAccessibilityDelegate(RecyclerView recyclerView) {
        super(recyclerView);
        this.mDefaultItemDelegate = super.getItemDelegate();
        this.mItemDelegate = new PreferenceRecyclerViewAccessibilityDelegate$1(this);
        this.mRecyclerView = recyclerView;
    }

    @Override // android.support.v7.widget.RecyclerViewAccessibilityDelegate
    public AccessibilityDelegateCompat getItemDelegate() {
        return this.mItemDelegate;
    }
}

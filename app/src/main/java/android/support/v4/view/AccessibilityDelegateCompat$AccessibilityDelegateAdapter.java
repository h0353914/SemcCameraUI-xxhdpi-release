package android.support.v4.view;

import android.os.Bundle;
import android.support.annotation.RequiresApi;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.view.View;
import android.view.View$AccessibilityDelegate;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;

/* JADX INFO: loaded from: classes.dex */
final class AccessibilityDelegateCompat$AccessibilityDelegateAdapter extends View$AccessibilityDelegate {
    private final AccessibilityDelegateCompat mCompat;

    AccessibilityDelegateCompat$AccessibilityDelegateAdapter(AccessibilityDelegateCompat accessibilityDelegateCompat) {
        this.mCompat = accessibilityDelegateCompat;
    }

    @Override // android.view.View$AccessibilityDelegate
    public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        return this.mCompat.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // android.view.View$AccessibilityDelegate
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.mCompat.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // android.view.View$AccessibilityDelegate
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        this.mCompat.onInitializeAccessibilityNodeInfo(view, AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo));
    }

    @Override // android.view.View$AccessibilityDelegate
    public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.mCompat.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // android.view.View$AccessibilityDelegate
    public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.mCompat.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    @Override // android.view.View$AccessibilityDelegate
    public void sendAccessibilityEvent(View view, int i) {
        this.mCompat.sendAccessibilityEvent(view, i);
    }

    @Override // android.view.View$AccessibilityDelegate
    public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
        this.mCompat.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

    @Override // android.view.View$AccessibilityDelegate
    @RequiresApi(16)
    public AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
        AccessibilityNodeProviderCompat accessibilityNodeProvider = this.mCompat.getAccessibilityNodeProvider(view);
        if (accessibilityNodeProvider != null) {
            return (AccessibilityNodeProvider) accessibilityNodeProvider.getProvider();
        }
        return null;
    }

    @Override // android.view.View$AccessibilityDelegate
    public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        return this.mCompat.performAccessibilityAction(view, i, bundle);
    }
}

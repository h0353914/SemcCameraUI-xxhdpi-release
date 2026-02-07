package android.support.v4.view;

import android.os.Build$VERSION;
import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.view.View;
import android.view.View$AccessibilityDelegate;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeProvider;

/* JADX INFO: loaded from: classes.dex */
public class AccessibilityDelegateCompat {
    private static final View$AccessibilityDelegate DEFAULT_DELEGATE = new View$AccessibilityDelegate();
    private final View$AccessibilityDelegate mBridge = new AccessibilityDelegateCompat$AccessibilityDelegateAdapter(this);

    View$AccessibilityDelegate getBridge() {
        return this.mBridge;
    }

    public void sendAccessibilityEvent(View view, int i) {
        DEFAULT_DELEGATE.sendAccessibilityEvent(view, i);
    }

    public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
        DEFAULT_DELEGATE.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

    public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        return DEFAULT_DELEGATE.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        DEFAULT_DELEGATE.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        DEFAULT_DELEGATE.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        DEFAULT_DELEGATE.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.unwrap());
    }

    public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return DEFAULT_DELEGATE.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
        AccessibilityNodeProvider accessibilityNodeProvider;
        if (Build$VERSION.SDK_INT < 16 || (accessibilityNodeProvider = DEFAULT_DELEGATE.getAccessibilityNodeProvider(view)) == null) {
            return null;
        }
        return new AccessibilityNodeProviderCompat(accessibilityNodeProvider);
    }

    public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        if (Build$VERSION.SDK_INT >= 16) {
            return DEFAULT_DELEGATE.performAccessibilityAction(view, i, bundle);
        }
        return false;
    }
}

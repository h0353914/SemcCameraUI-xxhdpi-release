package android.support.v4.view.accessibility;

import android.support.annotation.NonNull;
import android.view.accessibility.AccessibilityManager$AccessibilityStateChangeListener;

class AccessibilityManagerCompat$AccessibilityStateChangeListenerWrapper implements AccessibilityManager$AccessibilityStateChangeListener {
    AccessibilityManagerCompat$AccessibilityStateChangeListener mListener;

    AccessibilityManagerCompat$AccessibilityStateChangeListenerWrapper(@NonNull AccessibilityManagerCompat$AccessibilityStateChangeListener accessibilityManagerCompat$AccessibilityStateChangeListener) {
        this.mListener = accessibilityManagerCompat$AccessibilityStateChangeListener;
    }

    public int hashCode() {
        return this.mListener.hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.mListener.equals(((AccessibilityManagerCompat$AccessibilityStateChangeListenerWrapper) obj).mListener);
    }

    @Override // android.view.accessibility.AccessibilityManager$AccessibilityStateChangeListener
    public void onAccessibilityStateChanged(boolean z) {
        this.mListener.onAccessibilityStateChanged(z);
    }
}

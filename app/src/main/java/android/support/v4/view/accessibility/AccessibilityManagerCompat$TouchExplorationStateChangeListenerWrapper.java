package android.support.v4.view.accessibility;

import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.view.accessibility.AccessibilityManager$TouchExplorationStateChangeListener;

@RequiresApi(19)
class AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper implements AccessibilityManager$TouchExplorationStateChangeListener {
    final AccessibilityManagerCompat$TouchExplorationStateChangeListener mListener;

    AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper(@NonNull AccessibilityManagerCompat$TouchExplorationStateChangeListener accessibilityManagerCompat$TouchExplorationStateChangeListener) {
        this.mListener = accessibilityManagerCompat$TouchExplorationStateChangeListener;
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
        return this.mListener.equals(((AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper) obj).mListener);
    }

    @Override // android.view.accessibility.AccessibilityManager$TouchExplorationStateChangeListener
    public void onTouchExplorationStateChanged(boolean z) {
        this.mListener.onTouchExplorationStateChanged(z);
    }
}

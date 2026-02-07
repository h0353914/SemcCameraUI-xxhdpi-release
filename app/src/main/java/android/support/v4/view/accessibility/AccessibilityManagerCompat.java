package android.support.v4.view.accessibility;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.os.Build$VERSION;
import android.view.accessibility.AccessibilityManager;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class AccessibilityManagerCompat {
    @Deprecated
    public static boolean addAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, AccessibilityManagerCompat$AccessibilityStateChangeListener accessibilityManagerCompat$AccessibilityStateChangeListener) {
        if (accessibilityManagerCompat$AccessibilityStateChangeListener == null) {
            return false;
        }
        return accessibilityManager.addAccessibilityStateChangeListener(new AccessibilityManagerCompat$AccessibilityStateChangeListenerWrapper(accessibilityManagerCompat$AccessibilityStateChangeListener));
    }

    @Deprecated
    public static boolean removeAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, AccessibilityManagerCompat$AccessibilityStateChangeListener accessibilityManagerCompat$AccessibilityStateChangeListener) {
        if (accessibilityManagerCompat$AccessibilityStateChangeListener == null) {
            return false;
        }
        return accessibilityManager.removeAccessibilityStateChangeListener(new AccessibilityManagerCompat$AccessibilityStateChangeListenerWrapper(accessibilityManagerCompat$AccessibilityStateChangeListener));
    }

    @Deprecated
    public static List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList(AccessibilityManager accessibilityManager) {
        return accessibilityManager.getInstalledAccessibilityServiceList();
    }

    @Deprecated
    public static List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(AccessibilityManager accessibilityManager, int i) {
        return accessibilityManager.getEnabledAccessibilityServiceList(i);
    }

    @Deprecated
    public static boolean isTouchExplorationEnabled(AccessibilityManager accessibilityManager) {
        return accessibilityManager.isTouchExplorationEnabled();
    }

    public static boolean addTouchExplorationStateChangeListener(AccessibilityManager accessibilityManager, AccessibilityManagerCompat$TouchExplorationStateChangeListener accessibilityManagerCompat$TouchExplorationStateChangeListener) {
        if (Build$VERSION.SDK_INT < 19 || accessibilityManagerCompat$TouchExplorationStateChangeListener == null) {
            return false;
        }
        return accessibilityManager.addTouchExplorationStateChangeListener(new AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper(accessibilityManagerCompat$TouchExplorationStateChangeListener));
    }

    public static boolean removeTouchExplorationStateChangeListener(AccessibilityManager accessibilityManager, AccessibilityManagerCompat$TouchExplorationStateChangeListener accessibilityManagerCompat$TouchExplorationStateChangeListener) {
        if (Build$VERSION.SDK_INT < 19 || accessibilityManagerCompat$TouchExplorationStateChangeListener == null) {
            return false;
        }
        return accessibilityManager.removeTouchExplorationStateChangeListener(new AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper(accessibilityManagerCompat$TouchExplorationStateChangeListener));
    }

    private AccessibilityManagerCompat() {
    }
}

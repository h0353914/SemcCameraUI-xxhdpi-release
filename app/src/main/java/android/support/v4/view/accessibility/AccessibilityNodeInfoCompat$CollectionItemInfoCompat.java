package android.support.v4.view.accessibility;

import android.os.Build$VERSION;
import android.view.accessibility.AccessibilityNodeInfo$CollectionItemInfo;

public class AccessibilityNodeInfoCompat$CollectionItemInfoCompat {
    final Object mInfo;

    public static AccessibilityNodeInfoCompat$CollectionItemInfoCompat obtain(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        if (Build$VERSION.SDK_INT >= 21) {
            return new AccessibilityNodeInfoCompat$CollectionItemInfoCompat(AccessibilityNodeInfo$CollectionItemInfo.obtain(i, i2, i3, i4, z, z2));
        }
        if (Build$VERSION.SDK_INT >= 19) {
            return new AccessibilityNodeInfoCompat$CollectionItemInfoCompat(AccessibilityNodeInfo$CollectionItemInfo.obtain(i, i2, i3, i4, z));
        }
        return new AccessibilityNodeInfoCompat$CollectionItemInfoCompat(null);
    }

    public static AccessibilityNodeInfoCompat$CollectionItemInfoCompat obtain(int i, int i2, int i3, int i4, boolean z) {
        if (Build$VERSION.SDK_INT >= 19) {
            return new AccessibilityNodeInfoCompat$CollectionItemInfoCompat(AccessibilityNodeInfo$CollectionItemInfo.obtain(i, i2, i3, i4, z));
        }
        return new AccessibilityNodeInfoCompat$CollectionItemInfoCompat(null);
    }

    AccessibilityNodeInfoCompat$CollectionItemInfoCompat(Object obj) {
        this.mInfo = obj;
    }

    public int getColumnIndex() {
        if (Build$VERSION.SDK_INT >= 19) {
            return ((AccessibilityNodeInfo$CollectionItemInfo) this.mInfo).getColumnIndex();
        }
        return 0;
    }

    public int getColumnSpan() {
        if (Build$VERSION.SDK_INT >= 19) {
            return ((AccessibilityNodeInfo$CollectionItemInfo) this.mInfo).getColumnSpan();
        }
        return 0;
    }

    public int getRowIndex() {
        if (Build$VERSION.SDK_INT >= 19) {
            return ((AccessibilityNodeInfo$CollectionItemInfo) this.mInfo).getRowIndex();
        }
        return 0;
    }

    public int getRowSpan() {
        if (Build$VERSION.SDK_INT >= 19) {
            return ((AccessibilityNodeInfo$CollectionItemInfo) this.mInfo).getRowSpan();
        }
        return 0;
    }

    public boolean isHeading() {
        if (Build$VERSION.SDK_INT >= 19) {
            return ((AccessibilityNodeInfo$CollectionItemInfo) this.mInfo).isHeading();
        }
        return false;
    }

    public boolean isSelected() {
        if (Build$VERSION.SDK_INT >= 21) {
            return ((AccessibilityNodeInfo$CollectionItemInfo) this.mInfo).isSelected();
        }
        return false;
    }
}

package android.support.v4.view.accessibility;

import android.os.Build$VERSION;
import android.view.accessibility.AccessibilityNodeInfo$RangeInfo;

/* JADX INFO: loaded from: classes.dex */
public class AccessibilityNodeInfoCompat$RangeInfoCompat {
    public static final int RANGE_TYPE_FLOAT = 1;
    public static final int RANGE_TYPE_INT = 0;
    public static final int RANGE_TYPE_PERCENT = 2;
    final Object mInfo;

    public static AccessibilityNodeInfoCompat$RangeInfoCompat obtain(int i, float f, float f2, float f3) {
        if (Build$VERSION.SDK_INT >= 19) {
            return new AccessibilityNodeInfoCompat$RangeInfoCompat(AccessibilityNodeInfo$RangeInfo.obtain(i, f, f2, f3));
        }
        return new AccessibilityNodeInfoCompat$RangeInfoCompat(null);
    }

    AccessibilityNodeInfoCompat$RangeInfoCompat(Object obj) {
        this.mInfo = obj;
    }

    public float getCurrent() {
        if (Build$VERSION.SDK_INT >= 19) {
            return ((AccessibilityNodeInfo$RangeInfo) this.mInfo).getCurrent();
        }
        return 0.0f;
    }

    public float getMax() {
        if (Build$VERSION.SDK_INT >= 19) {
            return ((AccessibilityNodeInfo$RangeInfo) this.mInfo).getMax();
        }
        return 0.0f;
    }

    public float getMin() {
        if (Build$VERSION.SDK_INT >= 19) {
            return ((AccessibilityNodeInfo$RangeInfo) this.mInfo).getMin();
        }
        return 0.0f;
    }

    public int getType() {
        if (Build$VERSION.SDK_INT >= 19) {
            return ((AccessibilityNodeInfo$RangeInfo) this.mInfo).getType();
        }
        return 0;
    }
}

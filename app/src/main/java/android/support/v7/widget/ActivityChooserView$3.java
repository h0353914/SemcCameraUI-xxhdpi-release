package android.support.v7.widget;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;
import android.view.View$AccessibilityDelegate;
import android.view.accessibility.AccessibilityNodeInfo;

class ActivityChooserView$3 extends View$AccessibilityDelegate {
    final /* synthetic */ ActivityChooserView this$0;

    ActivityChooserView$3(ActivityChooserView activityChooserView) {
        this.this$0 = activityChooserView;
    }

    @Override // android.view.View$AccessibilityDelegate
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCanOpenPopup(true);
    }
}

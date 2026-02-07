package android.support.v4.widget;

import android.graphics.Rect;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

/* JADX INFO: loaded from: classes.dex */
class SlidingPaneLayout$AccessibilityDelegate extends AccessibilityDelegateCompat {
    private final Rect mTmpRect = new Rect();
    final /* synthetic */ SlidingPaneLayout this$0;

    SlidingPaneLayout$AccessibilityDelegate(SlidingPaneLayout slidingPaneLayout) {
        this.this$0 = slidingPaneLayout;
    }

    @Override // android.support.v4.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatObtain = AccessibilityNodeInfoCompat.obtain(accessibilityNodeInfoCompat);
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompatObtain);
        copyNodeInfoNoChildren(accessibilityNodeInfoCompat, accessibilityNodeInfoCompatObtain);
        accessibilityNodeInfoCompatObtain.recycle();
        accessibilityNodeInfoCompat.setClassName(SlidingPaneLayout.class.getName());
        accessibilityNodeInfoCompat.setSource(view);
        Object parentForAccessibility = ViewCompat.getParentForAccessibility(view);
        if (parentForAccessibility instanceof View) {
            accessibilityNodeInfoCompat.setParent((View) parentForAccessibility);
        }
        int childCount = this.this$0.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.this$0.getChildAt(i);
            if (!filter(childAt) && childAt.getVisibility() == 0) {
                ViewCompat.setImportantForAccessibility(childAt, 1);
                accessibilityNodeInfoCompat.addChild(childAt);
            }
        }
    }

    @Override // android.support.v4.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        accessibilityEvent.setClassName(SlidingPaneLayout.class.getName());
    }

    @Override // android.support.v4.view.AccessibilityDelegateCompat
    public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        if (filter(view)) {
            return false;
        }
        return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    public boolean filter(View view) {
        return this.this$0.isDimmed(view);
    }

    private void copyNodeInfoNoChildren(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2) {
        Rect rect = this.mTmpRect;
        accessibilityNodeInfoCompat2.getBoundsInParent(rect);
        accessibilityNodeInfoCompat.setBoundsInParent(rect);
        accessibilityNodeInfoCompat2.getBoundsInScreen(rect);
        accessibilityNodeInfoCompat.setBoundsInScreen(rect);
        accessibilityNodeInfoCompat.setVisibleToUser(accessibilityNodeInfoCompat2.isVisibleToUser());
        accessibilityNodeInfoCompat.setPackageName(accessibilityNodeInfoCompat2.getPackageName());
        accessibilityNodeInfoCompat.setClassName(accessibilityNodeInfoCompat2.getClassName());
        accessibilityNodeInfoCompat.setContentDescription(accessibilityNodeInfoCompat2.getContentDescription());
        accessibilityNodeInfoCompat.setEnabled(accessibilityNodeInfoCompat2.isEnabled());
        accessibilityNodeInfoCompat.setClickable(accessibilityNodeInfoCompat2.isClickable());
        accessibilityNodeInfoCompat.setFocusable(accessibilityNodeInfoCompat2.isFocusable());
        accessibilityNodeInfoCompat.setFocused(accessibilityNodeInfoCompat2.isFocused());
        accessibilityNodeInfoCompat.setAccessibilityFocused(accessibilityNodeInfoCompat2.isAccessibilityFocused());
        accessibilityNodeInfoCompat.setSelected(accessibilityNodeInfoCompat2.isSelected());
        accessibilityNodeInfoCompat.setLongClickable(accessibilityNodeInfoCompat2.isLongClickable());
        accessibilityNodeInfoCompat.addAction(accessibilityNodeInfoCompat2.getActions());
        accessibilityNodeInfoCompat.setMovementGranularities(accessibilityNodeInfoCompat2.getMovementGranularities());
    }
}

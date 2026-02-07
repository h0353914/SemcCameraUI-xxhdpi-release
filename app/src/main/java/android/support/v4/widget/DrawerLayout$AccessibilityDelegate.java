package android.support.v4.widget;

import android.graphics.Rect;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityActionCompat;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class DrawerLayout$AccessibilityDelegate extends AccessibilityDelegateCompat {
    private final Rect mTmpRect = new Rect();
    final /* synthetic */ DrawerLayout this$0;

    DrawerLayout$AccessibilityDelegate(DrawerLayout drawerLayout) {
        this.this$0 = drawerLayout;
    }

    @Override // android.support.v4.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        if (DrawerLayout.CAN_HIDE_DESCENDANTS) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        } else {
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompatObtain = AccessibilityNodeInfoCompat.obtain(accessibilityNodeInfoCompat);
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompatObtain);
            accessibilityNodeInfoCompat.setSource(view);
            Object parentForAccessibility = ViewCompat.getParentForAccessibility(view);
            if (parentForAccessibility instanceof View) {
                accessibilityNodeInfoCompat.setParent((View) parentForAccessibility);
            }
            copyNodeInfoNoChildren(accessibilityNodeInfoCompat, accessibilityNodeInfoCompatObtain);
            accessibilityNodeInfoCompatObtain.recycle();
            addChildrenForAccessibility(accessibilityNodeInfoCompat, (ViewGroup) view);
        }
        accessibilityNodeInfoCompat.setClassName(DrawerLayout.class.getName());
        accessibilityNodeInfoCompat.setFocusable(false);
        accessibilityNodeInfoCompat.setFocused(false);
        accessibilityNodeInfoCompat.removeAction(AccessibilityNodeInfoCompat$AccessibilityActionCompat.ACTION_FOCUS);
        accessibilityNodeInfoCompat.removeAction(AccessibilityNodeInfoCompat$AccessibilityActionCompat.ACTION_CLEAR_FOCUS);
    }

    @Override // android.support.v4.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        accessibilityEvent.setClassName(DrawerLayout.class.getName());
    }

    @Override // android.support.v4.view.AccessibilityDelegateCompat
    public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() == 32) {
            List<CharSequence> text = accessibilityEvent.getText();
            View viewFindVisibleDrawer = this.this$0.findVisibleDrawer();
            if (viewFindVisibleDrawer == null) {
                return true;
            }
            CharSequence drawerTitle = this.this$0.getDrawerTitle(this.this$0.getDrawerViewAbsoluteGravity(viewFindVisibleDrawer));
            if (drawerTitle == null) {
                return true;
            }
            text.add(drawerTitle);
            return true;
        }
        return super.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // android.support.v4.view.AccessibilityDelegateCompat
    public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        if (DrawerLayout.CAN_HIDE_DESCENDANTS || DrawerLayout.includeChildForAccessibility(view)) {
            return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }
        return false;
    }

    private void addChildrenForAccessibility(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (DrawerLayout.includeChildForAccessibility(childAt)) {
                accessibilityNodeInfoCompat.addChild(childAt);
            }
        }
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
    }
}

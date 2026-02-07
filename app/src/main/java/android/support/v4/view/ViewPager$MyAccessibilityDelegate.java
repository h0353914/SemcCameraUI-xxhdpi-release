package android.support.v4.view;

import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

/* JADX INFO: loaded from: classes.dex */
class ViewPager$MyAccessibilityDelegate extends AccessibilityDelegateCompat {
    final /* synthetic */ ViewPager this$0;

    ViewPager$MyAccessibilityDelegate(ViewPager viewPager) {
        this.this$0 = viewPager;
    }

    @Override // android.support.v4.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        accessibilityEvent.setClassName(ViewPager.class.getName());
        accessibilityEvent.setScrollable(canScroll());
        if (accessibilityEvent.getEventType() != 4096 || this.this$0.mAdapter == null) {
            return;
        }
        accessibilityEvent.setItemCount(this.this$0.mAdapter.getCount());
        accessibilityEvent.setFromIndex(this.this$0.mCurItem);
        accessibilityEvent.setToIndex(this.this$0.mCurItem);
    }

    @Override // android.support.v4.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.setClassName(ViewPager.class.getName());
        accessibilityNodeInfoCompat.setScrollable(canScroll());
        if (this.this$0.canScrollHorizontally(1)) {
            accessibilityNodeInfoCompat.addAction(4096);
        }
        if (this.this$0.canScrollHorizontally(-1)) {
            accessibilityNodeInfoCompat.addAction(8192);
        }
    }

    @Override // android.support.v4.view.AccessibilityDelegateCompat
    public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        if (super.performAccessibilityAction(view, i, bundle)) {
            return true;
        }
        if (i == 4096) {
            if (!this.this$0.canScrollHorizontally(1)) {
                return false;
            }
            this.this$0.setCurrentItem(this.this$0.mCurItem + 1);
            return true;
        }
        if (i != 8192 || !this.this$0.canScrollHorizontally(-1)) {
            return false;
        }
        this.this$0.setCurrentItem(this.this$0.mCurItem - 1);
        return true;
    }

    private boolean canScroll() {
        return this.this$0.mAdapter != null && this.this$0.mAdapter.getCount() > 1;
    }
}

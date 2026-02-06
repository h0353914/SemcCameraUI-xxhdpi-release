package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v7.app.ActionBar$Tab;
import android.support.v7.appcompat.R$attr;
import android.text.TextUtils;
import android.text.TextUtils$TruncateAt;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.TextView;

class ScrollingTabContainerView$TabView extends LinearLayout {
    private final int[] BG_ATTRS;
    private View mCustomView;
    private ImageView mIconView;
    private ActionBar$Tab mTab;
    private TextView mTextView;
    final /* synthetic */ ScrollingTabContainerView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollingTabContainerView$TabView(ScrollingTabContainerView scrollingTabContainerView, Context context, ActionBar$Tab actionBar$Tab, boolean z) {
        super(context, null, R$attr.actionBarTabStyle);
        this.this$0 = scrollingTabContainerView;
        this.BG_ATTRS = new int[]{16842964};
        this.mTab = actionBar$Tab;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, null, this.BG_ATTRS, R$attr.actionBarTabStyle, 0);
        if (tintTypedArrayObtainStyledAttributes.hasValue(0)) {
            setBackgroundDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(0));
        }
        tintTypedArrayObtainStyledAttributes.recycle();
        if (z) {
            setGravity(8388627);
        }
        update();
    }

    public void bindTab(ActionBar$Tab actionBar$Tab) {
        this.mTab = actionBar$Tab;
        update();
    }

    @Override // android.view.View
    public void setSelected(boolean z) {
        boolean z2 = isSelected() != z;
        super.setSelected(z);
        if (z2 && z) {
            sendAccessibilityEvent(4);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(ActionBar$Tab.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(ActionBar$Tab.class.getName());
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.this$0.mMaxTabWidth <= 0 || getMeasuredWidth() <= this.this$0.mMaxTabWidth) {
            return;
        }
        super.onMeasure(View$MeasureSpec.makeMeasureSpec(this.this$0.mMaxTabWidth, 1073741824), i2);
    }

    public void update() {
        ActionBar$Tab actionBar$Tab = this.mTab;
        View customView = actionBar$Tab.getCustomView();
        if (customView != null) {
            ViewParent parent = customView.getParent();
            if (parent != this) {
                if (parent != null) {
                    ((ViewGroup) parent).removeView(customView);
                }
                addView(customView);
            }
            this.mCustomView = customView;
            if (this.mTextView != null) {
                this.mTextView.setVisibility(8);
            }
            if (this.mIconView != null) {
                this.mIconView.setVisibility(8);
                this.mIconView.setImageDrawable(null);
                return;
            }
            return;
        }
        if (this.mCustomView != null) {
            removeView(this.mCustomView);
            this.mCustomView = null;
        }
        Drawable icon = actionBar$Tab.getIcon();
        CharSequence text = actionBar$Tab.getText();
        if (icon != null) {
            if (this.mIconView == null) {
                AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
                LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(-2, -2);
                linearLayout$LayoutParams.gravity = 16;
                appCompatImageView.setLayoutParams(linearLayout$LayoutParams);
                addView(appCompatImageView, 0);
                this.mIconView = appCompatImageView;
            }
            this.mIconView.setImageDrawable(icon);
            this.mIconView.setVisibility(0);
        } else if (this.mIconView != null) {
            this.mIconView.setVisibility(8);
            this.mIconView.setImageDrawable(null);
        }
        boolean z = !TextUtils.isEmpty(text);
        if (z) {
            if (this.mTextView == null) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null, R$attr.actionBarTabTextStyle);
                appCompatTextView.setEllipsize(TextUtils$TruncateAt.END);
                LinearLayout$LayoutParams linearLayout$LayoutParams2 = new LinearLayout$LayoutParams(-2, -2);
                linearLayout$LayoutParams2.gravity = 16;
                appCompatTextView.setLayoutParams(linearLayout$LayoutParams2);
                addView(appCompatTextView);
                this.mTextView = appCompatTextView;
            }
            this.mTextView.setText(text);
            this.mTextView.setVisibility(0);
        } else if (this.mTextView != null) {
            this.mTextView.setVisibility(8);
            this.mTextView.setText((CharSequence) null);
        }
        if (this.mIconView != null) {
            this.mIconView.setContentDescription(actionBar$Tab.getContentDescription());
        }
        TooltipCompat.setTooltipText(this, z ? null : actionBar$Tab.getContentDescription());
    }

    public ActionBar$Tab getTab() {
        return this.mTab;
    }
}

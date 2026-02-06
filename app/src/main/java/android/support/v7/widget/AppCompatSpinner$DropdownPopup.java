package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ListAdapter;
import android.widget.SpinnerAdapter;

class AppCompatSpinner$DropdownPopup extends ListPopupWindow {
    ListAdapter mAdapter;
    private CharSequence mHintText;
    private final Rect mVisibleRect;
    final /* synthetic */ AppCompatSpinner this$0;

    static /* synthetic */ void access$001(AppCompatSpinner$DropdownPopup appCompatSpinner$DropdownPopup) {
        super.show();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatSpinner$DropdownPopup(AppCompatSpinner appCompatSpinner, Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.this$0 = appCompatSpinner;
        this.mVisibleRect = new Rect();
        setAnchorView(appCompatSpinner);
        setModal(true);
        setPromptPosition(0);
        setOnItemClickListener(new AppCompatSpinner$DropdownPopup$1(this, appCompatSpinner));
    }

    @Override // android.support.v7.widget.ListPopupWindow
    public void setAdapter(ListAdapter listAdapter) {
        super.setAdapter(listAdapter);
        this.mAdapter = listAdapter;
    }

    public CharSequence getHintText() {
        return this.mHintText;
    }

    public void setPromptText(CharSequence charSequence) {
        this.mHintText = charSequence;
    }

    void computeContentWidth() {
        Drawable background = getBackground();
        int i = 0;
        if (background != null) {
            background.getPadding(this.this$0.mTempRect);
            i = ViewUtils.isLayoutRtl(this.this$0) ? this.this$0.mTempRect.right : -this.this$0.mTempRect.left;
        } else {
            Rect rect = this.this$0.mTempRect;
            this.this$0.mTempRect.right = 0;
            rect.left = 0;
        }
        int paddingLeft = this.this$0.getPaddingLeft();
        int paddingRight = this.this$0.getPaddingRight();
        int width = this.this$0.getWidth();
        if (this.this$0.mDropDownWidth == -2) {
            int iCompatMeasureContentWidth = this.this$0.compatMeasureContentWidth((SpinnerAdapter) this.mAdapter, getBackground());
            int i2 = (this.this$0.getContext().getResources().getDisplayMetrics().widthPixels - this.this$0.mTempRect.left) - this.this$0.mTempRect.right;
            if (iCompatMeasureContentWidth > i2) {
                iCompatMeasureContentWidth = i2;
            }
            setContentWidth(Math.max(iCompatMeasureContentWidth, (width - paddingLeft) - paddingRight));
        } else if (this.this$0.mDropDownWidth == -1) {
            setContentWidth((width - paddingLeft) - paddingRight);
        } else {
            setContentWidth(this.this$0.mDropDownWidth);
        }
        setHorizontalOffset(ViewUtils.isLayoutRtl(this.this$0) ? i + ((width - paddingRight) - getWidth()) : i + paddingLeft);
    }

    @Override // android.support.v7.widget.ListPopupWindow, android.support.v7.view.menu.ShowableListMenu
    public void show() {
        ViewTreeObserver viewTreeObserver;
        boolean zIsShowing = isShowing();
        computeContentWidth();
        setInputMethodMode(2);
        super.show();
        getListView().setChoiceMode(1);
        setSelection(this.this$0.getSelectedItemPosition());
        if (zIsShowing || (viewTreeObserver = this.this$0.getViewTreeObserver()) == null) {
            return;
        }
        AppCompatSpinner$DropdownPopup$2 appCompatSpinner$DropdownPopup$2 = new AppCompatSpinner$DropdownPopup$2(this);
        viewTreeObserver.addOnGlobalLayoutListener(appCompatSpinner$DropdownPopup$2);
        setOnDismissListener(new AppCompatSpinner$DropdownPopup$3(this, appCompatSpinner$DropdownPopup$2));
    }

    boolean isVisibleToUser(View view) {
        return ViewCompat.isAttachedToWindow(view) && view.getGlobalVisibleRect(this.mVisibleRect);
    }
}

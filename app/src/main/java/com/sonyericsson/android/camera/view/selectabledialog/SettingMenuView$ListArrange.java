package com.sonyericsson.android.camera.view.selectabledialog;

import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.sonyericsson.android.camera.view.setting.dialogitem.SettingDialogItem;
import com.sonyericsson.android.camera.view.setting.settingitem.SettingItem;

/* JADX INFO: loaded from: classes.dex */
class SettingMenuView$ListArrange extends AbsDialogScrollView$ContentArrange {
    private final boolean mIsTop;
    private final String mTitle;
    private final int mTitleLeftPadding;
    final /* synthetic */ SettingMenuView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected SettingMenuView$ListArrange(SettingMenuView settingMenuView, String str, ArrayAdapter arrayAdapter, boolean z) {
        super(arrayAdapter);
        this.this$0 = settingMenuView;
        this.mTitle = str;
        this.mIsTop = z;
        this.mTitleLeftPadding = settingMenuView.dimenToPixel(2131165579);
        setup();
        fetchItems();
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsDialogScrollView$ContentArrange
    protected void setup() {
        this.container = new FrameLayout(this.this$0.getContext());
        if (!this.mIsTop) {
            this.container.setPadding(0, this.this$0.dimenToPixel(2131165613), 0, 0);
        }
        LinearLayout linearLayout = new LinearLayout(this.this$0.getContext());
        this.container.addView(linearLayout);
        linearLayout.getLayoutParams().width = -1;
        linearLayout.getLayoutParams().height = -2;
        if (this.this$0.mParams.panelBackgroundColor != 0) {
            linearLayout.setBackgroundColor(this.this$0.mParams.panelBackgroundColor);
        }
        linearLayout.setOrientation(1);
        if (this.mTitle != null) {
            TextView textView = new TextView(this.this$0.getContext());
            linearLayout.addView(textView);
            textView.getLayoutParams().width = -1;
            textView.getLayoutParams().height = this.this$0.dimenToPixel(2131165586);
            textView.setText(this.mTitle);
            textView.setContentDescription(this.mTitle);
            textView.setTextColor(this.this$0.getResources().getColor(2131099758));
            textView.setTextSize(1, 14.0f);
            textView.setGravity(16);
            textView.setPaddingRelative(this.mTitleLeftPadding, 0, 0, 0);
        }
        this.mRowItems = new LinearLayout(this.this$0.getContext());
        this.mRowItems.setMotionEventSplittingEnabled(false);
        linearLayout.addView(this.mRowItems);
        this.mRowItems.setOrientation(1);
        this.mRowItems.getLayoutParams().width = -1;
        this.mRowItems.getLayoutParams().height = -2;
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsDialogScrollView$ContentArrange
    protected int computeHeight() {
        if (SettingMenuView.access$000(this.this$0) && !this.this$0.mIsExpandedWhenOpened) {
            return this.this$0.getInitialDisplayHeight();
        }
        return computeArrangeHeight();
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsDialogScrollView$ContentArrange
    protected int computeArrangeHeight() {
        return (this.mTitle == null ? 0 : this.this$0.dimenToPixel(2131165586)) + (this.this$0.mParams.itemHeight * this.mAdapter.getCount()) + (this.mIsTop ? 0 : this.this$0.dimenToPixel(2131165613));
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsDialogScrollView$ContentArrange
    protected View findViewWithTag(Object obj) {
        for (int i = 0; i < this.mRowItems.getChildCount(); i++) {
            View childAt = this.mRowItems.getChildAt(i);
            if ((childAt.getTag() instanceof SettingDialogItem) && ((SettingDialogItem) childAt.getTag()).getItem().compareData(obj)) {
                return childAt;
            }
        }
        return null;
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsDialogScrollView$ContentArrange
    protected void release() {
        this.mAdapter.unregisterDataSetObserver(this);
        for (int i = 0; i < this.mRowItems.getChildCount(); i++) {
            View childAt = this.mRowItems.getChildAt(i);
            if (childAt.getTag() instanceof SettingDialogItem) {
                ((SettingDialogItem) childAt.getTag()).setClickable(false);
            }
        }
    }

    @Override // android.database.DataSetObserver
    public void onChanged() {
        fetchItems();
    }

    @Override // android.database.DataSetObserver
    public void onInvalidated() {
        fetchItems();
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsDialogScrollView$ContentArrange
    protected int computeScrollOffset() {
        int i = 0;
        int iDimenToPixel = this.mTitle == null ? 0 : this.this$0.dimenToPixel(2131165586);
        int i2 = this.this$0.mParams.itemHeight;
        int iDimenToPixel2 = this.this$0.dimenToPixel(2131165588);
        int iDimenToPixel3 = this.this$0.dimenToPixel(2131165613);
        int i3 = 0;
        while (i < this.mAdapter.getCount() && !((SettingItem) this.mAdapter.getItem(i)).isSelected()) {
            i3 += i == 0 ? iDimenToPixel + i2 : i2 + iDimenToPixel2;
            i++;
        }
        return i3 + iDimenToPixel3;
    }
}

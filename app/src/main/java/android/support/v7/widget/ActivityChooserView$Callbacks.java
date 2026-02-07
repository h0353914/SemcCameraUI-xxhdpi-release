package android.support.v7.widget;

import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.View$OnLongClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.PopupWindow$OnDismissListener;

/* JADX INFO: loaded from: classes.dex */
class ActivityChooserView$Callbacks implements AdapterView$OnItemClickListener, View$OnClickListener, View$OnLongClickListener, PopupWindow$OnDismissListener {
    final /* synthetic */ ActivityChooserView this$0;

    ActivityChooserView$Callbacks(ActivityChooserView activityChooserView) {
        this.this$0 = activityChooserView;
    }

    @Override // android.widget.AdapterView$OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        switch (((ActivityChooserView$ActivityChooserViewAdapter) adapterView.getAdapter()).getItemViewType(i)) {
            case 0:
                this.this$0.dismissPopup();
                if (this.this$0.mIsSelectingDefaultActivity) {
                    if (i > 0) {
                        this.this$0.mAdapter.getDataModel().setDefaultActivity(i);
                        return;
                    }
                    return;
                }
                if (!this.this$0.mAdapter.getShowDefaultActivity()) {
                    i++;
                }
                Intent intentChooseActivity = this.this$0.mAdapter.getDataModel().chooseActivity(i);
                if (intentChooseActivity != null) {
                    intentChooseActivity.addFlags(524288);
                    this.this$0.getContext().startActivity(intentChooseActivity);
                    return;
                }
                return;
            case 1:
                this.this$0.showPopupUnchecked(Integer.MAX_VALUE);
                return;
            default:
                throw new IllegalArgumentException();
        }
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        if (view == this.this$0.mDefaultActivityButton) {
            this.this$0.dismissPopup();
            Intent intentChooseActivity = this.this$0.mAdapter.getDataModel().chooseActivity(this.this$0.mAdapter.getDataModel().getActivityIndex(this.this$0.mAdapter.getDefaultActivity()));
            if (intentChooseActivity != null) {
                intentChooseActivity.addFlags(524288);
                this.this$0.getContext().startActivity(intentChooseActivity);
                return;
            }
            return;
        }
        if (view == this.this$0.mExpandActivityOverflowButton) {
            this.this$0.mIsSelectingDefaultActivity = false;
            this.this$0.showPopupUnchecked(this.this$0.mInitialActivityCount);
            return;
        }
        throw new IllegalArgumentException();
    }

    @Override // android.view.View$OnLongClickListener
    public boolean onLongClick(View view) {
        if (view == this.this$0.mDefaultActivityButton) {
            if (this.this$0.mAdapter.getCount() > 0) {
                this.this$0.mIsSelectingDefaultActivity = true;
                this.this$0.showPopupUnchecked(this.this$0.mInitialActivityCount);
            }
            return true;
        }
        throw new IllegalArgumentException();
    }

    @Override // android.widget.PopupWindow$OnDismissListener
    public void onDismiss() {
        notifyOnDismissListener();
        if (this.this$0.mProvider != null) {
            this.this$0.mProvider.subUiVisibilityChanged(false);
        }
    }

    private void notifyOnDismissListener() {
        if (this.this$0.mOnDismissListener != null) {
            this.this$0.mOnDismissListener.onDismiss();
        }
    }
}

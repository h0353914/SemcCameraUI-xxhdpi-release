package android.support.v7.widget;

import android.widget.PopupWindow$OnDismissListener;

/* JADX INFO: loaded from: classes.dex */
class PopupMenu$2 implements PopupWindow$OnDismissListener {
    final /* synthetic */ PopupMenu this$0;

    PopupMenu$2(PopupMenu popupMenu) {
        this.this$0 = popupMenu;
    }

    @Override // android.widget.PopupWindow$OnDismissListener
    public void onDismiss() {
        if (this.this$0.mOnDismissListener != null) {
            this.this$0.mOnDismissListener.onDismiss(this.this$0);
        }
    }
}

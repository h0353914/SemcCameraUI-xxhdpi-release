package android.support.v7.widget;

import android.view.ViewTreeObserver$OnGlobalLayoutListener;

/* JADX INFO: loaded from: classes.dex */
class AppCompatSpinner$DropdownPopup$2 implements ViewTreeObserver$OnGlobalLayoutListener {
    final /* synthetic */ AppCompatSpinner$DropdownPopup this$1;

    AppCompatSpinner$DropdownPopup$2(AppCompatSpinner$DropdownPopup appCompatSpinner$DropdownPopup) {
        this.this$1 = appCompatSpinner$DropdownPopup;
    }

    @Override // android.view.ViewTreeObserver$OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (!this.this$1.isVisibleToUser(this.this$1.this$0)) {
            this.this$1.dismiss();
        } else {
            this.this$1.computeContentWidth();
            AppCompatSpinner$DropdownPopup.access$001(this.this$1);
        }
    }
}

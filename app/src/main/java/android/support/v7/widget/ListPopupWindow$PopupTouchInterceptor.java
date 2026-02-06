package android.support.v7.widget;

import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnTouchListener;

class ListPopupWindow$PopupTouchInterceptor implements View$OnTouchListener {
    final /* synthetic */ ListPopupWindow this$0;

    ListPopupWindow$PopupTouchInterceptor(ListPopupWindow listPopupWindow) {
        this.this$0 = listPopupWindow;
    }

    @Override // android.view.View$OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (action == 0 && this.this$0.mPopup != null && this.this$0.mPopup.isShowing() && x >= 0 && x < this.this$0.mPopup.getWidth() && y >= 0 && y < this.this$0.mPopup.getHeight()) {
            this.this$0.mHandler.postDelayed(this.this$0.mResizePopupRunnable, 250L);
            return false;
        }
        if (action != 1) {
            return false;
        }
        this.this$0.mHandler.removeCallbacks(this.this$0.mResizePopupRunnable);
        return false;
    }
}

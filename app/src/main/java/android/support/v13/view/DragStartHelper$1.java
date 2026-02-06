package android.support.v13.view;

import android.view.View;
import android.view.View$OnLongClickListener;

class DragStartHelper$1 implements View$OnLongClickListener {
    final /* synthetic */ DragStartHelper this$0;

    DragStartHelper$1(DragStartHelper dragStartHelper) {
        this.this$0 = dragStartHelper;
    }

    @Override // android.view.View$OnLongClickListener
    public boolean onLongClick(View view) {
        return this.this$0.onLongClick(view);
    }
}

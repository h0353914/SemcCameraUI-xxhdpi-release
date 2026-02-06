package android.support.v7.widget;

import android.support.annotation.NonNull;
import android.view.MotionEvent;

public class RecyclerView$SimpleOnItemTouchListener implements RecyclerView$OnItemTouchListener {
    @Override // android.support.v7.widget.RecyclerView$OnItemTouchListener
    public boolean onInterceptTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
        return false;
    }

    @Override // android.support.v7.widget.RecyclerView$OnItemTouchListener
    public void onRequestDisallowInterceptTouchEvent(boolean z) {
    }

    @Override // android.support.v7.widget.RecyclerView$OnItemTouchListener
    public void onTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
    }
}

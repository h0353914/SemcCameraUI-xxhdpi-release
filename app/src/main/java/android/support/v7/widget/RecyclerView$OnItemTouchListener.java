package android.support.v7.widget;

import android.support.annotation.NonNull;
import android.view.MotionEvent;

public interface RecyclerView$OnItemTouchListener {
    boolean onInterceptTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent);

    void onRequestDisallowInterceptTouchEvent(boolean z);

    void onTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent);
}

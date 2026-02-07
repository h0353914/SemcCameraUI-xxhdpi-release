package android.support.v7.widget;

import android.support.annotation.NonNull;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
public interface RecyclerView$OnItemTouchListener {
    boolean onInterceptTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent);

    void onRequestDisallowInterceptTouchEvent(boolean z);

    void onTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent);
}

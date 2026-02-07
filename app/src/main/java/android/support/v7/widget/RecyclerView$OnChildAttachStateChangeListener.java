package android.support.v7.widget;

import android.support.annotation.NonNull;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public interface RecyclerView$OnChildAttachStateChangeListener {
    void onChildViewAttachedToWindow(@NonNull View view);

    void onChildViewDetachedFromWindow(@NonNull View view);
}

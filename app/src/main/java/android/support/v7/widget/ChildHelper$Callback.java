package android.support.v7.widget;

import android.view.View;
import android.view.ViewGroup$LayoutParams;

/* JADX INFO: loaded from: classes.dex */
interface ChildHelper$Callback {
    void addView(View view, int i);

    void attachViewToParent(View view, int i, ViewGroup$LayoutParams viewGroup$LayoutParams);

    void detachViewFromParent(int i);

    View getChildAt(int i);

    int getChildCount();

    RecyclerView$ViewHolder getChildViewHolder(View view);

    int indexOfChild(View view);

    void onEnteredHiddenState(View view);

    void onLeftHiddenState(View view);

    void removeAllViews();

    void removeViewAt(int i);
}

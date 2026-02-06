package android.support.v7.widget;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

interface ViewInfoStore$ProcessCallback {
    void processAppeared(RecyclerView$ViewHolder recyclerView$ViewHolder, @Nullable RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo, RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo2);

    void processDisappeared(RecyclerView$ViewHolder recyclerView$ViewHolder, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo, @Nullable RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo2);

    void processPersistent(RecyclerView$ViewHolder recyclerView$ViewHolder, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo2);

    void unused(RecyclerView$ViewHolder recyclerView$ViewHolder);
}

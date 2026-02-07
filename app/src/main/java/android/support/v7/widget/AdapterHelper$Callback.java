package android.support.v7.widget;

/* JADX INFO: loaded from: classes.dex */
interface AdapterHelper$Callback {
    RecyclerView$ViewHolder findViewHolder(int i);

    void markViewHoldersUpdated(int i, int i2, Object obj);

    void offsetPositionsForAdd(int i, int i2);

    void offsetPositionsForMove(int i, int i2);

    void offsetPositionsForRemovingInvisible(int i, int i2);

    void offsetPositionsForRemovingLaidOutOrNewView(int i, int i2);

    void onDispatchFirstPass(AdapterHelper$UpdateOp adapterHelper$UpdateOp);

    void onDispatchSecondPass(AdapterHelper$UpdateOp adapterHelper$UpdateOp);
}

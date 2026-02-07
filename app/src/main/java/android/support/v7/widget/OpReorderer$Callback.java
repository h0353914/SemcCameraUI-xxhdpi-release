package android.support.v7.widget;

/* JADX INFO: loaded from: classes.dex */
interface OpReorderer$Callback {
    AdapterHelper$UpdateOp obtainUpdateOp(int i, int i2, int i3, Object obj);

    void recycleUpdateOp(AdapterHelper$UpdateOp adapterHelper$UpdateOp);
}

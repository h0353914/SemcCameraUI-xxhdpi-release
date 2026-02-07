package android.support.v7.widget;

/* JADX INFO: loaded from: classes.dex */
class DefaultItemAnimator$ChangeInfo {
    public int fromX;
    public int fromY;
    public RecyclerView$ViewHolder newHolder;
    public RecyclerView$ViewHolder oldHolder;
    public int toX;
    public int toY;

    private DefaultItemAnimator$ChangeInfo(RecyclerView$ViewHolder recyclerView$ViewHolder, RecyclerView$ViewHolder recyclerView$ViewHolder2) {
        this.oldHolder = recyclerView$ViewHolder;
        this.newHolder = recyclerView$ViewHolder2;
    }

    DefaultItemAnimator$ChangeInfo(RecyclerView$ViewHolder recyclerView$ViewHolder, RecyclerView$ViewHolder recyclerView$ViewHolder2, int i, int i2, int i3, int i4) {
        this(recyclerView$ViewHolder, recyclerView$ViewHolder2);
        this.fromX = i;
        this.fromY = i2;
        this.toX = i3;
        this.toY = i4;
    }

    public String toString() {
        return "ChangeInfo{oldHolder=" + this.oldHolder + ", newHolder=" + this.newHolder + ", fromX=" + this.fromX + ", fromY=" + this.fromY + ", toX=" + this.toX + ", toY=" + this.toY + '}';
    }
}

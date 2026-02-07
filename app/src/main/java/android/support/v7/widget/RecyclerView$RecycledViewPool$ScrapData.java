package android.support.v7.widget;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class RecyclerView$RecycledViewPool$ScrapData {
    final ArrayList<RecyclerView$ViewHolder> mScrapHeap = new ArrayList<>();
    int mMaxScrap = 5;
    long mCreateRunningAverageNs = 0;
    long mBindRunningAverageNs = 0;

    RecyclerView$RecycledViewPool$ScrapData() {
    }
}

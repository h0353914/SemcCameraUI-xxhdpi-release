package android.support.v7.widget;

import android.support.annotation.Nullable;
import android.util.SparseArray;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class RecyclerView$RecycledViewPool {
    private static final int DEFAULT_MAX_SCRAP = 5;
    SparseArray<RecyclerView$RecycledViewPool$ScrapData> mScrap = new SparseArray<>();
    private int mAttachCount = 0;

    public void clear() {
        for (int i = 0; i < this.mScrap.size(); i++) {
            this.mScrap.valueAt(i).mScrapHeap.clear();
        }
    }

    public void setMaxRecycledViews(int i, int i2) {
        RecyclerView$RecycledViewPool$ScrapData scrapDataForType = getScrapDataForType(i);
        scrapDataForType.mMaxScrap = i2;
        ArrayList<RecyclerView$ViewHolder> arrayList = scrapDataForType.mScrapHeap;
        while (arrayList.size() > i2) {
            arrayList.remove(arrayList.size() - 1);
        }
    }

    public int getRecycledViewCount(int i) {
        return getScrapDataForType(i).mScrapHeap.size();
    }

    @Nullable
    public RecyclerView$ViewHolder getRecycledView(int i) {
        RecyclerView$RecycledViewPool$ScrapData recyclerView$RecycledViewPool$ScrapData = this.mScrap.get(i);
        if (recyclerView$RecycledViewPool$ScrapData == null || recyclerView$RecycledViewPool$ScrapData.mScrapHeap.isEmpty()) {
            return null;
        }
        return recyclerView$RecycledViewPool$ScrapData.mScrapHeap.remove(r0.size() - 1);
    }

    int size() {
        int size = 0;
        for (int i = 0; i < this.mScrap.size(); i++) {
            ArrayList<RecyclerView$ViewHolder> arrayList = this.mScrap.valueAt(i).mScrapHeap;
            if (arrayList != null) {
                size += arrayList.size();
            }
        }
        return size;
    }

    public void putRecycledView(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        int itemViewType = recyclerView$ViewHolder.getItemViewType();
        ArrayList<RecyclerView$ViewHolder> arrayList = getScrapDataForType(itemViewType).mScrapHeap;
        if (this.mScrap.get(itemViewType).mMaxScrap <= arrayList.size()) {
            return;
        }
        recyclerView$ViewHolder.resetInternal();
        arrayList.add(recyclerView$ViewHolder);
    }

    long runningAverage(long j, long j2) {
        return j == 0 ? j2 : ((j / 4) * 3) + (j2 / 4);
    }

    void factorInCreateTime(int i, long j) {
        RecyclerView$RecycledViewPool$ScrapData scrapDataForType = getScrapDataForType(i);
        scrapDataForType.mCreateRunningAverageNs = runningAverage(scrapDataForType.mCreateRunningAverageNs, j);
    }

    void factorInBindTime(int i, long j) {
        RecyclerView$RecycledViewPool$ScrapData scrapDataForType = getScrapDataForType(i);
        scrapDataForType.mBindRunningAverageNs = runningAverage(scrapDataForType.mBindRunningAverageNs, j);
    }

    boolean willCreateInTime(int i, long j, long j2) {
        long j3 = getScrapDataForType(i).mCreateRunningAverageNs;
        return j3 == 0 || j + j3 < j2;
    }

    boolean willBindInTime(int i, long j, long j2) {
        long j3 = getScrapDataForType(i).mBindRunningAverageNs;
        return j3 == 0 || j + j3 < j2;
    }

    void attach() {
        this.mAttachCount++;
    }

    void detach() {
        this.mAttachCount--;
    }

    void onAdapterChanged(RecyclerView$Adapter recyclerView$Adapter, RecyclerView$Adapter recyclerView$Adapter2, boolean z) {
        if (recyclerView$Adapter != null) {
            detach();
        }
        if (!z && this.mAttachCount == 0) {
            clear();
        }
        if (recyclerView$Adapter2 != null) {
            attach();
        }
    }

    private RecyclerView$RecycledViewPool$ScrapData getScrapDataForType(int i) {
        RecyclerView$RecycledViewPool$ScrapData recyclerView$RecycledViewPool$ScrapData = this.mScrap.get(i);
        if (recyclerView$RecycledViewPool$ScrapData != null) {
            return recyclerView$RecycledViewPool$ScrapData;
        }
        RecyclerView$RecycledViewPool$ScrapData recyclerView$RecycledViewPool$ScrapData2 = new RecyclerView$RecycledViewPool$ScrapData();
        this.mScrap.put(i, recyclerView$RecycledViewPool$ScrapData2);
        return recyclerView$RecycledViewPool$ScrapData2;
    }
}

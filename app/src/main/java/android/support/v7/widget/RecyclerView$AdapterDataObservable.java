package android.support.v7.widget;

import android.database.Observable;
import android.support.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
class RecyclerView$AdapterDataObservable extends Observable<RecyclerView$AdapterDataObserver> {
    RecyclerView$AdapterDataObservable() {
    }

    public boolean hasObservers() {
        return !this.mObservers.isEmpty();
    }

    public void notifyChanged() {
        for (int size = this.mObservers.size() - 1; size >= 0; size--) {
            ((RecyclerView$AdapterDataObserver) this.mObservers.get(size)).onChanged();
        }
    }

    public void notifyItemRangeChanged(int i, int i2) {
        notifyItemRangeChanged(i, i2, null);
    }

    public void notifyItemRangeChanged(int i, int i2, @Nullable Object obj) {
        for (int size = this.mObservers.size() - 1; size >= 0; size--) {
            ((RecyclerView$AdapterDataObserver) this.mObservers.get(size)).onItemRangeChanged(i, i2, obj);
        }
    }

    public void notifyItemRangeInserted(int i, int i2) {
        for (int size = this.mObservers.size() - 1; size >= 0; size--) {
            ((RecyclerView$AdapterDataObserver) this.mObservers.get(size)).onItemRangeInserted(i, i2);
        }
    }

    public void notifyItemRangeRemoved(int i, int i2) {
        for (int size = this.mObservers.size() - 1; size >= 0; size--) {
            ((RecyclerView$AdapterDataObserver) this.mObservers.get(size)).onItemRangeRemoved(i, i2);
        }
    }

    public void notifyItemMoved(int i, int i2) {
        for (int size = this.mObservers.size() - 1; size >= 0; size--) {
            ((RecyclerView$AdapterDataObserver) this.mObservers.get(size)).onItemRangeMoved(i, i2, 1);
        }
    }
}

package android.support.v7.widget;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.os.TraceCompat;
import android.support.v7.widget.RecyclerView$ViewHolder;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import java.util.List;

public abstract class RecyclerView$Adapter<VH extends RecyclerView$ViewHolder> {
    private final RecyclerView$AdapterDataObservable mObservable = new RecyclerView$AdapterDataObservable();
    private boolean mHasStableIds = false;

    public abstract int getItemCount();

    public long getItemId(int i) {
        return -1L;
    }

    public int getItemViewType(int i) {
        return 0;
    }

    public void onAttachedToRecyclerView(@NonNull RecyclerView recyclerView) {
    }

    public abstract void onBindViewHolder(@NonNull VH vh, int i);

    @NonNull
    public abstract VH onCreateViewHolder(@NonNull ViewGroup viewGroup, int i);

    public void onDetachedFromRecyclerView(@NonNull RecyclerView recyclerView) {
    }

    public boolean onFailedToRecycleView(@NonNull VH vh) {
        return false;
    }

    public void onViewAttachedToWindow(@NonNull VH vh) {
    }

    public void onViewDetachedFromWindow(@NonNull VH vh) {
    }

    public void onViewRecycled(@NonNull VH vh) {
    }

    public void onBindViewHolder(@NonNull VH vh, int i, @NonNull List<Object> list) {
        onBindViewHolder(vh, i);
    }

    @NonNull
    public final VH createViewHolder(@NonNull ViewGroup viewGroup, int i) {
        try {
            TraceCompat.beginSection("RV CreateView");
            VH vh = (VH) onCreateViewHolder(viewGroup, i);
            if (vh.itemView.getParent() != null) {
                throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
            }
            vh.mItemViewType = i;
            return vh;
        } finally {
            TraceCompat.endSection();
        }
    }

    public final void bindViewHolder(@NonNull VH vh, int i) {
        vh.mPosition = i;
        if (hasStableIds()) {
            vh.mItemId = getItemId(i);
        }
        vh.setFlags(1, 519);
        TraceCompat.beginSection("RV OnBindView");
        onBindViewHolder(vh, i, vh.getUnmodifiedPayloads());
        vh.clearPayload();
        ViewGroup$LayoutParams layoutParams = vh.itemView.getLayoutParams();
        if (layoutParams instanceof RecyclerView$LayoutParams) {
            ((RecyclerView$LayoutParams) layoutParams).mInsetsDirty = true;
        }
        TraceCompat.endSection();
    }

    public void setHasStableIds(boolean z) {
        if (hasObservers()) {
            throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
        }
        this.mHasStableIds = z;
    }

    public final boolean hasStableIds() {
        return this.mHasStableIds;
    }

    public final boolean hasObservers() {
        return this.mObservable.hasObservers();
    }

    public void registerAdapterDataObserver(@NonNull RecyclerView$AdapterDataObserver recyclerView$AdapterDataObserver) {
        this.mObservable.registerObserver(recyclerView$AdapterDataObserver);
    }

    public void unregisterAdapterDataObserver(@NonNull RecyclerView$AdapterDataObserver recyclerView$AdapterDataObserver) {
        this.mObservable.unregisterObserver(recyclerView$AdapterDataObserver);
    }

    public final void notifyDataSetChanged() {
        this.mObservable.notifyChanged();
    }

    public final void notifyItemChanged(int i) {
        this.mObservable.notifyItemRangeChanged(i, 1);
    }

    public final void notifyItemChanged(int i, @Nullable Object obj) {
        this.mObservable.notifyItemRangeChanged(i, 1, obj);
    }

    public final void notifyItemRangeChanged(int i, int i2) {
        this.mObservable.notifyItemRangeChanged(i, i2);
    }

    public final void notifyItemRangeChanged(int i, int i2, @Nullable Object obj) {
        this.mObservable.notifyItemRangeChanged(i, i2, obj);
    }

    public final void notifyItemInserted(int i) {
        this.mObservable.notifyItemRangeInserted(i, 1);
    }

    public final void notifyItemMoved(int i, int i2) {
        this.mObservable.notifyItemMoved(i, i2);
    }

    public final void notifyItemRangeInserted(int i, int i2) {
        this.mObservable.notifyItemRangeInserted(i, i2);
    }

    public final void notifyItemRemoved(int i) {
        this.mObservable.notifyItemRangeRemoved(i, 1);
    }

    public final void notifyItemRangeRemoved(int i, int i2) {
        this.mObservable.notifyItemRangeRemoved(i, i2);
    }
}

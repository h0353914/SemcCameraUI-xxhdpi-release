package android.support.v7.widget;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class RecyclerView$ItemAnimator {
    public static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
    public static final int FLAG_CHANGED = 2;
    public static final int FLAG_INVALIDATED = 4;
    public static final int FLAG_MOVED = 2048;
    public static final int FLAG_REMOVED = 8;
    private RecyclerView$ItemAnimator$ItemAnimatorListener mListener = null;
    private ArrayList<RecyclerView$ItemAnimator$ItemAnimatorFinishedListener> mFinishedListeners = new ArrayList<>();
    private long mAddDuration = 120;
    private long mRemoveDuration = 120;
    private long mMoveDuration = 250;
    private long mChangeDuration = 250;

    public abstract boolean animateAppearance(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, @Nullable RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo2);

    public abstract boolean animateChange(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder2, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo2);

    public abstract boolean animateDisappearance(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo, @Nullable RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo2);

    public abstract boolean animatePersistence(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo2);

    public boolean canReuseUpdatedViewHolder(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        return true;
    }

    public abstract void endAnimation(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder);

    public abstract void endAnimations();

    public abstract boolean isRunning();

    public void onAnimationFinished(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
    }

    public void onAnimationStarted(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
    }

    public abstract void runPendingAnimations();

    public long getMoveDuration() {
        return this.mMoveDuration;
    }

    public void setMoveDuration(long j) {
        this.mMoveDuration = j;
    }

    public long getAddDuration() {
        return this.mAddDuration;
    }

    public void setAddDuration(long j) {
        this.mAddDuration = j;
    }

    public long getRemoveDuration() {
        return this.mRemoveDuration;
    }

    public void setRemoveDuration(long j) {
        this.mRemoveDuration = j;
    }

    public long getChangeDuration() {
        return this.mChangeDuration;
    }

    public void setChangeDuration(long j) {
        this.mChangeDuration = j;
    }

    void setListener(RecyclerView$ItemAnimator$ItemAnimatorListener recyclerView$ItemAnimator$ItemAnimatorListener) {
        this.mListener = recyclerView$ItemAnimator$ItemAnimatorListener;
    }

    @NonNull
    public RecyclerView$ItemAnimator$ItemHolderInfo recordPreLayoutInformation(@NonNull RecyclerView$State recyclerView$State, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, int i, @NonNull List<Object> list) {
        return obtainHolderInfo().setFrom(recyclerView$ViewHolder);
    }

    @NonNull
    public RecyclerView$ItemAnimator$ItemHolderInfo recordPostLayoutInformation(@NonNull RecyclerView$State recyclerView$State, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        return obtainHolderInfo().setFrom(recyclerView$ViewHolder);
    }

    static int buildAdapterChangeFlagsForAnimations(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        int i = recyclerView$ViewHolder.mFlags & 14;
        if (recyclerView$ViewHolder.isInvalid()) {
            return 4;
        }
        if ((i & 4) != 0) {
            return i;
        }
        int oldPosition = recyclerView$ViewHolder.getOldPosition();
        int adapterPosition = recyclerView$ViewHolder.getAdapterPosition();
        return (oldPosition == -1 || adapterPosition == -1 || oldPosition == adapterPosition) ? i : i | 2048;
    }

    public final void dispatchAnimationFinished(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        onAnimationFinished(recyclerView$ViewHolder);
        if (this.mListener != null) {
            this.mListener.onAnimationFinished(recyclerView$ViewHolder);
        }
    }

    public final void dispatchAnimationStarted(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        onAnimationStarted(recyclerView$ViewHolder);
    }

    public final boolean isRunning(@Nullable RecyclerView$ItemAnimator$ItemAnimatorFinishedListener recyclerView$ItemAnimator$ItemAnimatorFinishedListener) {
        boolean zIsRunning = isRunning();
        if (recyclerView$ItemAnimator$ItemAnimatorFinishedListener != null) {
            if (!zIsRunning) {
                recyclerView$ItemAnimator$ItemAnimatorFinishedListener.onAnimationsFinished();
            } else {
                this.mFinishedListeners.add(recyclerView$ItemAnimator$ItemAnimatorFinishedListener);
            }
        }
        return zIsRunning;
    }

    public boolean canReuseUpdatedViewHolder(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, @NonNull List<Object> list) {
        return canReuseUpdatedViewHolder(recyclerView$ViewHolder);
    }

    public final void dispatchAnimationsFinished() {
        int size = this.mFinishedListeners.size();
        for (int i = 0; i < size; i++) {
            this.mFinishedListeners.get(i).onAnimationsFinished();
        }
        this.mFinishedListeners.clear();
    }

    @NonNull
    public RecyclerView$ItemAnimator$ItemHolderInfo obtainHolderInfo() {
        return new RecyclerView$ItemAnimator$ItemHolderInfo();
    }
}

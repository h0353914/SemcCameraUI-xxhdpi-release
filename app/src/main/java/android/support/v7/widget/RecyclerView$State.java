package android.support.v7.widget;

import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
public class RecyclerView$State {
    static final int STEP_ANIMATIONS = 4;
    static final int STEP_LAYOUT = 2;
    static final int STEP_START = 1;
    private SparseArray<Object> mData;
    long mFocusedItemId;
    int mFocusedItemPosition;
    int mFocusedSubChildId;
    int mRemainingScrollHorizontal;
    int mRemainingScrollVertical;
    int mTargetPosition = -1;
    int mPreviousLayoutItemCount = 0;
    int mDeletedInvisibleItemCountSincePreviousLayout = 0;
    int mLayoutStep = 1;
    int mItemCount = 0;
    boolean mStructureChanged = false;
    boolean mInPreLayout = false;
    boolean mTrackOldChangeHolders = false;
    boolean mIsMeasuring = false;
    boolean mRunSimpleAnimations = false;
    boolean mRunPredictiveAnimations = false;

    void assertLayoutStep(int i) {
        if ((this.mLayoutStep & i) == 0) {
            throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i) + " but it is " + Integer.toBinaryString(this.mLayoutStep));
        }
    }

    RecyclerView$State reset() {
        this.mTargetPosition = -1;
        if (this.mData != null) {
            this.mData.clear();
        }
        this.mItemCount = 0;
        this.mStructureChanged = false;
        this.mIsMeasuring = false;
        return this;
    }

    void prepareForNestedPrefetch(RecyclerView$Adapter recyclerView$Adapter) {
        this.mLayoutStep = 1;
        this.mItemCount = recyclerView$Adapter.getItemCount();
        this.mInPreLayout = false;
        this.mTrackOldChangeHolders = false;
        this.mIsMeasuring = false;
    }

    public boolean isMeasuring() {
        return this.mIsMeasuring;
    }

    public boolean isPreLayout() {
        return this.mInPreLayout;
    }

    public boolean willRunPredictiveAnimations() {
        return this.mRunPredictiveAnimations;
    }

    public boolean willRunSimpleAnimations() {
        return this.mRunSimpleAnimations;
    }

    public void remove(int i) {
        if (this.mData == null) {
            return;
        }
        this.mData.remove(i);
    }

    public <T> T get(int i) {
        if (this.mData == null) {
            return null;
        }
        return (T) this.mData.get(i);
    }

    public void put(int i, Object obj) {
        if (this.mData == null) {
            this.mData = new SparseArray<>();
        }
        this.mData.put(i, obj);
    }

    public int getTargetScrollPosition() {
        return this.mTargetPosition;
    }

    public boolean hasTargetScrollPosition() {
        return this.mTargetPosition != -1;
    }

    public boolean didStructureChange() {
        return this.mStructureChanged;
    }

    public int getItemCount() {
        return this.mInPreLayout ? this.mPreviousLayoutItemCount - this.mDeletedInvisibleItemCountSincePreviousLayout : this.mItemCount;
    }

    public int getRemainingScrollHorizontal() {
        return this.mRemainingScrollHorizontal;
    }

    public int getRemainingScrollVertical() {
        return this.mRemainingScrollVertical;
    }

    public String toString() {
        return "State{mTargetPosition=" + this.mTargetPosition + ", mData=" + this.mData + ", mItemCount=" + this.mItemCount + ", mIsMeasuring=" + this.mIsMeasuring + ", mPreviousLayoutItemCount=" + this.mPreviousLayoutItemCount + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.mDeletedInvisibleItemCountSincePreviousLayout + ", mStructureChanged=" + this.mStructureChanged + ", mInPreLayout=" + this.mInPreLayout + ", mRunSimpleAnimations=" + this.mRunSimpleAnimations + ", mRunPredictiveAnimations=" + this.mRunPredictiveAnimations + '}';
    }
}

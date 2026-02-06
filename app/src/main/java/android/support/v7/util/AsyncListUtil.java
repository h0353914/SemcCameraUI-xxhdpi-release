package android.support.v7.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import android.util.SparseIntArray;

public class AsyncListUtil<T> {
    static final boolean DEBUG = false;
    static final String TAG = "AsyncListUtil";
    boolean mAllowScrollHints;
    final ThreadUtil$BackgroundCallback<T> mBackgroundProxy;
    final AsyncListUtil$DataCallback<T> mDataCallback;
    final ThreadUtil$MainThreadCallback<T> mMainThreadProxy;
    final Class<T> mTClass;
    final TileList<T> mTileList;
    final int mTileSize;
    final AsyncListUtil$ViewCallback mViewCallback;
    final int[] mTmpRange = new int[2];
    final int[] mPrevRange = new int[2];
    final int[] mTmpRangeExtended = new int[2];
    private int mScrollHint = 0;
    int mItemCount = 0;
    int mDisplayedGeneration = 0;
    int mRequestedGeneration = this.mDisplayedGeneration;
    final SparseIntArray mMissingPositions = new SparseIntArray();
    private final ThreadUtil$MainThreadCallback<T> mMainThreadCallback = new AsyncListUtil$1(this);
    private final ThreadUtil$BackgroundCallback<T> mBackgroundCallback = new AsyncListUtil$2(this);

    void log(String str, Object... objArr) {
        Log.d("AsyncListUtil", "[MAIN] " + String.format(str, objArr));
    }

    public AsyncListUtil(@NonNull Class<T> cls, int i, @NonNull AsyncListUtil$DataCallback<T> asyncListUtil$DataCallback, @NonNull AsyncListUtil$ViewCallback asyncListUtil$ViewCallback) {
        this.mTClass = cls;
        this.mTileSize = i;
        this.mDataCallback = asyncListUtil$DataCallback;
        this.mViewCallback = asyncListUtil$ViewCallback;
        this.mTileList = new TileList<>(this.mTileSize);
        MessageThreadUtil messageThreadUtil = new MessageThreadUtil();
        this.mMainThreadProxy = messageThreadUtil.getMainThreadProxy(this.mMainThreadCallback);
        this.mBackgroundProxy = messageThreadUtil.getBackgroundProxy(this.mBackgroundCallback);
        refresh();
    }

    private boolean isRefreshPending() {
        return this.mRequestedGeneration != this.mDisplayedGeneration;
    }

    public void onRangeChanged() {
        if (isRefreshPending()) {
            return;
        }
        updateRange();
        this.mAllowScrollHints = true;
    }

    public void refresh() {
        this.mMissingPositions.clear();
        ThreadUtil$BackgroundCallback<T> threadUtil$BackgroundCallback = this.mBackgroundProxy;
        int i = this.mRequestedGeneration + 1;
        this.mRequestedGeneration = i;
        threadUtil$BackgroundCallback.refresh(i);
    }

    @Nullable
    public T getItem(int i) {
        if (i < 0 || i >= this.mItemCount) {
            throw new IndexOutOfBoundsException(i + " is not within 0 and " + this.mItemCount);
        }
        T itemAt = this.mTileList.getItemAt(i);
        if (itemAt == null && !isRefreshPending()) {
            this.mMissingPositions.put(i, 0);
        }
        return itemAt;
    }

    public int getItemCount() {
        return this.mItemCount;
    }

    void updateRange() {
        this.mViewCallback.getItemRangeInto(this.mTmpRange);
        if (this.mTmpRange[0] > this.mTmpRange[1] || this.mTmpRange[0] < 0 || this.mTmpRange[1] >= this.mItemCount) {
            return;
        }
        if (!this.mAllowScrollHints || this.mTmpRange[0] > this.mPrevRange[1] || this.mPrevRange[0] > this.mTmpRange[1]) {
            this.mScrollHint = 0;
        } else if (this.mTmpRange[0] < this.mPrevRange[0]) {
            this.mScrollHint = 1;
        } else if (this.mTmpRange[0] > this.mPrevRange[0]) {
            this.mScrollHint = 2;
        }
        this.mPrevRange[0] = this.mTmpRange[0];
        this.mPrevRange[1] = this.mTmpRange[1];
        this.mViewCallback.extendRangeInto(this.mTmpRange, this.mTmpRangeExtended, this.mScrollHint);
        this.mTmpRangeExtended[0] = Math.min(this.mTmpRange[0], Math.max(this.mTmpRangeExtended[0], 0));
        this.mTmpRangeExtended[1] = Math.max(this.mTmpRange[1], Math.min(this.mTmpRangeExtended[1], this.mItemCount - 1));
        this.mBackgroundProxy.updateRange(this.mTmpRange[0], this.mTmpRange[1], this.mTmpRangeExtended[0], this.mTmpRangeExtended[1], this.mScrollHint);
    }
}

package android.support.v7.widget;

import android.util.Log;
import android.view.View;
import java.util.List;

class LinearLayoutManager$LayoutState {
    static final int INVALID_LAYOUT = Integer.MIN_VALUE;
    static final int ITEM_DIRECTION_HEAD = -1;
    static final int ITEM_DIRECTION_TAIL = 1;
    static final int LAYOUT_END = 1;
    static final int LAYOUT_START = -1;
    static final int SCROLLING_OFFSET_NaN = Integer.MIN_VALUE;
    static final String TAG = "LLM#LayoutState";
    int mAvailable;
    int mCurrentPosition;
    boolean mInfinite;
    int mItemDirection;
    int mLastScrollDelta;
    int mLayoutDirection;
    int mOffset;
    int mScrollingOffset;
    boolean mRecycle = true;
    int mExtra = 0;
    boolean mIsPreLayout = false;
    List<RecyclerView$ViewHolder> mScrapList = null;

    LinearLayoutManager$LayoutState() {
    }

    boolean hasMore(RecyclerView$State recyclerView$State) {
        return this.mCurrentPosition >= 0 && this.mCurrentPosition < recyclerView$State.getItemCount();
    }

    View next(RecyclerView$Recycler recyclerView$Recycler) {
        if (this.mScrapList != null) {
            return nextViewFromScrapList();
        }
        View viewForPosition = recyclerView$Recycler.getViewForPosition(this.mCurrentPosition);
        this.mCurrentPosition += this.mItemDirection;
        return viewForPosition;
    }

    private View nextViewFromScrapList() {
        int size = this.mScrapList.size();
        for (int i = 0; i < size; i++) {
            View view = this.mScrapList.get(i).itemView;
            RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
            if (!recyclerView$LayoutParams.isItemRemoved() && this.mCurrentPosition == recyclerView$LayoutParams.getViewLayoutPosition()) {
                assignPositionFromScrapList(view);
                return view;
            }
        }
        return null;
    }

    public void assignPositionFromScrapList() {
        assignPositionFromScrapList(null);
    }

    public void assignPositionFromScrapList(View view) {
        View viewNextViewInLimitedList = nextViewInLimitedList(view);
        if (viewNextViewInLimitedList == null) {
            this.mCurrentPosition = -1;
        } else {
            this.mCurrentPosition = ((RecyclerView$LayoutParams) viewNextViewInLimitedList.getLayoutParams()).getViewLayoutPosition();
        }
    }

    public View nextViewInLimitedList(View view) {
        int viewLayoutPosition;
        int size = this.mScrapList.size();
        View view2 = null;
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < size; i2++) {
            View view3 = this.mScrapList.get(i2).itemView;
            RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view3.getLayoutParams();
            if (view3 != view && !recyclerView$LayoutParams.isItemRemoved() && (viewLayoutPosition = (recyclerView$LayoutParams.getViewLayoutPosition() - this.mCurrentPosition) * this.mItemDirection) >= 0 && viewLayoutPosition < i) {
                if (viewLayoutPosition == 0) {
                    return view3;
                }
                view2 = view3;
                i = viewLayoutPosition;
            }
        }
        return view2;
    }

    void log() {
        Log.d("LLM#LayoutState", "avail:" + this.mAvailable + ", ind:" + this.mCurrentPosition + ", dir:" + this.mItemDirection + ", offset:" + this.mOffset + ", layoutDir:" + this.mLayoutDirection);
    }
}

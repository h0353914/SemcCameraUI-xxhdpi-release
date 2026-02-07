package android.support.v7.widget.helper;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build$VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.view.GestureDetectorCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.recyclerview.R$dimen;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView$ChildDrawingOrderCallback;
import android.support.v7.widget.RecyclerView$ItemDecoration;
import android.support.v7.widget.RecyclerView$LayoutManager;
import android.support.v7.widget.RecyclerView$OnChildAttachStateChangeListener;
import android.support.v7.widget.RecyclerView$OnItemTouchListener;
import android.support.v7.widget.RecyclerView$State;
import android.support.v7.widget.RecyclerView$ViewHolder;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ItemTouchHelper extends RecyclerView$ItemDecoration implements RecyclerView$OnChildAttachStateChangeListener {
    static final int ACTION_MODE_DRAG_MASK = 16711680;
    private static final int ACTION_MODE_IDLE_MASK = 255;
    static final int ACTION_MODE_SWIPE_MASK = 65280;
    public static final int ACTION_STATE_DRAG = 2;
    public static final int ACTION_STATE_IDLE = 0;
    public static final int ACTION_STATE_SWIPE = 1;
    private static final int ACTIVE_POINTER_ID_NONE = -1;
    public static final int ANIMATION_TYPE_DRAG = 8;
    public static final int ANIMATION_TYPE_SWIPE_CANCEL = 4;
    public static final int ANIMATION_TYPE_SWIPE_SUCCESS = 2;
    private static final boolean DEBUG = false;
    static final int DIRECTION_FLAG_COUNT = 8;
    public static final int DOWN = 2;
    public static final int END = 32;
    public static final int LEFT = 4;
    private static final int PIXELS_PER_SECOND = 1000;
    public static final int RIGHT = 8;
    public static final int START = 16;
    private static final String TAG = "ItemTouchHelper";
    public static final int UP = 1;

    @NonNull
    ItemTouchHelper$Callback mCallback;
    private List<Integer> mDistances;
    private long mDragScrollStartTimeInMs;
    float mDx;
    float mDy;
    GestureDetectorCompat mGestureDetector;
    float mInitialTouchX;
    float mInitialTouchY;
    private ItemTouchHelper$ItemTouchHelperGestureListener mItemTouchHelperGestureListener;
    private float mMaxSwipeVelocity;
    RecyclerView mRecyclerView;
    int mSelectedFlags;
    private float mSelectedStartX;
    private float mSelectedStartY;
    private int mSlop;
    private List<RecyclerView$ViewHolder> mSwapTargets;
    private float mSwipeEscapeVelocity;
    private Rect mTmpRect;
    VelocityTracker mVelocityTracker;
    final List<View> mPendingCleanup = new ArrayList();
    private final float[] mTmpPosition = new float[2];
    RecyclerView$ViewHolder mSelected = null;
    int mActivePointerId = -1;
    private int mActionState = 0;
    List<ItemTouchHelper$RecoverAnimation> mRecoverAnimations = new ArrayList();
    final Runnable mScrollRunnable = new ItemTouchHelper$1(this);
    private RecyclerView$ChildDrawingOrderCallback mChildDrawingOrderCallback = null;
    View mOverdrawChild = null;
    int mOverdrawChildPosition = -1;
    private final RecyclerView$OnItemTouchListener mOnItemTouchListener = new ItemTouchHelper$2(this);

    @Override // android.support.v7.widget.RecyclerView$OnChildAttachStateChangeListener
    public void onChildViewAttachedToWindow(@NonNull View view) {
    }

    public ItemTouchHelper(@NonNull ItemTouchHelper$Callback itemTouchHelper$Callback) {
        this.mCallback = itemTouchHelper$Callback;
    }

    private static boolean hitTest(View view, float f, float f2, float f3, float f4) {
        return f >= f3 && f <= f3 + ((float) view.getWidth()) && f2 >= f4 && f2 <= f4 + ((float) view.getHeight());
    }

    public void attachToRecyclerView(@Nullable RecyclerView recyclerView) {
        if (this.mRecyclerView == recyclerView) {
            return;
        }
        if (this.mRecyclerView != null) {
            destroyCallbacks();
        }
        this.mRecyclerView = recyclerView;
        if (recyclerView != null) {
            Resources resources = recyclerView.getResources();
            this.mSwipeEscapeVelocity = resources.getDimension(R$dimen.item_touch_helper_swipe_escape_velocity);
            this.mMaxSwipeVelocity = resources.getDimension(R$dimen.item_touch_helper_swipe_escape_max_velocity);
            setupCallbacks();
        }
    }

    private void setupCallbacks() {
        this.mSlop = ViewConfiguration.get(this.mRecyclerView.getContext()).getScaledTouchSlop();
        this.mRecyclerView.addItemDecoration(this);
        this.mRecyclerView.addOnItemTouchListener(this.mOnItemTouchListener);
        this.mRecyclerView.addOnChildAttachStateChangeListener(this);
        startGestureDetection();
    }

    private void destroyCallbacks() {
        this.mRecyclerView.removeItemDecoration(this);
        this.mRecyclerView.removeOnItemTouchListener(this.mOnItemTouchListener);
        this.mRecyclerView.removeOnChildAttachStateChangeListener(this);
        for (int size = this.mRecoverAnimations.size() - 1; size >= 0; size--) {
            this.mCallback.clearView(this.mRecyclerView, this.mRecoverAnimations.get(0).mViewHolder);
        }
        this.mRecoverAnimations.clear();
        this.mOverdrawChild = null;
        this.mOverdrawChildPosition = -1;
        releaseVelocityTracker();
        stopGestureDetection();
    }

    private void startGestureDetection() {
        this.mItemTouchHelperGestureListener = new ItemTouchHelper$ItemTouchHelperGestureListener(this);
        this.mGestureDetector = new GestureDetectorCompat(this.mRecyclerView.getContext(), this.mItemTouchHelperGestureListener);
    }

    private void stopGestureDetection() {
        if (this.mItemTouchHelperGestureListener != null) {
            this.mItemTouchHelperGestureListener.doNotReactToLongPress();
            this.mItemTouchHelperGestureListener = null;
        }
        if (this.mGestureDetector != null) {
            this.mGestureDetector = null;
        }
    }

    private void getSelectedDxDy(float[] fArr) {
        if ((this.mSelectedFlags & 12) != 0) {
            fArr[0] = (this.mSelectedStartX + this.mDx) - this.mSelected.itemView.getLeft();
        } else {
            fArr[0] = this.mSelected.itemView.getTranslationX();
        }
        if ((this.mSelectedFlags & 3) != 0) {
            fArr[1] = (this.mSelectedStartY + this.mDy) - this.mSelected.itemView.getTop();
        } else {
            fArr[1] = this.mSelected.itemView.getTranslationY();
        }
    }

    @Override // android.support.v7.widget.RecyclerView$ItemDecoration
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView$State recyclerView$State) {
        float f;
        float f2;
        if (this.mSelected != null) {
            getSelectedDxDy(this.mTmpPosition);
            float f3 = this.mTmpPosition[0];
            f2 = this.mTmpPosition[1];
            f = f3;
        } else {
            f = 0.0f;
            f2 = 0.0f;
        }
        this.mCallback.onDrawOver(canvas, recyclerView, this.mSelected, this.mRecoverAnimations, this.mActionState, f, f2);
    }

    @Override // android.support.v7.widget.RecyclerView$ItemDecoration
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView$State recyclerView$State) {
        float f;
        float f2;
        this.mOverdrawChildPosition = -1;
        if (this.mSelected != null) {
            getSelectedDxDy(this.mTmpPosition);
            float f3 = this.mTmpPosition[0];
            f2 = this.mTmpPosition[1];
            f = f3;
        } else {
            f = 0.0f;
            f2 = 0.0f;
        }
        this.mCallback.onDraw(canvas, recyclerView, this.mSelected, this.mRecoverAnimations, this.mActionState, f, f2);
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0124  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void select(@Nullable RecyclerView$ViewHolder recyclerView$ViewHolder, int i) {
        boolean z;
        boolean z2;
        float fSignum;
        float fSignum2;
        if (recyclerView$ViewHolder == this.mSelected && i == this.mActionState) {
            return;
        }
        this.mDragScrollStartTimeInMs = Long.MIN_VALUE;
        int i2 = this.mActionState;
        endRecoverAnimation(recyclerView$ViewHolder, true);
        this.mActionState = i;
        if (i == 2) {
            if (recyclerView$ViewHolder == null) {
                throw new IllegalArgumentException("Must pass a ViewHolder when dragging");
            }
            this.mOverdrawChild = recyclerView$ViewHolder.itemView;
            addChildDrawingOrderCallback();
        }
        int i3 = (1 << ((8 * i) + 8)) - 1;
        if (this.mSelected != null) {
            RecyclerView$ViewHolder recyclerView$ViewHolder2 = this.mSelected;
            if (recyclerView$ViewHolder2.itemView.getParent() != null) {
                int iSwipeIfNecessary = i2 == 2 ? 0 : swipeIfNecessary(recyclerView$ViewHolder2);
                releaseVelocityTracker();
                if (iSwipeIfNecessary == 4 || iSwipeIfNecessary == 8 || iSwipeIfNecessary == 16 || iSwipeIfNecessary == 32) {
                    fSignum = 0.0f;
                    fSignum2 = Math.signum(this.mDx) * this.mRecyclerView.getWidth();
                } else {
                    switch (iSwipeIfNecessary) {
                        case 1:
                        case 2:
                            fSignum2 = 0.0f;
                            fSignum = Math.signum(this.mDy) * this.mRecyclerView.getHeight();
                            break;
                        default:
                            fSignum2 = 0.0f;
                            fSignum = 0.0f;
                            break;
                    }
                }
                int i4 = i2 == 2 ? 8 : iSwipeIfNecessary > 0 ? 2 : 4;
                getSelectedDxDy(this.mTmpPosition);
                float f = this.mTmpPosition[0];
                float f2 = this.mTmpPosition[1];
                ItemTouchHelper$3 itemTouchHelper$3 = new ItemTouchHelper$3(this, recyclerView$ViewHolder2, i4, i2, f, f2, fSignum2, fSignum, iSwipeIfNecessary, recyclerView$ViewHolder2);
                itemTouchHelper$3.setDuration(this.mCallback.getAnimationDuration(this.mRecyclerView, i4, fSignum2 - f, fSignum - f2));
                this.mRecoverAnimations.add(itemTouchHelper$3);
                itemTouchHelper$3.start();
                z = true;
            } else {
                removeChildDrawingOrderCallbackIfNecessary(recyclerView$ViewHolder2.itemView);
                this.mCallback.clearView(this.mRecyclerView, recyclerView$ViewHolder2);
                z = false;
            }
            this.mSelected = null;
        } else {
            z = false;
        }
        if (recyclerView$ViewHolder != null) {
            this.mSelectedFlags = (this.mCallback.getAbsoluteMovementFlags(this.mRecyclerView, recyclerView$ViewHolder) & i3) >> (this.mActionState * 8);
            this.mSelectedStartX = recyclerView$ViewHolder.itemView.getLeft();
            this.mSelectedStartY = recyclerView$ViewHolder.itemView.getTop();
            this.mSelected = recyclerView$ViewHolder;
            if (i == 2) {
                z2 = false;
                this.mSelected.itemView.performHapticFeedback(0);
            } else {
                z2 = false;
            }
        }
        ViewParent parent = this.mRecyclerView.getParent();
        if (parent != null) {
            if (this.mSelected != null) {
                z2 = true;
            }
            parent.requestDisallowInterceptTouchEvent(z2);
        }
        if (!z) {
            this.mRecyclerView.getLayoutManager().requestSimpleAnimationsInNextLayout();
        }
        this.mCallback.onSelectedChanged(this.mSelected, this.mActionState);
        this.mRecyclerView.invalidate();
    }

    void postDispatchSwipe(ItemTouchHelper$RecoverAnimation itemTouchHelper$RecoverAnimation, int i) {
        this.mRecyclerView.post(new ItemTouchHelper$4(this, itemTouchHelper$RecoverAnimation, i));
    }

    boolean hasRunningRecoverAnim() {
        int size = this.mRecoverAnimations.size();
        for (int i = 0; i < size; i++) {
            if (!this.mRecoverAnimations.get(i).mEnded) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    boolean scrollIfNecessary() {
        int iInterpolateOutOfBoundsScroll;
        int iInterpolateOutOfBoundsScroll2;
        int i;
        int width;
        if (this.mSelected == null) {
            this.mDragScrollStartTimeInMs = Long.MIN_VALUE;
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = this.mDragScrollStartTimeInMs == Long.MIN_VALUE ? 0L : jCurrentTimeMillis - this.mDragScrollStartTimeInMs;
        RecyclerView$LayoutManager layoutManager = this.mRecyclerView.getLayoutManager();
        if (this.mTmpRect == null) {
            this.mTmpRect = new Rect();
        }
        layoutManager.calculateItemDecorationsForChild(this.mSelected.itemView, this.mTmpRect);
        if (layoutManager.canScrollHorizontally()) {
            int i2 = (int) (this.mSelectedStartX + this.mDx);
            int paddingLeft = (i2 - this.mTmpRect.left) - this.mRecyclerView.getPaddingLeft();
            iInterpolateOutOfBoundsScroll = (this.mDx >= 0.0f || paddingLeft >= 0) ? (this.mDx <= 0.0f || (width = ((i2 + this.mSelected.itemView.getWidth()) + this.mTmpRect.right) - (this.mRecyclerView.getWidth() - this.mRecyclerView.getPaddingRight())) <= 0) ? 0 : width : paddingLeft;
        }
        if (layoutManager.canScrollVertically()) {
            int i3 = (int) (this.mSelectedStartY + this.mDy);
            int paddingTop = (i3 - this.mTmpRect.top) - this.mRecyclerView.getPaddingTop();
            if (this.mDy < 0.0f && paddingTop < 0) {
                iInterpolateOutOfBoundsScroll2 = paddingTop;
            } else if (this.mDy <= 0.0f || (iInterpolateOutOfBoundsScroll2 = ((i3 + this.mSelected.itemView.getHeight()) + this.mTmpRect.bottom) - (this.mRecyclerView.getHeight() - this.mRecyclerView.getPaddingBottom())) <= 0) {
                iInterpolateOutOfBoundsScroll2 = 0;
            }
        }
        if (iInterpolateOutOfBoundsScroll != 0) {
            iInterpolateOutOfBoundsScroll = this.mCallback.interpolateOutOfBoundsScroll(this.mRecyclerView, this.mSelected.itemView.getWidth(), iInterpolateOutOfBoundsScroll, this.mRecyclerView.getWidth(), j);
        }
        int i4 = iInterpolateOutOfBoundsScroll;
        if (iInterpolateOutOfBoundsScroll2 != 0) {
            i = i4;
            iInterpolateOutOfBoundsScroll2 = this.mCallback.interpolateOutOfBoundsScroll(this.mRecyclerView, this.mSelected.itemView.getHeight(), iInterpolateOutOfBoundsScroll2, this.mRecyclerView.getHeight(), j);
        } else {
            i = i4;
        }
        if (i != 0 || iInterpolateOutOfBoundsScroll2 != 0) {
            if (this.mDragScrollStartTimeInMs == Long.MIN_VALUE) {
                this.mDragScrollStartTimeInMs = jCurrentTimeMillis;
            }
            this.mRecyclerView.scrollBy(i, iInterpolateOutOfBoundsScroll2);
            return true;
        }
        this.mDragScrollStartTimeInMs = Long.MIN_VALUE;
        return false;
    }

    private List<RecyclerView$ViewHolder> findSwapTargets(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        RecyclerView$ViewHolder recyclerView$ViewHolder2 = recyclerView$ViewHolder;
        if (this.mSwapTargets == null) {
            this.mSwapTargets = new ArrayList();
            this.mDistances = new ArrayList();
        } else {
            this.mSwapTargets.clear();
            this.mDistances.clear();
        }
        int boundingBoxMargin = this.mCallback.getBoundingBoxMargin();
        int iRound = Math.round(this.mSelectedStartX + this.mDx) - boundingBoxMargin;
        int iRound2 = Math.round(this.mSelectedStartY + this.mDy) - boundingBoxMargin;
        int i = boundingBoxMargin * 2;
        int width = recyclerView$ViewHolder2.itemView.getWidth() + iRound + i;
        int height = recyclerView$ViewHolder2.itemView.getHeight() + iRound2 + i;
        int i2 = (iRound + width) / 2;
        int i3 = (iRound2 + height) / 2;
        RecyclerView$LayoutManager layoutManager = this.mRecyclerView.getLayoutManager();
        int childCount = layoutManager.getChildCount();
        int i4 = 0;
        while (i4 < childCount) {
            View childAt = layoutManager.getChildAt(i4);
            if (childAt != recyclerView$ViewHolder2.itemView && childAt.getBottom() >= iRound2 && childAt.getTop() <= height && childAt.getRight() >= iRound && childAt.getLeft() <= width) {
                RecyclerView$ViewHolder childViewHolder = this.mRecyclerView.getChildViewHolder(childAt);
                if (this.mCallback.canDropOver(this.mRecyclerView, this.mSelected, childViewHolder)) {
                    int iAbs = Math.abs(i2 - ((childAt.getLeft() + childAt.getRight()) / 2));
                    int iAbs2 = Math.abs(i3 - ((childAt.getTop() + childAt.getBottom()) / 2));
                    int i5 = (iAbs * iAbs) + (iAbs2 * iAbs2);
                    int size = this.mSwapTargets.size();
                    int i6 = 0;
                    for (int i7 = 0; i7 < size && i5 > this.mDistances.get(i7).intValue(); i7++) {
                        i6++;
                    }
                    this.mSwapTargets.add(i6, childViewHolder);
                    this.mDistances.add(i6, Integer.valueOf(i5));
                }
            }
            i4++;
            recyclerView$ViewHolder2 = recyclerView$ViewHolder;
        }
        return this.mSwapTargets;
    }

    void moveIfNecessary(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        if (!this.mRecyclerView.isLayoutRequested() && this.mActionState == 2) {
            float moveThreshold = this.mCallback.getMoveThreshold(recyclerView$ViewHolder);
            int i = (int) (this.mSelectedStartX + this.mDx);
            int i2 = (int) (this.mSelectedStartY + this.mDy);
            if (Math.abs(i2 - recyclerView$ViewHolder.itemView.getTop()) >= recyclerView$ViewHolder.itemView.getHeight() * moveThreshold || Math.abs(i - recyclerView$ViewHolder.itemView.getLeft()) >= recyclerView$ViewHolder.itemView.getWidth() * moveThreshold) {
                List<RecyclerView$ViewHolder> listFindSwapTargets = findSwapTargets(recyclerView$ViewHolder);
                if (listFindSwapTargets.size() == 0) {
                    return;
                }
                RecyclerView$ViewHolder recyclerView$ViewHolderChooseDropTarget = this.mCallback.chooseDropTarget(recyclerView$ViewHolder, listFindSwapTargets, i, i2);
                if (recyclerView$ViewHolderChooseDropTarget == null) {
                    this.mSwapTargets.clear();
                    this.mDistances.clear();
                    return;
                }
                int adapterPosition = recyclerView$ViewHolderChooseDropTarget.getAdapterPosition();
                int adapterPosition2 = recyclerView$ViewHolder.getAdapterPosition();
                if (this.mCallback.onMove(this.mRecyclerView, recyclerView$ViewHolder, recyclerView$ViewHolderChooseDropTarget)) {
                    this.mCallback.onMoved(this.mRecyclerView, recyclerView$ViewHolder, adapterPosition2, recyclerView$ViewHolderChooseDropTarget, adapterPosition, i, i2);
                }
            }
        }
    }

    @Override // android.support.v7.widget.RecyclerView$OnChildAttachStateChangeListener
    public void onChildViewDetachedFromWindow(@NonNull View view) {
        removeChildDrawingOrderCallbackIfNecessary(view);
        RecyclerView$ViewHolder childViewHolder = this.mRecyclerView.getChildViewHolder(view);
        if (childViewHolder == null) {
            return;
        }
        if (this.mSelected != null && childViewHolder == this.mSelected) {
            select(null, 0);
            return;
        }
        endRecoverAnimation(childViewHolder, false);
        if (this.mPendingCleanup.remove(childViewHolder.itemView)) {
            this.mCallback.clearView(this.mRecyclerView, childViewHolder);
        }
    }

    void endRecoverAnimation(RecyclerView$ViewHolder recyclerView$ViewHolder, boolean z) {
        for (int size = this.mRecoverAnimations.size() - 1; size >= 0; size--) {
            ItemTouchHelper$RecoverAnimation itemTouchHelper$RecoverAnimation = this.mRecoverAnimations.get(size);
            if (itemTouchHelper$RecoverAnimation.mViewHolder == recyclerView$ViewHolder) {
                itemTouchHelper$RecoverAnimation.mOverridden |= z;
                if (!itemTouchHelper$RecoverAnimation.mEnded) {
                    itemTouchHelper$RecoverAnimation.cancel();
                }
                this.mRecoverAnimations.remove(size);
                return;
            }
        }
    }

    @Override // android.support.v7.widget.RecyclerView$ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView$State recyclerView$State) {
        rect.setEmpty();
    }

    void obtainVelocityTracker() {
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
        }
        this.mVelocityTracker = VelocityTracker.obtain();
    }

    private void releaseVelocityTracker() {
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    private RecyclerView$ViewHolder findSwipedView(MotionEvent motionEvent) {
        View viewFindChildView;
        RecyclerView$LayoutManager layoutManager = this.mRecyclerView.getLayoutManager();
        if (this.mActivePointerId == -1) {
            return null;
        }
        int iFindPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
        float x = motionEvent.getX(iFindPointerIndex) - this.mInitialTouchX;
        float y = motionEvent.getY(iFindPointerIndex) - this.mInitialTouchY;
        float fAbs = Math.abs(x);
        float fAbs2 = Math.abs(y);
        if (fAbs < this.mSlop && fAbs2 < this.mSlop) {
            return null;
        }
        if (fAbs > fAbs2 && layoutManager.canScrollHorizontally()) {
            return null;
        }
        if ((fAbs2 <= fAbs || !layoutManager.canScrollVertically()) && (viewFindChildView = findChildView(motionEvent)) != null) {
            return this.mRecyclerView.getChildViewHolder(viewFindChildView);
        }
        return null;
    }

    void checkSelectForSwipe(int i, MotionEvent motionEvent, int i2) {
        RecyclerView$ViewHolder recyclerView$ViewHolderFindSwipedView;
        int absoluteMovementFlags;
        if (this.mSelected != null || i != 2 || this.mActionState == 2 || !this.mCallback.isItemViewSwipeEnabled() || this.mRecyclerView.getScrollState() == 1 || (recyclerView$ViewHolderFindSwipedView = findSwipedView(motionEvent)) == null || (absoluteMovementFlags = (this.mCallback.getAbsoluteMovementFlags(this.mRecyclerView, recyclerView$ViewHolderFindSwipedView) & 65280) >> 8) == 0) {
            return;
        }
        float x = motionEvent.getX(i2);
        float y = motionEvent.getY(i2);
        float f = x - this.mInitialTouchX;
        float f2 = y - this.mInitialTouchY;
        float fAbs = Math.abs(f);
        float fAbs2 = Math.abs(f2);
        if (fAbs >= this.mSlop || fAbs2 >= this.mSlop) {
            if (fAbs > fAbs2) {
                if (f < 0.0f && (absoluteMovementFlags & 4) == 0) {
                    return;
                }
                if (f > 0.0f && (absoluteMovementFlags & 8) == 0) {
                    return;
                }
            } else {
                if (f2 < 0.0f && (absoluteMovementFlags & 1) == 0) {
                    return;
                }
                if (f2 > 0.0f && (absoluteMovementFlags & 2) == 0) {
                    return;
                }
            }
            this.mDy = 0.0f;
            this.mDx = 0.0f;
            this.mActivePointerId = motionEvent.getPointerId(0);
            select(recyclerView$ViewHolderFindSwipedView, 1);
        }
    }

    View findChildView(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (this.mSelected != null) {
            View view = this.mSelected.itemView;
            if (hitTest(view, x, y, this.mSelectedStartX + this.mDx, this.mSelectedStartY + this.mDy)) {
                return view;
            }
        }
        for (int size = this.mRecoverAnimations.size() - 1; size >= 0; size--) {
            ItemTouchHelper$RecoverAnimation itemTouchHelper$RecoverAnimation = this.mRecoverAnimations.get(size);
            View view2 = itemTouchHelper$RecoverAnimation.mViewHolder.itemView;
            if (hitTest(view2, x, y, itemTouchHelper$RecoverAnimation.mX, itemTouchHelper$RecoverAnimation.mY)) {
                return view2;
            }
        }
        return this.mRecyclerView.findChildViewUnder(x, y);
    }

    public void startDrag(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        if (!this.mCallback.hasDragFlag(this.mRecyclerView, recyclerView$ViewHolder)) {
            Log.e("ItemTouchHelper", "Start drag has been called but dragging is not enabled");
            return;
        }
        if (recyclerView$ViewHolder.itemView.getParent() != this.mRecyclerView) {
            Log.e("ItemTouchHelper", "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper.");
            return;
        }
        obtainVelocityTracker();
        this.mDy = 0.0f;
        this.mDx = 0.0f;
        select(recyclerView$ViewHolder, 2);
    }

    public void startSwipe(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        if (!this.mCallback.hasSwipeFlag(this.mRecyclerView, recyclerView$ViewHolder)) {
            Log.e("ItemTouchHelper", "Start swipe has been called but swiping is not enabled");
            return;
        }
        if (recyclerView$ViewHolder.itemView.getParent() != this.mRecyclerView) {
            Log.e("ItemTouchHelper", "Start swipe has been called with a view holder which is not a child of the RecyclerView controlled by this ItemTouchHelper.");
            return;
        }
        obtainVelocityTracker();
        this.mDy = 0.0f;
        this.mDx = 0.0f;
        select(recyclerView$ViewHolder, 1);
    }

    ItemTouchHelper$RecoverAnimation findAnimation(MotionEvent motionEvent) {
        if (this.mRecoverAnimations.isEmpty()) {
            return null;
        }
        View viewFindChildView = findChildView(motionEvent);
        for (int size = this.mRecoverAnimations.size() - 1; size >= 0; size--) {
            ItemTouchHelper$RecoverAnimation itemTouchHelper$RecoverAnimation = this.mRecoverAnimations.get(size);
            if (itemTouchHelper$RecoverAnimation.mViewHolder.itemView == viewFindChildView) {
                return itemTouchHelper$RecoverAnimation;
            }
        }
        return null;
    }

    void updateDxDy(MotionEvent motionEvent, int i, int i2) {
        float x = motionEvent.getX(i2);
        float y = motionEvent.getY(i2);
        this.mDx = x - this.mInitialTouchX;
        this.mDy = y - this.mInitialTouchY;
        if ((i & 4) == 0) {
            this.mDx = Math.max(0.0f, this.mDx);
        }
        if ((i & 8) == 0) {
            this.mDx = Math.min(0.0f, this.mDx);
        }
        if ((i & 1) == 0) {
            this.mDy = Math.max(0.0f, this.mDy);
        }
        if ((i & 2) == 0) {
            this.mDy = Math.min(0.0f, this.mDy);
        }
    }

    private int swipeIfNecessary(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        if (this.mActionState == 2) {
            return 0;
        }
        int movementFlags = this.mCallback.getMovementFlags(this.mRecyclerView, recyclerView$ViewHolder);
        int iConvertToAbsoluteDirection = (this.mCallback.convertToAbsoluteDirection(movementFlags, ViewCompat.getLayoutDirection(this.mRecyclerView)) & 65280) >> 8;
        if (iConvertToAbsoluteDirection == 0) {
            return 0;
        }
        int i = (movementFlags & 65280) >> 8;
        if (Math.abs(this.mDx) > Math.abs(this.mDy)) {
            int iCheckHorizontalSwipe = checkHorizontalSwipe(recyclerView$ViewHolder, iConvertToAbsoluteDirection);
            if (iCheckHorizontalSwipe > 0) {
                return (i & iCheckHorizontalSwipe) == 0 ? ItemTouchHelper$Callback.convertToRelativeDirection(iCheckHorizontalSwipe, ViewCompat.getLayoutDirection(this.mRecyclerView)) : iCheckHorizontalSwipe;
            }
            int iCheckVerticalSwipe = checkVerticalSwipe(recyclerView$ViewHolder, iConvertToAbsoluteDirection);
            if (iCheckVerticalSwipe > 0) {
                return iCheckVerticalSwipe;
            }
        } else {
            int iCheckVerticalSwipe2 = checkVerticalSwipe(recyclerView$ViewHolder, iConvertToAbsoluteDirection);
            if (iCheckVerticalSwipe2 > 0) {
                return iCheckVerticalSwipe2;
            }
            int iCheckHorizontalSwipe2 = checkHorizontalSwipe(recyclerView$ViewHolder, iConvertToAbsoluteDirection);
            if (iCheckHorizontalSwipe2 > 0) {
                return (i & iCheckHorizontalSwipe2) == 0 ? ItemTouchHelper$Callback.convertToRelativeDirection(iCheckHorizontalSwipe2, ViewCompat.getLayoutDirection(this.mRecyclerView)) : iCheckHorizontalSwipe2;
            }
        }
        return 0;
    }

    private int checkHorizontalSwipe(RecyclerView$ViewHolder recyclerView$ViewHolder, int i) {
        if ((i & 12) == 0) {
            return 0;
        }
        int i2 = this.mDx > 0.0f ? 8 : 4;
        if (this.mVelocityTracker != null && this.mActivePointerId > -1) {
            this.mVelocityTracker.computeCurrentVelocity(1000, this.mCallback.getSwipeVelocityThreshold(this.mMaxSwipeVelocity));
            float xVelocity = this.mVelocityTracker.getXVelocity(this.mActivePointerId);
            float yVelocity = this.mVelocityTracker.getYVelocity(this.mActivePointerId);
            int i3 = xVelocity > 0.0f ? 8 : 4;
            float fAbs = Math.abs(xVelocity);
            if ((i3 & i) != 0 && i2 == i3 && fAbs >= this.mCallback.getSwipeEscapeVelocity(this.mSwipeEscapeVelocity) && fAbs > Math.abs(yVelocity)) {
                return i3;
            }
        }
        float width = this.mRecyclerView.getWidth() * this.mCallback.getSwipeThreshold(recyclerView$ViewHolder);
        if ((i & i2) == 0 || Math.abs(this.mDx) <= width) {
            return 0;
        }
        return i2;
    }

    private int checkVerticalSwipe(RecyclerView$ViewHolder recyclerView$ViewHolder, int i) {
        if ((i & 3) == 0) {
            return 0;
        }
        int i2 = this.mDy > 0.0f ? 2 : 1;
        if (this.mVelocityTracker != null && this.mActivePointerId > -1) {
            this.mVelocityTracker.computeCurrentVelocity(1000, this.mCallback.getSwipeVelocityThreshold(this.mMaxSwipeVelocity));
            float xVelocity = this.mVelocityTracker.getXVelocity(this.mActivePointerId);
            float yVelocity = this.mVelocityTracker.getYVelocity(this.mActivePointerId);
            int i3 = yVelocity > 0.0f ? 2 : 1;
            float fAbs = Math.abs(yVelocity);
            if ((i3 & i) != 0 && i3 == i2 && fAbs >= this.mCallback.getSwipeEscapeVelocity(this.mSwipeEscapeVelocity) && fAbs > Math.abs(xVelocity)) {
                return i3;
            }
        }
        float height = this.mRecyclerView.getHeight() * this.mCallback.getSwipeThreshold(recyclerView$ViewHolder);
        if ((i & i2) == 0 || Math.abs(this.mDy) <= height) {
            return 0;
        }
        return i2;
    }

    private void addChildDrawingOrderCallback() {
        if (Build$VERSION.SDK_INT >= 21) {
            return;
        }
        if (this.mChildDrawingOrderCallback == null) {
            this.mChildDrawingOrderCallback = new ItemTouchHelper$5(this);
        }
        this.mRecyclerView.setChildDrawingOrderCallback(this.mChildDrawingOrderCallback);
    }

    void removeChildDrawingOrderCallbackIfNecessary(View view) {
        if (view == this.mOverdrawChild) {
            this.mOverdrawChild = null;
            if (this.mChildDrawingOrderCallback != null) {
                this.mRecyclerView.setChildDrawingOrderCallback(null);
            }
        }
    }
}

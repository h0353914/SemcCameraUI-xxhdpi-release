package android.support.v7.widget.helper;

import android.graphics.Canvas;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewCompat;
import android.support.v7.recyclerview.R$dimen;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView$ItemAnimator;
import android.support.v7.widget.RecyclerView$LayoutManager;
import android.support.v7.widget.RecyclerView$ViewHolder;
import android.view.animation.Interpolator;
import java.util.List;

public abstract class ItemTouchHelper$Callback {
    private static final int ABS_HORIZONTAL_DIR_FLAGS = 789516;
    public static final int DEFAULT_DRAG_ANIMATION_DURATION = 200;
    public static final int DEFAULT_SWIPE_ANIMATION_DURATION = 250;
    private static final long DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS = 2000;
    static final int RELATIVE_DIR_FLAGS = 3158064;
    private static final Interpolator sDragScrollInterpolator = new ItemTouchHelper$Callback$1();
    private static final Interpolator sDragViewScrollCapInterpolator = new ItemTouchHelper$Callback$2();
    private int mCachedMaxScrollSpeed = -1;

    public static int convertToRelativeDirection(int i, int i2) {
        int i3 = i & 789516;
        if (i3 == 0) {
            return i;
        }
        int i4 = i & (~i3);
        if (i2 == 0) {
            return i4 | (i3 << 2);
        }
        int i5 = i3 << 1;
        return i4 | ((-789517) & i5) | ((i5 & 789516) << 2);
    }

    public static int makeFlag(int i, int i2) {
        return i2 << (i * 8);
    }

    public boolean canDropOver(@NonNull RecyclerView recyclerView, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder2) {
        return true;
    }

    public int convertToAbsoluteDirection(int i, int i2) {
        int i3 = i & 3158064;
        if (i3 == 0) {
            return i;
        }
        int i4 = i & (~i3);
        if (i2 == 0) {
            return (i3 >> 2) | i4;
        }
        int i5 = i3 >> 1;
        return ((3158064 & i5) >> 2) | i4 | ((-3158065) & i5);
    }

    public int getBoundingBoxMargin() {
        return 0;
    }

    public float getMoveThreshold(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        return 0.5f;
    }

    public abstract int getMovementFlags(@NonNull RecyclerView recyclerView, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder);

    public float getSwipeEscapeVelocity(float f) {
        return f;
    }

    public float getSwipeThreshold(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        return 0.5f;
    }

    public float getSwipeVelocityThreshold(float f) {
        return f;
    }

    public boolean isItemViewSwipeEnabled() {
        return true;
    }

    public boolean isLongPressDragEnabled() {
        return true;
    }

    public abstract boolean onMove(@NonNull RecyclerView recyclerView, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder2);

    public abstract void onSwiped(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, int i);

    @NonNull
    public static ItemTouchUIUtil getDefaultUIUtil() {
        return ItemTouchUIUtilImpl.INSTANCE;
    }

    public static int makeMovementFlags(int i, int i2) {
        return makeFlag(2, i) | makeFlag(1, i2) | makeFlag(0, i2 | i);
    }

    final int getAbsoluteMovementFlags(RecyclerView recyclerView, RecyclerView$ViewHolder recyclerView$ViewHolder) {
        return convertToAbsoluteDirection(getMovementFlags(recyclerView, recyclerView$ViewHolder), ViewCompat.getLayoutDirection(recyclerView));
    }

    boolean hasDragFlag(RecyclerView recyclerView, RecyclerView$ViewHolder recyclerView$ViewHolder) {
        return (getAbsoluteMovementFlags(recyclerView, recyclerView$ViewHolder) & 16711680) != 0;
    }

    boolean hasSwipeFlag(RecyclerView recyclerView, RecyclerView$ViewHolder recyclerView$ViewHolder) {
        return (getAbsoluteMovementFlags(recyclerView, recyclerView$ViewHolder) & 65280) != 0;
    }

    public RecyclerView$ViewHolder chooseDropTarget(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, @NonNull List<RecyclerView$ViewHolder> list, int i, int i2) {
        int bottom;
        int iAbs;
        int top;
        int iAbs2;
        int left;
        int iAbs3;
        int right;
        int iAbs4;
        int width = recyclerView$ViewHolder.itemView.getWidth() + i;
        int height = recyclerView$ViewHolder.itemView.getHeight() + i2;
        int left2 = i - recyclerView$ViewHolder.itemView.getLeft();
        int top2 = i2 - recyclerView$ViewHolder.itemView.getTop();
        int size = list.size();
        RecyclerView$ViewHolder recyclerView$ViewHolder2 = null;
        int i3 = -1;
        for (int i4 = 0; i4 < size; i4++) {
            RecyclerView$ViewHolder recyclerView$ViewHolder3 = list.get(i4);
            if (left2 > 0 && (right = recyclerView$ViewHolder3.itemView.getRight() - width) < 0 && recyclerView$ViewHolder3.itemView.getRight() > recyclerView$ViewHolder.itemView.getRight() && (iAbs4 = Math.abs(right)) > i3) {
                recyclerView$ViewHolder2 = recyclerView$ViewHolder3;
                i3 = iAbs4;
            }
            if (left2 < 0 && (left = recyclerView$ViewHolder3.itemView.getLeft() - i) > 0 && recyclerView$ViewHolder3.itemView.getLeft() < recyclerView$ViewHolder.itemView.getLeft() && (iAbs3 = Math.abs(left)) > i3) {
                recyclerView$ViewHolder2 = recyclerView$ViewHolder3;
                i3 = iAbs3;
            }
            if (top2 < 0 && (top = recyclerView$ViewHolder3.itemView.getTop() - i2) > 0 && recyclerView$ViewHolder3.itemView.getTop() < recyclerView$ViewHolder.itemView.getTop() && (iAbs2 = Math.abs(top)) > i3) {
                recyclerView$ViewHolder2 = recyclerView$ViewHolder3;
                i3 = iAbs2;
            }
            if (top2 > 0 && (bottom = recyclerView$ViewHolder3.itemView.getBottom() - height) < 0 && recyclerView$ViewHolder3.itemView.getBottom() > recyclerView$ViewHolder.itemView.getBottom() && (iAbs = Math.abs(bottom)) > i3) {
                recyclerView$ViewHolder2 = recyclerView$ViewHolder3;
                i3 = iAbs;
            }
        }
        return recyclerView$ViewHolder2;
    }

    public void onSelectedChanged(@Nullable RecyclerView$ViewHolder recyclerView$ViewHolder, int i) {
        if (recyclerView$ViewHolder != null) {
            ItemTouchUIUtilImpl.INSTANCE.onSelected(recyclerView$ViewHolder.itemView);
        }
    }

    private int getMaxDragScroll(RecyclerView recyclerView) {
        if (this.mCachedMaxScrollSpeed == -1) {
            this.mCachedMaxScrollSpeed = recyclerView.getResources().getDimensionPixelSize(R$dimen.item_touch_helper_max_drag_scroll_per_frame);
        }
        return this.mCachedMaxScrollSpeed;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onMoved(@NonNull RecyclerView recyclerView, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, int i, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder2, int i2, int i3, int i4) {
        RecyclerView$LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof ItemTouchHelper$ViewDropHandler) {
            ((ItemTouchHelper$ViewDropHandler) layoutManager).prepareForDrop(recyclerView$ViewHolder.itemView, recyclerView$ViewHolder2.itemView, i3, i4);
            return;
        }
        if (layoutManager.canScrollHorizontally()) {
            if (layoutManager.getDecoratedLeft(recyclerView$ViewHolder2.itemView) <= recyclerView.getPaddingLeft()) {
                recyclerView.scrollToPosition(i2);
            }
            if (layoutManager.getDecoratedRight(recyclerView$ViewHolder2.itemView) >= recyclerView.getWidth() - recyclerView.getPaddingRight()) {
                recyclerView.scrollToPosition(i2);
            }
        }
        if (layoutManager.canScrollVertically()) {
            if (layoutManager.getDecoratedTop(recyclerView$ViewHolder2.itemView) <= recyclerView.getPaddingTop()) {
                recyclerView.scrollToPosition(i2);
            }
            if (layoutManager.getDecoratedBottom(recyclerView$ViewHolder2.itemView) >= recyclerView.getHeight() - recyclerView.getPaddingBottom()) {
                recyclerView.scrollToPosition(i2);
            }
        }
    }

    void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView$ViewHolder recyclerView$ViewHolder, List<ItemTouchHelper$RecoverAnimation> list, int i, float f, float f2) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            ItemTouchHelper$RecoverAnimation itemTouchHelper$RecoverAnimation = list.get(i2);
            itemTouchHelper$RecoverAnimation.update();
            int iSave = canvas.save();
            onChildDraw(canvas, recyclerView, itemTouchHelper$RecoverAnimation.mViewHolder, itemTouchHelper$RecoverAnimation.mX, itemTouchHelper$RecoverAnimation.mY, itemTouchHelper$RecoverAnimation.mActionState, false);
            canvas.restoreToCount(iSave);
        }
        if (recyclerView$ViewHolder != null) {
            int iSave2 = canvas.save();
            onChildDraw(canvas, recyclerView, recyclerView$ViewHolder, f, f2, i, true);
            canvas.restoreToCount(iSave2);
        }
    }

    void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView$ViewHolder recyclerView$ViewHolder, List<ItemTouchHelper$RecoverAnimation> list, int i, float f, float f2) {
        int size = list.size();
        boolean z = false;
        for (int i2 = 0; i2 < size; i2++) {
            ItemTouchHelper$RecoverAnimation itemTouchHelper$RecoverAnimation = list.get(i2);
            int iSave = canvas.save();
            onChildDrawOver(canvas, recyclerView, itemTouchHelper$RecoverAnimation.mViewHolder, itemTouchHelper$RecoverAnimation.mX, itemTouchHelper$RecoverAnimation.mY, itemTouchHelper$RecoverAnimation.mActionState, false);
            canvas.restoreToCount(iSave);
        }
        if (recyclerView$ViewHolder != null) {
            int iSave2 = canvas.save();
            onChildDrawOver(canvas, recyclerView, recyclerView$ViewHolder, f, f2, i, true);
            canvas.restoreToCount(iSave2);
        }
        for (int i3 = size - 1; i3 >= 0; i3--) {
            ItemTouchHelper$RecoverAnimation itemTouchHelper$RecoverAnimation2 = list.get(i3);
            if (itemTouchHelper$RecoverAnimation2.mEnded && !itemTouchHelper$RecoverAnimation2.mIsPendingCleanup) {
                list.remove(i3);
            } else if (!itemTouchHelper$RecoverAnimation2.mEnded) {
                z = true;
            }
        }
        if (z) {
            recyclerView.invalidate();
        }
    }

    public void clearView(@NonNull RecyclerView recyclerView, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        ItemTouchUIUtilImpl.INSTANCE.clearView(recyclerView$ViewHolder.itemView);
    }

    public void onChildDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, float f, float f2, int i, boolean z) {
        ItemTouchUIUtilImpl.INSTANCE.onDraw(canvas, recyclerView, recyclerView$ViewHolder.itemView, f, f2, i, z);
    }

    public void onChildDrawOver(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, RecyclerView$ViewHolder recyclerView$ViewHolder, float f, float f2, int i, boolean z) {
        ItemTouchUIUtilImpl.INSTANCE.onDrawOver(canvas, recyclerView, recyclerView$ViewHolder.itemView, f, f2, i, z);
    }

    public long getAnimationDuration(@NonNull RecyclerView recyclerView, int i, float f, float f2) {
        RecyclerView$ItemAnimator itemAnimator = recyclerView.getItemAnimator();
        if (itemAnimator == null) {
            return i == 8 ? 200L : 250L;
        }
        if (i == 8) {
            return itemAnimator.getMoveDuration();
        }
        return itemAnimator.getRemoveDuration();
    }

    public int interpolateOutOfBoundsScroll(@NonNull RecyclerView recyclerView, int i, int i2, int i3, long j) {
        int iSignum = (int) (((int) (((int) Math.signum(i2)) * getMaxDragScroll(recyclerView) * sDragViewScrollCapInterpolator.getInterpolation(Math.min(1.0f, (Math.abs(i2) * 1.0f) / i)))) * sDragScrollInterpolator.getInterpolation(j <= 2000 ? j / 2000.0f : 1.0f));
        return iSignum == 0 ? i2 > 0 ? 1 : -1 : iSignum;
    }
}

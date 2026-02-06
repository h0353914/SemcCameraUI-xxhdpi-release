package android.support.design.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Parcelable;
import android.support.annotation.ColorInt;
import android.support.annotation.FloatRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.view.WindowInsetsCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View$BaseSavedState;

public abstract class CoordinatorLayout$Behavior<V extends View> {
    public boolean getInsetDodgeRect(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull Rect rect) {
        return false;
    }

    @ColorInt
    public int getScrimColor(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v) {
        return -16777216;
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float getScrimOpacity(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v) {
        return 0.0f;
    }

    public boolean layoutDependsOn(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view) {
        return false;
    }

    @NonNull
    public WindowInsetsCompat onApplyWindowInsets(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull WindowInsetsCompat windowInsetsCompat) {
        return windowInsetsCompat;
    }

    public void onAttachedToLayoutParams(@NonNull CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams) {
    }

    public boolean onDependentViewChanged(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view) {
        return false;
    }

    public void onDependentViewRemoved(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view) {
    }

    public void onDetachedFromLayoutParams() {
    }

    public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull MotionEvent motionEvent) {
        return false;
    }

    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i) {
        return false;
    }

    public boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i, int i2, int i3, int i4) {
        return false;
    }

    public boolean onNestedFling(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, float f, float f2, boolean z) {
        return false;
    }

    public boolean onNestedPreFling(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, float f, float f2) {
        return false;
    }

    @Deprecated
    public void onNestedPreScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, @NonNull int[] iArr) {
    }

    @Deprecated
    public void onNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, int i3, int i4) {
    }

    @Deprecated
    public void onNestedScrollAccepted(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i) {
    }

    public boolean onRequestChildRectangleOnScreen(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull Rect rect, boolean z) {
        return false;
    }

    public void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull Parcelable parcelable) {
    }

    @Deprecated
    public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i) {
        return false;
    }

    @Deprecated
    public void onStopNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view) {
    }

    public boolean onTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull MotionEvent motionEvent) {
        return false;
    }

    public CoordinatorLayout$Behavior() {
    }

    public CoordinatorLayout$Behavior(Context context, AttributeSet attributeSet) {
    }

    public boolean blocksInteractionBelow(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v) {
        return getScrimOpacity(coordinatorLayout, v) > 0.0f;
    }

    public static void setTag(@NonNull View view, @Nullable Object obj) {
        ((CoordinatorLayout$LayoutParams) view.getLayoutParams()).mBehaviorTag = obj;
    }

    @Nullable
    public static Object getTag(@NonNull View view) {
        return ((CoordinatorLayout$LayoutParams) view.getLayoutParams()).mBehaviorTag;
    }

    public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i, int i2) {
        if (i2 == 0) {
            return onStartNestedScroll(coordinatorLayout, v, view, view2, i);
        }
        return false;
    }

    public void onNestedScrollAccepted(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(coordinatorLayout, v, view, view2, i);
        }
    }

    public void onStopNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i) {
        if (i == 0) {
            onStopNestedScroll(coordinatorLayout, v, view);
        }
    }

    public void onNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            onNestedScroll(coordinatorLayout, v, view, i, i2, i3, i4);
        }
    }

    public void onNestedPreScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, @NonNull int[] iArr, int i3) {
        if (i3 == 0) {
            onNestedPreScroll(coordinatorLayout, v, view, i, i2, iArr);
        }
    }

    @Nullable
    public Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v) {
        return View$BaseSavedState.EMPTY_STATE;
    }
}

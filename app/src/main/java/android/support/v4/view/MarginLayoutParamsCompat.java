package android.support.v4.view;

import android.os.Build$VERSION;
import android.view.ViewGroup$MarginLayoutParams;

public final class MarginLayoutParamsCompat {
    public static int getMarginStart(ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams) {
        if (Build$VERSION.SDK_INT >= 17) {
            return viewGroup$MarginLayoutParams.getMarginStart();
        }
        return viewGroup$MarginLayoutParams.leftMargin;
    }

    public static int getMarginEnd(ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams) {
        if (Build$VERSION.SDK_INT >= 17) {
            return viewGroup$MarginLayoutParams.getMarginEnd();
        }
        return viewGroup$MarginLayoutParams.rightMargin;
    }

    public static void setMarginStart(ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams, int i) {
        if (Build$VERSION.SDK_INT >= 17) {
            viewGroup$MarginLayoutParams.setMarginStart(i);
        } else {
            viewGroup$MarginLayoutParams.leftMargin = i;
        }
    }

    public static void setMarginEnd(ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams, int i) {
        if (Build$VERSION.SDK_INT >= 17) {
            viewGroup$MarginLayoutParams.setMarginEnd(i);
        } else {
            viewGroup$MarginLayoutParams.rightMargin = i;
        }
    }

    public static boolean isMarginRelative(ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams) {
        if (Build$VERSION.SDK_INT >= 17) {
            return viewGroup$MarginLayoutParams.isMarginRelative();
        }
        return false;
    }

    public static int getLayoutDirection(ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams) {
        int layoutDirection = Build$VERSION.SDK_INT >= 17 ? viewGroup$MarginLayoutParams.getLayoutDirection() : 0;
        if (layoutDirection == 0 || layoutDirection == 1) {
            return layoutDirection;
        }
        return 0;
    }

    public static void setLayoutDirection(ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams, int i) {
        if (Build$VERSION.SDK_INT >= 17) {
            viewGroup$MarginLayoutParams.setLayoutDirection(i);
        }
    }

    public static void resolveLayoutDirection(ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams, int i) {
        if (Build$VERSION.SDK_INT >= 17) {
            viewGroup$MarginLayoutParams.resolveLayoutDirection(i);
        }
    }

    private MarginLayoutParamsCompat() {
    }
}

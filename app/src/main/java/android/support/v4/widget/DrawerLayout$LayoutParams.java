package android.support.v4.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;

public class DrawerLayout$LayoutParams extends ViewGroup$MarginLayoutParams {
    private static final int FLAG_IS_CLOSING = 4;
    private static final int FLAG_IS_OPENED = 1;
    private static final int FLAG_IS_OPENING = 2;
    public int gravity;
    boolean isPeeking;
    float onScreen;
    int openState;

    public DrawerLayout$LayoutParams(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.gravity = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.LAYOUT_ATTRS);
        this.gravity = typedArrayObtainStyledAttributes.getInt(0, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    public DrawerLayout$LayoutParams(int i, int i2) {
        super(i, i2);
        this.gravity = 0;
    }

    public DrawerLayout$LayoutParams(int i, int i2, int i3) {
        this(i, i2);
        this.gravity = i3;
    }

    public DrawerLayout$LayoutParams(@NonNull DrawerLayout$LayoutParams drawerLayout$LayoutParams) {
        super((ViewGroup$MarginLayoutParams) drawerLayout$LayoutParams);
        this.gravity = 0;
        this.gravity = drawerLayout$LayoutParams.gravity;
    }

    public DrawerLayout$LayoutParams(@NonNull ViewGroup$LayoutParams viewGroup$LayoutParams) {
        super(viewGroup$LayoutParams);
        this.gravity = 0;
    }

    public DrawerLayout$LayoutParams(@NonNull ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams) {
        super(viewGroup$MarginLayoutParams);
        this.gravity = 0;
    }
}

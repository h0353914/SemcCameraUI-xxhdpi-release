package android.support.v4.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup$LayoutParams;

/* JADX INFO: loaded from: classes.dex */
public class ViewPager$LayoutParams extends ViewGroup$LayoutParams {
    int childIndex;
    public int gravity;
    public boolean isDecor;
    boolean needsMeasure;
    int position;
    float widthFactor;

    public ViewPager$LayoutParams() {
        super(-1, -1);
        this.widthFactor = 0.0f;
    }

    public ViewPager$LayoutParams(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.widthFactor = 0.0f;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.LAYOUT_ATTRS);
        this.gravity = typedArrayObtainStyledAttributes.getInteger(0, 48);
        typedArrayObtainStyledAttributes.recycle();
    }
}

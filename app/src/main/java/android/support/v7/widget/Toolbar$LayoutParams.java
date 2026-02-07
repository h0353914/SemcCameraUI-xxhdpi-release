package android.support.v7.widget;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.v7.app.ActionBar$LayoutParams;
import android.util.AttributeSet;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;

/* JADX INFO: loaded from: classes.dex */
public class Toolbar$LayoutParams extends ActionBar$LayoutParams {
    static final int CUSTOM = 0;
    static final int EXPANDED = 2;
    static final int SYSTEM = 1;
    int mViewType;

    public Toolbar$LayoutParams(@NonNull Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mViewType = 0;
    }

    public Toolbar$LayoutParams(int i, int i2) {
        super(i, i2);
        this.mViewType = 0;
        this.gravity = 8388627;
    }

    public Toolbar$LayoutParams(int i, int i2, int i3) {
        super(i, i2);
        this.mViewType = 0;
        this.gravity = i3;
    }

    public Toolbar$LayoutParams(int i) {
        this(-2, -1, i);
    }

    public Toolbar$LayoutParams(Toolbar$LayoutParams toolbar$LayoutParams) {
        super((ActionBar$LayoutParams) toolbar$LayoutParams);
        this.mViewType = 0;
        this.mViewType = toolbar$LayoutParams.mViewType;
    }

    public Toolbar$LayoutParams(ActionBar$LayoutParams actionBar$LayoutParams) {
        super(actionBar$LayoutParams);
        this.mViewType = 0;
    }

    public Toolbar$LayoutParams(ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams) {
        super(viewGroup$MarginLayoutParams);
        this.mViewType = 0;
        copyMarginsFromCompat(viewGroup$MarginLayoutParams);
    }

    public Toolbar$LayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        super(viewGroup$LayoutParams);
        this.mViewType = 0;
    }

    void copyMarginsFromCompat(ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams) {
        this.leftMargin = viewGroup$MarginLayoutParams.leftMargin;
        this.topMargin = viewGroup$MarginLayoutParams.topMargin;
        this.rightMargin = viewGroup$MarginLayoutParams.rightMargin;
        this.bottomMargin = viewGroup$MarginLayoutParams.bottomMargin;
    }
}

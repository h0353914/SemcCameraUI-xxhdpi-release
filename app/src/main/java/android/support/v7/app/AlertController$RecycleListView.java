package android.support.v7.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.appcompat.R$styleable;
import android.util.AttributeSet;
import android.widget.ListView;

/* JADX INFO: loaded from: classes.dex */
public class AlertController$RecycleListView extends ListView {
    private final int mPaddingBottomNoButtons;
    private final int mPaddingTopNoTitle;

    public AlertController$RecycleListView(Context context) {
        this(context, null);
    }

    public AlertController$RecycleListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RecycleListView);
        this.mPaddingBottomNoButtons = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.RecycleListView_paddingBottomNoButtons, -1);
        this.mPaddingTopNoTitle = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.RecycleListView_paddingTopNoTitle, -1);
    }

    public void setHasDecor(boolean z, boolean z2) {
        if (z2 && z) {
            return;
        }
        setPadding(getPaddingLeft(), z ? getPaddingTop() : this.mPaddingTopNoTitle, getPaddingRight(), z2 ? getPaddingBottom() : this.mPaddingBottomNoButtons);
    }
}

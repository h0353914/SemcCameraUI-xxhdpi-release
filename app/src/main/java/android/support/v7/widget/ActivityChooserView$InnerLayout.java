package android.support.v7.widget;

import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.util.AttributeSet;
import android.widget.LinearLayout;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
public class ActivityChooserView$InnerLayout extends LinearLayout {
    private static final int[] TINT_ATTRS = {16842964};

    public ActivityChooserView$InnerLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, TINT_ATTRS);
        setBackgroundDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(0));
        tintTypedArrayObtainStyledAttributes.recycle();
    }
}

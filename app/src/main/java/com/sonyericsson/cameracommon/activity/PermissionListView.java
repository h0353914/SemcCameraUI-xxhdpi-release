package com.sonyericsson.cameracommon.activity;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View$MeasureSpec;
import android.widget.ListView;

/* JADX INFO: loaded from: classes.dex */
public class PermissionListView extends ListView {
    public PermissionListView(Context context) {
        super(context);
    }

    public PermissionListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PermissionListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, View$MeasureSpec.makeMeasureSpec(16777215, Integer.MIN_VALUE));
        getLayoutParams().height = getMeasuredHeight();
    }
}

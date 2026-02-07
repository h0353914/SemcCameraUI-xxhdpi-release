package com.sonyericsson.android.camera.view;

import android.view.View;
import android.view.View$OnClickListener;

/* JADX INFO: loaded from: classes.dex */
class ViewFinderImpl$23 implements View$OnClickListener {
    final /* synthetic */ ViewFinderImpl this$0;

    ViewFinderImpl$23(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        ViewFinderImpl.access$7400(this.this$0, ((Integer) view.getTag()).intValue());
    }
}

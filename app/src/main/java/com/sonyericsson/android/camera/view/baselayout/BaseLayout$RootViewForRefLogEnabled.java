package com.sonyericsson.android.camera.view.baselayout;

import android.app.Activity;
import android.graphics.Canvas;
import com.sonyericsson.android.camera.util.PerfLog;

/* JADX INFO: loaded from: classes.dex */
class BaseLayout$RootViewForRefLogEnabled extends BaseLayout$RootView {
    final /* synthetic */ BaseLayout this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseLayout$RootViewForRefLogEnabled(BaseLayout baseLayout, Activity activity) {
        super(baseLayout, activity);
        this.this$0 = baseLayout;
        BaseLayout.access$402(baseLayout, false);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (!BaseLayout.access$400(this.this$0)) {
            BaseLayout.access$402(this.this$0, true);
            PerfLog.VIEWFINDER_FIRST_DRAW.begin();
            super.dispatchDraw(canvas);
            PerfLog.VIEWFINDER_FIRST_DRAW.end();
            return;
        }
        super.dispatchDraw(canvas);
    }
}

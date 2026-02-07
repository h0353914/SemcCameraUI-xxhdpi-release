package com.sonymobile.sidetouchgesturedetector;

import android.database.ContentObserver;
import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
class SideTouchGestureDetector$DynamicSettings$1 extends ContentObserver {
    final /* synthetic */ SideTouchGestureDetector$DynamicSettings this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SideTouchGestureDetector$DynamicSettings$1(SideTouchGestureDetector$DynamicSettings sideTouchGestureDetector$DynamicSettings, Handler handler) {
        super(handler);
        this.this$1 = sideTouchGestureDetector$DynamicSettings;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        super.onChange(z);
        SideTouchGestureDetector$DynamicSettings.access$000(this.this$1);
    }
}

package com.sonymobile.sidetouchgesturedetector;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
class SideTouchGestureDetector$GestureHandler extends Handler {
    final /* synthetic */ SideTouchGestureDetector this$0;

    SideTouchGestureDetector$GestureHandler(SideTouchGestureDetector sideTouchGestureDetector) {
        this.this$0 = sideTouchGestureDetector;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SideTouchGestureDetector$GestureHandler(SideTouchGestureDetector sideTouchGestureDetector, Handler handler) {
        super(handler.getLooper());
        this.this$0 = sideTouchGestureDetector;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        ((SideTouchGestureDetector$Gesture) message.obj).onHandleMessage(message.what);
    }
}

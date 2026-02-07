package com.sonyericsson.android.camera.controller;

import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$1$1 implements Runnable {
    final /* synthetic */ StateMachine$1 this$1;
    final /* synthetic */ StoreDataResult val$result;

    StateMachine$1$1(StateMachine$1 stateMachine$1, StoreDataResult storeDataResult) {
        this.this$1 = stateMachine$1;
        this.val$result = storeDataResult;
    }

    @Override // java.lang.Runnable
    public void run() {
        StateMachine.access$1600(this.this$1.this$0);
        this.this$1.this$0.sendEvent(StateMachine$TransitterEvent.EVENT_ON_STORE_COMPLETED, this.val$result);
    }
}

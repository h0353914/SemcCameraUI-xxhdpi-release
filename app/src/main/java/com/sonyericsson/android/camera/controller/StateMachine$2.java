package com.sonyericsson.android.camera.controller;

import android.graphics.Bitmap;
import android.net.Uri;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.contentsview.contents.Content$ContentInfo;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import com.sonyericsson.cameracommon.storage.Storage$OnLoadCompletedListener;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$2 implements Storage$OnLoadCompletedListener {
    final /* synthetic */ StateMachine this$0;
    final /* synthetic */ StoreDataResult val$result;

    @Override // com.sonyericsson.cameracommon.storage.Storage$OnLoadCompletedListener
    public void onDataLoadCompleted(int i, boolean z, LinkedList<Content$ContentInfo> linkedList, Bitmap bitmap) {
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage$OnLoadCompletedListener
    public void onDataLoadFailed(int i) {
    }

    StateMachine$2(StateMachine stateMachine, StoreDataResult storeDataResult) {
        this.this$0 = stateMachine;
        this.val$result = storeDataResult;
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage$OnLoadCompletedListener
    public void onLoadCompleted(Uri uri, Bitmap bitmap) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke uri:" + uri);
        }
        StateMachine.access$1900(this.this$0, this.val$result, bitmap);
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage$OnLoadCompletedListener
    public void onLoadFailed(Uri uri, int i) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke uri:" + uri + ", reason:" + i);
        }
        StateMachine.access$1900(this.this$0, this.val$result, null);
    }
}

package com.sonyericsson.android.camera.controller;

import android.net.Uri;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingResult;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import com.sonyericsson.cameracommon.storage.SavingRequest;
import com.sonyericsson.cameracommon.storage.Storage$OnStoreCompletedListener;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;

class StateMachine$1 implements Storage$OnStoreCompletedListener {
    final /* synthetic */ StateMachine this$0;

    StateMachine$1(StateMachine stateMachine) {
        this.this$0 = stateMachine;
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage$OnStoreCompletedListener
    public void onStoreCompleted(Uri uri, SavingRequest savingRequest, Storage$StorageType storage$StorageType) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke uri:" + uri + ", request:" + savingRequest + ", savedStorage:" + storage$StorageType);
        }
        notifyResult(new StoreDataResult(MediaSavingResult.SUCCESS, uri, savingRequest));
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage$OnStoreCompletedListener
    public void onStoreFailed(Uri uri, SavingRequest savingRequest, int i) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke uri:" + uri + ", request:" + savingRequest + ", reason:" + i);
        }
        notifyResult(new StoreDataResult(MediaSavingResult.FAIL, uri, savingRequest));
    }

    private void notifyResult(StoreDataResult storeDataResult) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_UPDATE_SETTING_CHANGE_ACCEPTABILITY, Boolean.valueOf(this.this$0.isSettingChangeAcceptable()));
        StateMachine.access$1700(this.this$0).post(new StateMachine$1$1(this, storeDataResult));
    }
}

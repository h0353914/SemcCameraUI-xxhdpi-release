package com.sonyericsson.android.camera.controller;

import android.graphics.Bitmap;
import android.net.Uri;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingResult;
import com.sonyericsson.cameracommon.storage.SavingRequest;

/* JADX INFO: loaded from: classes.dex */
public class StateMachine$OneShotResult {
    public final Bitmap bitmap;
    public final int code;
    public final boolean isSuccess;
    public final SavingRequest savingRequest;
    public final Uri uri;

    /* synthetic */ StateMachine$OneShotResult(Uri uri, MediaSavingResult mediaSavingResult, SavingRequest savingRequest, Bitmap bitmap, StateMachine$1 stateMachine$1) {
        this(uri, mediaSavingResult, savingRequest, bitmap);
    }

    private StateMachine$OneShotResult(Uri uri, MediaSavingResult mediaSavingResult, SavingRequest savingRequest, Bitmap bitmap) {
        this.uri = uri;
        this.code = mediaSavingResult.mResultCode;
        this.isSuccess = mediaSavingResult == MediaSavingResult.SUCCESS;
        this.savingRequest = savingRequest;
        this.bitmap = bitmap;
    }
}

package com.sonyericsson.android.camera.recorder.superslowrecorder;

import android.content.Context;
import android.net.Uri;
import android.provider.DocumentsContract;
import com.sonyericsson.android.camera.CameraApplication;
import com.sonyericsson.android.camera.recorder.utility.encoder.MediaEncoder$StateListener;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;
import com.sonyericsson.cameracommon.storage.StorageUtil;
import java.io.File;
import java.io.FileNotFoundException;

/* JADX INFO: loaded from: classes.dex */
class VariableSourceMediaRecorder$MediaEncoderStateListener implements MediaEncoder$StateListener {
    private long mLastNotifyProgressMillis = 0;
    final /* synthetic */ VariableSourceMediaRecorder this$0;

    public VariableSourceMediaRecorder$MediaEncoderStateListener(VariableSourceMediaRecorder variableSourceMediaRecorder) {
        this.this$0 = variableSourceMediaRecorder;
    }

    @Override // com.sonyericsson.android.camera.recorder.utility.encoder.MediaEncoder$StateListener
    public void onStarted() {
        VariableSourceMediaRecorder.access$000(this.this$0).countDown();
        VariableSourceMediaRecorder.access$200(this.this$0).post(new VariableSourceMediaRecorder$MediaEncoderStateListener$StartNotificationTask(this, null));
    }

    @Override // com.sonyericsson.android.camera.recorder.utility.encoder.MediaEncoder$StateListener
    public void onFinished(boolean z) {
        if (!z) {
            File file = new File(VariableSourceMediaRecorder.access$300(this.this$0));
            if (file.exists()) {
                Context context = CameraApplication.getContext();
                if (StorageUtil.getStorageTypeFromPath(VariableSourceMediaRecorder.access$300(this.this$0), CameraApplication.getContext()) == Storage$StorageType.EXTERNAL_CARD) {
                    Uri uriSearchDocumentSdCard = StorageUtil.searchDocumentSdCard(context, VariableSourceMediaRecorder.access$300(this.this$0));
                    if (uriSearchDocumentSdCard != null) {
                        try {
                            if (!DocumentsContract.deleteDocument(context.getContentResolver(), uriSearchDocumentSdCard)) {
                                CamLog.e("Unable to delete file.");
                            }
                        } catch (FileNotFoundException e) {
                            CamLog.e("Unable to delete file." + e);
                        }
                    }
                } else if (!file.delete()) {
                    CamLog.e("Unable to delete file.");
                }
            }
        }
        VariableSourceMediaRecorder.access$402(this.this$0, z);
        VariableSourceMediaRecorder.access$500(this.this$0).countDown();
        VariableSourceMediaRecorder.access$200(this.this$0).post(new VariableSourceMediaRecorder$MediaEncoderStateListener$FinishNotificationTask(this, null));
    }

    @Override // com.sonyericsson.android.camera.recorder.utility.encoder.MediaEncoder$StateListener
    public synchronized void onProgress(long j) {
        long j2 = j / 1000;
        if (j2 - this.mLastNotifyProgressMillis >= 1000) {
            this.mLastNotifyProgressMillis = j2;
            VariableSourceMediaRecorder.access$200(this.this$0).post(new VariableSourceMediaRecorder$MediaEncoderStateListener$ProgressNotificationTask(this, this.mLastNotifyProgressMillis));
        }
    }

    @Override // com.sonyericsson.android.camera.recorder.utility.encoder.MediaEncoder$StateListener
    public void onMaxDurationReached() {
        if (CamLog.DEBUG) {
            CamLog.d("VariableSourceMediaRecorder", "reached max duration.");
        }
        VariableSourceMediaRecorder.access$700(this.this$0).onMaxDurationReached();
    }

    @Override // com.sonyericsson.android.camera.recorder.utility.encoder.MediaEncoder$StateListener
    public void onMaxFileSizeReached() {
        if (CamLog.DEBUG) {
            CamLog.d("VariableSourceMediaRecorder", "reached max size.");
        }
        VariableSourceMediaRecorder.access$700(this.this$0).onMaxFileSizeReached();
    }

    @Override // com.sonyericsson.android.camera.recorder.utility.encoder.MediaEncoder$StateListener
    public void onStorageFull() {
        VariableSourceMediaRecorder.access$1000(this.this$0).stop();
        VariableSourceMediaRecorder.access$200(this.this$0).post(new VariableSourceMediaRecorder$MediaEncoderStateListener$ErrorNotificationTask(this, null));
    }
}

package com.sonyericsson.android.camera.recorder;

import com.sonyericsson.cameracommon.storage.RequestFactory$VideoSavingRequestBuilder;

public interface RecorderController$RecorderListener {
    void onRecordError(int i, int i2);

    void onRecordFinished(RecorderController$Result recorderController$Result);

    void onRecordProgress(long j);

    void setSavingRequestBuilder(RequestFactory$VideoSavingRequestBuilder requestFactory$VideoSavingRequestBuilder);
}

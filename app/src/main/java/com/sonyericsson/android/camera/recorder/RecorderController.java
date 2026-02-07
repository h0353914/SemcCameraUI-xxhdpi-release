package com.sonyericsson.android.camera.recorder;

import android.location.Location;
import android.support.annotation.Nullable;
import com.sonyericsson.cameracommon.storage.Storage$StorageWriteNotifier;

/* JADX INFO: loaded from: classes.dex */
public interface RecorderController {
    long getRecordingTimeMillis();

    boolean isPaused();

    boolean isReady();

    boolean isRecording();

    boolean isStarting();

    boolean isStopping();

    void pause() throws RecorderException;

    boolean prepare(RecorderParameters recorderParameters);

    boolean release();

    void resume() throws RecorderException;

    void setLocation(Location location);

    void setMaxDurationMillis(long j);

    void setMaxFileSizeBytes(long j);

    void setOrientationHint(int i);

    void setOutputFilePath(String str);

    void setStorageWriteNotifier(@Nullable Storage$StorageWriteNotifier storage$StorageWriteNotifier);

    void setUserSoundSetting(boolean z);

    void start() throws RecorderException;

    void stop() throws RecorderException;

    void stopAudioRecording();

    void stopOnCameraError() throws RecorderException;
}

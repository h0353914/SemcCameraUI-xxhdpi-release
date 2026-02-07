package com.sonyericsson.android.camera.recorder;

import android.content.Context;
import android.location.Location;
import android.view.Surface;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public interface RecorderInterface {
    Surface getSurface();

    boolean isAsyncStopSupported();

    void pause();

    boolean prepare(Context context, RecorderParameters recorderParameters);

    void release();

    void reset();

    void resume();

    void setListener(RecorderInterface$RecordTrackListener recorderInterface$RecordTrackListener, RecorderInterface$RecordTrackListener recorderInterface$RecordTrackListener2, RecorderInterface$OnErrorListener recorderInterface$OnErrorListener, RecorderInterface$OnMaxReachedListener recorderInterface$OnMaxReachedListener);

    void setLocation(Location location);

    void setMaxDurationMillis(long j);

    void setMaxFileSizeBytes(long j);

    void setOrientationHint(int i);

    void setOutputFilePath(String str);

    void start() throws IOException;

    void stop();

    void stopAsync();

    void stopAudioRecording();

    void stopOnCameraError();

    void waitUntilStopCompleted();
}

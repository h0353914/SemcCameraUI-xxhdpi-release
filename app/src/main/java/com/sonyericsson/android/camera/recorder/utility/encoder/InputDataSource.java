package com.sonyericsson.android.camera.recorder.utility.encoder;

public interface InputDataSource {
    void release();

    void start();

    void stop();
}

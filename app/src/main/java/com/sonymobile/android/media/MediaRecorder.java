package com.sonymobile.android.media;

import android.hardware.Camera;
import android.media.CamcorderProfile;
import android.media.MediaRecorder$OnErrorListener;
import android.media.MediaRecorder$OnInfoListener;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.view.Surface;
import com.sonymobile.android.media.internal.SomcMediaRecorder;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.ref.WeakReference;

public class MediaRecorder {
    public static final int MEDIA_ERROR_SERVER_DIED = 100;
    public static final int MEDIA_RECORDER_ERROR_UNKNOWN = 1;
    public static final int MEDIA_RECORDER_INFO_MAX_DURATION_REACHED = 800;
    public static final int MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED = 801;
    public static final int MEDIA_RECORDER_INFO_UNKNOWN = 1;
    public static final int MEDIA_RECORDER_TRACK_INFO_COMPLETION_STATUS = 1000;
    public static final int MEDIA_RECORDER_TRACK_INFO_DATA_KBYTES = 1009;
    public static final int MEDIA_RECORDER_TRACK_INFO_DURATION_MS = 1003;
    public static final int MEDIA_RECORDER_TRACK_INFO_ENCODED_FRAMES = 1005;
    public static final int MEDIA_RECORDER_TRACK_INFO_INITIAL_DELAY_MS = 1007;
    public static final int MEDIA_RECORDER_TRACK_INFO_LIST_END = 2000;
    public static final int MEDIA_RECORDER_TRACK_INFO_LIST_START = 1000;
    public static final int MEDIA_RECORDER_TRACK_INFO_MAX_CHUNK_DUR_MS = 1004;
    public static final int MEDIA_RECORDER_TRACK_INFO_PROGRESS_IN_TIME = 1001;
    public static final int MEDIA_RECORDER_TRACK_INFO_START_OFFSET_MS = 1008;
    public static final int MEDIA_RECORDER_TRACK_INFO_TYPE = 1002;
    public static final int MEDIA_RECORDER_TRACK_INTER_CHUNK_TIME_MS = 1006;
    private static final String TAG = "MediaRecorder";
    private boolean mIsAvailable;
    private MediaRecorder$OnErrorListener mOnErrorListener;
    private MediaRecorder$OnInfoListener mOnInfoListener;
    private SomcMediaRecorder mSomcMediaRecorder;

    static /* synthetic */ MediaRecorder$OnErrorListener access$000(MediaRecorder mediaRecorder) {
        return mediaRecorder.mOnErrorListener;
    }

    static /* synthetic */ boolean access$100(MediaRecorder mediaRecorder) {
        return mediaRecorder.mIsAvailable;
    }

    static /* synthetic */ MediaRecorder$OnInfoListener access$200(MediaRecorder mediaRecorder) {
        return mediaRecorder.mOnInfoListener;
    }

    public MediaRecorder() {
        MediaRecorder$CallbackHandler mediaRecorder$CallbackHandler;
        if (Looper.myLooper() != null) {
            mediaRecorder$CallbackHandler = new MediaRecorder$CallbackHandler(this, new WeakReference(this), Looper.myLooper());
        } else if (Looper.getMainLooper() != null) {
            mediaRecorder$CallbackHandler = new MediaRecorder$CallbackHandler(this, new WeakReference(this), Looper.getMainLooper());
        } else {
            throw new IllegalArgumentException("MediaRecorder must be created on thread with Looper running");
        }
        this.mSomcMediaRecorder = new SomcMediaRecorder(mediaRecorder$CallbackHandler);
    }

    public void stopAudioRecording() {
        this.mSomcMediaRecorder.stopAudioRecording();
    }

    public void setCamera(Camera camera) throws UnsupportedOperationException {
        throw new UnsupportedOperationException("Camera source not supported");
    }

    public Surface getSurface() {
        return this.mSomcMediaRecorder.getSurface();
    }

    public void setInputSurface(@NonNull Surface surface) {
        this.mSomcMediaRecorder.setInputSurface(surface);
    }

    public void setPreviewDisplay(Surface surface) {
        throw new UnsupportedOperationException("setPreviewDisplay not supported");
    }

    public void setAudioSource(int i) throws IllegalStateException {
        this.mSomcMediaRecorder.setAudioSource(i);
    }

    public static final int getAudioSourceMax() {
        return SomcMediaRecorder.getAudioSourceMax();
    }

    public void setVideoSource(int i) throws IllegalStateException {
        this.mSomcMediaRecorder.setVideoSource(i);
    }

    public void setProfile(CamcorderProfile camcorderProfile) {
        this.mSomcMediaRecorder.setProfile(camcorderProfile);
    }

    public void setCaptureRate(double d) {
        this.mSomcMediaRecorder.setCaptureRate(d);
    }

    public void setOrientationHint(int i) {
        this.mSomcMediaRecorder.setOrientationHint(i);
    }

    public void setLocation(float f, float f2) {
        this.mSomcMediaRecorder.setLocation(f, f2);
    }

    public void setOutputFormat(int i) throws IllegalStateException {
        this.mSomcMediaRecorder.setOutputFormat(i);
    }

    public void setVideoSize(int i, int i2) throws IllegalStateException {
        this.mSomcMediaRecorder.setVideoSize(i, i2);
    }

    public void setVideoFrameRate(int i) throws IllegalStateException {
        this.mSomcMediaRecorder.setVideoFrameRate(i);
    }

    public void setVideoEncodingProfileLevel(int i, int i2) {
        this.mSomcMediaRecorder.setVideoEncodingProfileLevel(i, i2);
    }

    public void setVideoBitRateMode(int i) {
        this.mSomcMediaRecorder.setVideoBitRateMode(i);
    }

    public void setVideoColorAspects(int i, int i2, int i3) {
        this.mSomcMediaRecorder.setVideoColorAspects(i, i2, i3);
    }

    public void setMaxDuration(int i) throws IllegalArgumentException {
        this.mSomcMediaRecorder.setMaxDuration(i);
    }

    public void setMaxFileSize(long j) throws IllegalArgumentException {
        this.mSomcMediaRecorder.setMaxFileSize(j);
    }

    public void setAudioEncoder(int i) throws IllegalStateException {
        this.mSomcMediaRecorder.setAudioEncoder(i);
    }

    public void setVideoEncoder(int i) throws IllegalStateException {
        this.mSomcMediaRecorder.setVideoEncoder(i);
    }

    public void setAudioSamplingRate(int i) {
        this.mSomcMediaRecorder.setAudioSamplingRate(i);
    }

    public void setAudioChannels(int i) {
        this.mSomcMediaRecorder.setAudioChannels(i);
    }

    public void setAudioEncodingBitRate(int i) {
        this.mSomcMediaRecorder.setAudioEncodingBitRate(i);
    }

    public void setVideoEncodingBitRate(int i) {
        this.mSomcMediaRecorder.setVideoEncodingBitRate(i);
    }

    public void setAuxiliaryOutputFile(FileDescriptor fileDescriptor) {
        throw new UnsupportedOperationException("setAuxiliaryOutputFile(FileDescriptor) unsupported");
    }

    public void setAuxiliaryOutputFile(String str) {
        throw new UnsupportedOperationException("setAuxiliaryOutputFile unsupported");
    }

    public void setOutputFile(FileDescriptor fileDescriptor) throws IllegalStateException {
        this.mSomcMediaRecorder.setOutputFile(fileDescriptor);
    }

    public void setOutputFile(String str) throws IllegalStateException {
        this.mSomcMediaRecorder.setOutputFile(str);
    }

    public void prepare() throws IllegalStateException, IOException {
        this.mSomcMediaRecorder.prepare();
        this.mIsAvailable = true;
    }

    public void start() throws IllegalStateException {
        this.mSomcMediaRecorder.start();
    }

    public void stop() throws IllegalStateException {
        try {
            this.mSomcMediaRecorder.stop();
        } finally {
            this.mIsAvailable = false;
        }
    }

    public void stopOnError() {
        try {
            this.mSomcMediaRecorder.stopOnCameraError();
        } finally {
            this.mIsAvailable = false;
        }
    }

    public void stopAsync() throws IllegalStateException {
        this.mSomcMediaRecorder.stopAsync();
    }

    public void waitUntilStopCompleted() throws IllegalStateException {
        try {
            this.mSomcMediaRecorder.waitUntilStopCompleted();
        } finally {
            this.mIsAvailable = false;
        }
    }

    public void pause() throws IllegalStateException {
        this.mSomcMediaRecorder.pause();
    }

    public void resume() throws IllegalStateException {
        this.mSomcMediaRecorder.resume();
    }

    public void reset() {
        this.mIsAvailable = false;
        this.mSomcMediaRecorder.reset();
    }

    public void setOnErrorListener(MediaRecorder$OnErrorListener mediaRecorder$OnErrorListener) {
        this.mOnErrorListener = mediaRecorder$OnErrorListener;
    }

    public void setOnInfoListener(MediaRecorder$OnInfoListener mediaRecorder$OnInfoListener) {
        this.mOnInfoListener = mediaRecorder$OnInfoListener;
    }

    public void release() {
        this.mSomcMediaRecorder.release();
    }

    public int getMaxAmplitude() throws IllegalStateException {
        throw new UnsupportedOperationException(" getMaxAmplitude unsupported");
    }

    public void requestProgressInfo(int i) {
        this.mSomcMediaRecorder.requestProgressInfo(i);
    }

    public void useIntelligentActive(boolean z) {
        this.mSomcMediaRecorder.useIntelligentActive(z);
    }

    public void adjustAudioTimestamp(long j) {
        this.mSomcMediaRecorder.adjustAudioTimestamp(j);
    }

    public void adjustAudioStartVolume(int i) {
        this.mSomcMediaRecorder.adjustAudioStartVolume(i);
    }

    public String dump(String str) {
        return this.mSomcMediaRecorder.dump(str);
    }

    protected void finalize() {
        if (this.mSomcMediaRecorder != null) {
            try {
                this.mSomcMediaRecorder.reset();
            } catch (IllegalStateException unused) {
            }
            try {
                this.mSomcMediaRecorder.release();
            } catch (IllegalStateException unused2) {
            }
        }
    }
}

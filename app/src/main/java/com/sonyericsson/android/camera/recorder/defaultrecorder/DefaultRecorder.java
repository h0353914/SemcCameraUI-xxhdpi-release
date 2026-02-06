package com.sonyericsson.android.camera.recorder.defaultrecorder;

import android.content.Context;
import android.location.Location;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.view.Surface;
import com.sonyericsson.android.camera.recorder.RecorderInterface;
import com.sonyericsson.android.camera.recorder.RecorderInterface$OnErrorListener;
import com.sonyericsson.android.camera.recorder.RecorderInterface$OnMaxReachedListener;
import com.sonyericsson.android.camera.recorder.RecorderInterface$RecordTrackListener;
import com.sonyericsson.android.camera.recorder.RecorderParameters;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;
import com.sonyericsson.cameracommon.storage.StorageUtil;
import com.sonymobile.android.media.MediaRecorderWrapper;
import java.io.FileNotFoundException;
import java.io.IOException;

public class DefaultRecorder implements RecorderInterface {
    private static final int DELAY_AUDIO_DURATION_IN_MILLIS = 100;
    private static final int MUTE_START_RECORD_SOUND_DURATION_IN_MILLIS = 900;
    private static final int REQUEST_PROGRESS_INTERVAL_IN_MILLIS = 1000;
    private static final String TAG = "DefaultRecorder";
    private static final boolean TRACE = false;
    private RecorderInterface$RecordTrackListener mAudioTrackListener;
    private ParcelFileDescriptor mDescriptor = null;
    private boolean mIsMicrophoneEnabled;
    private long mLastProgressMillis;
    private RecorderInterface$OnErrorListener mOnErrorListener;
    private RecorderInterface$OnMaxReachedListener mOnMaxReachedListener;
    private final MediaRecorderWrapper mRecorder;
    private final int mVideoSource;
    private RecorderInterface$RecordTrackListener mVideoTrackListener;

    static /* synthetic */ String access$200(int i) {
        return getNameForErrorCode(i);
    }

    static /* synthetic */ boolean access$300(DefaultRecorder defaultRecorder) {
        return defaultRecorder.mIsMicrophoneEnabled;
    }

    static /* synthetic */ long access$400(DefaultRecorder defaultRecorder) {
        return defaultRecorder.mLastProgressMillis;
    }

    static /* synthetic */ long access$402(DefaultRecorder defaultRecorder, long j) {
        defaultRecorder.mLastProgressMillis = j;
        return j;
    }

    private static void trace(String str) {
        CamLog.d(str);
    }

    public DefaultRecorder(int i, boolean z) {
        this.mVideoSource = i;
        this.mRecorder = new MediaRecorderWrapper(z);
        this.mRecorder.useIntelligentActive(z);
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public void setListener(RecorderInterface$RecordTrackListener recorderInterface$RecordTrackListener, RecorderInterface$RecordTrackListener recorderInterface$RecordTrackListener2, RecorderInterface$OnErrorListener recorderInterface$OnErrorListener, RecorderInterface$OnMaxReachedListener recorderInterface$OnMaxReachedListener) {
        this.mAudioTrackListener = recorderInterface$RecordTrackListener;
        this.mVideoTrackListener = recorderInterface$RecordTrackListener2;
        this.mOnErrorListener = recorderInterface$OnErrorListener;
        this.mOnMaxReachedListener = recorderInterface$OnMaxReachedListener;
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public Surface getSurface() {
        if (this.mVideoSource != 2) {
            throw new UnsupportedOperationException("This method is not supported with Surface source");
        }
        return this.mRecorder.getSurface();
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public boolean prepare(Context context, RecorderParameters recorderParameters) {
        this.mRecorder.setOnErrorListener(new DefaultRecorder$OnErrorListener(this.mOnErrorListener, null));
        this.mRecorder.setOnInfoListener(new DefaultRecorder$OnInfoListener(this, this.mAudioTrackListener, this.mVideoTrackListener, this.mOnMaxReachedListener, null));
        if (!setupParameters(context, recorderParameters)) {
            release();
            return false;
        }
        if (!prepareReceiveRecordingInfo()) {
            return false;
        }
        try {
            this.mRecorder.prepare();
            this.mLastProgressMillis = 0L;
            return true;
        } catch (IOException | IllegalStateException unused) {
            release();
            return false;
        }
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public void start() {
        this.mRecorder.start();
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public void stopAudioRecording() {
        this.mRecorder.stopAudioRecording();
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public void stop() {
        this.mRecorder.stop();
        if (this.mDescriptor != null) {
            try {
                this.mDescriptor.close();
            } catch (IOException e) {
                CamLog.w(e.getMessage());
            }
        }
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public void stopOnCameraError() {
        trace("stopOnCameraError() E");
        this.mRecorder.stopOnError();
        trace("stopOnCameraError() X");
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public boolean isAsyncStopSupported() {
        return this.mRecorder.isAsyncStopSupported();
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public void stopAsync() {
        this.mRecorder.stopAsync();
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public void waitUntilStopCompleted() {
        this.mRecorder.waitUntilStopCompleted();
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public void reset() {
        this.mRecorder.reset();
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public void release() {
        this.mRecorder.reset();
        this.mRecorder.release();
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public void resume() {
        this.mRecorder.resume();
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public void pause() {
        this.mRecorder.pause();
    }

    private boolean prepareReceiveRecordingInfo() {
        try {
            this.mRecorder.requestProgressInfo(1000);
            return true;
        } catch (UnsupportedOperationException unused) {
            return false;
        }
    }

    private boolean setupParameters(Context context, RecorderParameters recorderParameters) {
        if (recorderParameters.isMicrophoneEnabled()) {
            this.mRecorder.setAudioSource(5);
            this.mRecorder.setVideoSource(this.mVideoSource);
            this.mRecorder.setProfile(recorderParameters.profile());
            this.mIsMicrophoneEnabled = true;
        } else {
            this.mRecorder.setVideoSource(this.mVideoSource);
            this.mRecorder.setOutputFormat(recorderParameters.profile().fileFormat);
            this.mRecorder.setVideoFrameRate(recorderParameters.profile().videoFrameRate);
            this.mRecorder.setVideoSize(recorderParameters.profile().videoFrameWidth, recorderParameters.profile().videoFrameHeight);
            this.mRecorder.setVideoEncodingBitRate(recorderParameters.profile().videoBitRate);
            this.mRecorder.setVideoEncoder(recorderParameters.profile().videoCodec);
            this.mIsMicrophoneEnabled = false;
        }
        setVideoEncodingProfileLevel(recorderParameters);
        if (recorderParameters.hasMaxDuration()) {
            try {
                this.mRecorder.setMaxDuration(recorderParameters.maxDuration());
            } catch (RuntimeException unused) {
            }
        }
        if (recorderParameters.hasMaxFileSize()) {
            try {
                this.mRecorder.setMaxFileSize(recorderParameters.maxFileSize());
            } catch (RuntimeException unused2) {
            }
        }
        if (recorderParameters.hasLocation()) {
            this.mRecorder.setLocation((float) recorderParameters.location().getLatitude(), (float) recorderParameters.location().getLongitude());
        }
        if (recorderParameters.hasOrientationHint()) {
            this.mRecorder.setOrientationHint(recorderParameters.orientationHint());
        }
        setupOutput(context, recorderParameters.outputUri());
        adjustAudioSettings();
        return true;
    }

    private void setVideoEncodingProfileLevel(RecorderParameters recorderParameters) {
        if (recorderParameters == null || recorderParameters.profile() == null) {
            return;
        }
        int i = recorderParameters.profile().videoFrameWidth;
        int i2 = recorderParameters.profile().videoFrameHeight;
        if (recorderParameters.isHdr()) {
            this.mRecorder.setVideoEncodingProfileLevel(PlatformCapability.getVideoHdrRecordingProfile(), 1);
            return;
        }
        if (i >= 3840 && i2 >= 2160) {
            if (recorderParameters.profile().videoCodec == 2) {
                this.mRecorder.setVideoEncodingProfileLevel(8, 1);
                return;
            } else {
                this.mRecorder.setVideoEncodingProfileLevel(1, 1);
                return;
            }
        }
        if (i >= 640 && i2 >= 480) {
            this.mRecorder.setVideoEncodingProfileLevel(8, 1);
        } else {
            this.mRecorder.setVideoEncodingProfileLevel(1, 1);
        }
    }

    private boolean setupOutput(Context context, Uri uri) {
        if (uri.getScheme().equalsIgnoreCase("content")) {
            try {
                this.mDescriptor = context.getContentResolver().openFileDescriptor(uri, "rw");
                if (this.mDescriptor == null) {
                    CamLog.e("openFileDescriptor fd is null.");
                    return false;
                }
                try {
                    this.mRecorder.setOutputFile(this.mDescriptor.getFileDescriptor());
                    return true;
                } catch (UnsupportedOperationException e) {
                    CamLog.e("setOutputFile() failed.", e);
                    return false;
                }
            } catch (FileNotFoundException e2) {
                CamLog.e("openFileDescriptor failed.", e2);
                return false;
            }
        }
        if (!uri.getScheme().equalsIgnoreCase("file")) {
            return false;
        }
        if (StorageUtil.getStorageTypeFromUri(uri, context) != Storage$StorageType.EXTERNAL_CARD) {
            this.mRecorder.setOutputFile(uri.getPath());
            return true;
        }
        Uri sdCardGrantedUri = StorageUtil.getSdCardGrantedUri(context);
        try {
            this.mDescriptor = context.getContentResolver().openFileDescriptor(StorageUtil.createFile(context, sdCardGrantedUri, StorageUtil.getPathAfterDcim(sdCardGrantedUri, uri.getPath())), "rw");
            if (this.mDescriptor == null) {
                CamLog.e("openFileDescriptor fd is null.");
                return false;
            }
            this.mRecorder.setOutputFile(this.mDescriptor.getFileDescriptor());
            return true;
        } catch (FileNotFoundException e3) {
            CamLog.e("openFileDescriptor failed.", e3);
            return false;
        }
    }

    private void adjustAudioSettings() {
        this.mRecorder.adjustAudioStartVolume(900);
        this.mRecorder.adjustAudioTimestamp(100L);
    }

    private static String getNameForErrorCode(int i) {
        if (i == 1) {
            return "MEDIA_RECORDER_ERROR_UNKNOWN";
        }
        if (i == 100) {
            return "MEDIA_ERROR_SERVER_DIED";
        }
        return "unknown:" + i;
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public void setLocation(Location location) {
        throw new UnsupportedOperationException("setLocation() is not supported.");
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public void setMaxDurationMillis(long j) {
        throw new UnsupportedOperationException("setMaxDurationMillis() is not supported.");
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public void setMaxFileSizeBytes(long j) {
        throw new UnsupportedOperationException("setMaxFileSizeBytes() is not supported.");
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public void setOutputFilePath(String str) {
        throw new UnsupportedOperationException("setOutputFilePath() is not supported.");
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public void setOrientationHint(int i) {
        throw new UnsupportedOperationException("setOrientationHint() is not supported.");
    }
}

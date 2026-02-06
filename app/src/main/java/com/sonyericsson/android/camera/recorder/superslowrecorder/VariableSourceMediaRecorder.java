package com.sonyericsson.android.camera.recorder.superslowrecorder;

import android.content.Context;
import android.location.Location;
import android.media.CamcorderProfile;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.net.Uri;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.view.Surface;
import com.sonyericsson.android.camera.recorder.RecorderInterface;
import com.sonyericsson.android.camera.recorder.RecorderInterface$OnErrorListener;
import com.sonyericsson.android.camera.recorder.RecorderInterface$OnMaxReachedListener;
import com.sonyericsson.android.camera.recorder.RecorderInterface$RecordTrackListener;
import com.sonyericsson.android.camera.recorder.RecorderParameters;
import com.sonyericsson.android.camera.recorder.utility.FpsMonitor;
import com.sonyericsson.android.camera.recorder.utility.encoder.InputDataInfo;
import com.sonyericsson.android.camera.recorder.utility.encoder.MediaEncoder;
import com.sonyericsson.android.camera.recorder.utility.encoder.source.VideoFrameSource;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;
import com.sonyericsson.cameracommon.storage.StorageUtil;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public class VariableSourceMediaRecorder implements RecorderInterface {
    private static final String AUDIO_MIMETYPE = "audio/mp4a-latm";
    private static final boolean ENABLE_MONITOR_FPS = false;
    private static final int I_FRAME_INTERVAL_SECONDS = 1;
    private static final long PROGRESS_NOTIFICATION_INTERVAL_MILLIS = 1000;
    private static final long STOP_RECORDING_TIME_OUT_MILLIS = 5000;
    private static final String TAG = "VariableSourceMediaRecorder";
    private static final boolean TRACE = false;
    private static final String VIDEO_MIMETYPE = "video/avc";
    private RecorderInterface$RecordTrackListener mAudioTrackListener;
    private Context mContext;
    private MediaEncoder mEncoder;
    private InputDataInfo[] mInputDataInfos;
    private VariableSourceMediaRecorder$InputDataSourceFactory mInputDataSourceFactory;
    private Location mLocation;
    private long mMaxDurationMillis;
    private long mMaxFileSizeBytes;
    private RecorderInterface$OnErrorListener mOnErrorListener;
    private RecorderInterface$OnMaxReachedListener mOnMaxReachedListener;
    private final int mOperatingRate;
    private int mOrientationHint;
    private String mOutputPath;
    private volatile boolean mResult;
    private Surface mSurface;
    private RecorderInterface$RecordTrackListener mVideoTrackListener;
    private CountDownLatch mWaitUntilStarted;
    private CountDownLatch mWaitUntilStoped;
    private VariableSourceMediaRecorder$State mState = VariableSourceMediaRecorder$State.IDLE;
    private final Handler mHandler = new Handler();
    private final FpsMonitor mFpsMonitor = null;

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public boolean isAsyncStopSupported() {
        return false;
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public void stopAudioRecording() {
    }

    static /* synthetic */ CountDownLatch access$000(VariableSourceMediaRecorder variableSourceMediaRecorder) {
        return variableSourceMediaRecorder.mWaitUntilStarted;
    }

    static /* synthetic */ MediaEncoder access$1000(VariableSourceMediaRecorder variableSourceMediaRecorder) {
        return variableSourceMediaRecorder.mEncoder;
    }

    static /* synthetic */ RecorderInterface$OnErrorListener access$1200(VariableSourceMediaRecorder variableSourceMediaRecorder) {
        return variableSourceMediaRecorder.mOnErrorListener;
    }

    static /* synthetic */ Handler access$200(VariableSourceMediaRecorder variableSourceMediaRecorder) {
        return variableSourceMediaRecorder.mHandler;
    }

    static /* synthetic */ String access$300(VariableSourceMediaRecorder variableSourceMediaRecorder) {
        return variableSourceMediaRecorder.mOutputPath;
    }

    static /* synthetic */ boolean access$402(VariableSourceMediaRecorder variableSourceMediaRecorder, boolean z) {
        variableSourceMediaRecorder.mResult = z;
        return z;
    }

    static /* synthetic */ CountDownLatch access$500(VariableSourceMediaRecorder variableSourceMediaRecorder) {
        return variableSourceMediaRecorder.mWaitUntilStoped;
    }

    static /* synthetic */ RecorderInterface$OnMaxReachedListener access$700(VariableSourceMediaRecorder variableSourceMediaRecorder) {
        return variableSourceMediaRecorder.mOnMaxReachedListener;
    }

    static /* synthetic */ RecorderInterface$RecordTrackListener access$800(VariableSourceMediaRecorder variableSourceMediaRecorder) {
        return variableSourceMediaRecorder.mAudioTrackListener;
    }

    static /* synthetic */ RecorderInterface$RecordTrackListener access$900(VariableSourceMediaRecorder variableSourceMediaRecorder) {
        return variableSourceMediaRecorder.mVideoTrackListener;
    }

    private static void trace(String str) {
        CamLog.d(str);
    }

    public VariableSourceMediaRecorder(int i) {
        this.mOperatingRate = i;
    }

    public void setInputDataSourceFactory(VariableSourceMediaRecorder$InputDataSourceFactory variableSourceMediaRecorder$InputDataSourceFactory) {
        if (variableSourceMediaRecorder$InputDataSourceFactory == null) {
            throw new IllegalArgumentException("This method cannot accept null as InputDataSourceFactory.");
        }
        this.mInputDataSourceFactory = variableSourceMediaRecorder$InputDataSourceFactory;
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
        return this.mSurface;
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public boolean prepare(Context context, RecorderParameters recorderParameters) {
        if (this.mState != VariableSourceMediaRecorder$State.IDLE) {
            throw new IllegalStateException();
        }
        this.mLocation = recorderParameters.location();
        this.mOrientationHint = recorderParameters.orientationHint();
        this.mOutputPath = recorderParameters.outputUri().getPath();
        this.mMaxDurationMillis = recorderParameters.maxDuration();
        this.mMaxFileSizeBytes = recorderParameters.maxFileSize();
        this.mContext = context;
        boolean zIsMicrophoneEnabled = recorderParameters.isMicrophoneEnabled();
        CamcorderProfile camcorderProfileProfile = recorderParameters.profile();
        if (this.mFpsMonitor != null) {
            this.mFpsMonitor.reset();
        }
        try {
            if (zIsMicrophoneEnabled) {
                this.mInputDataInfos = new InputDataInfo[2];
                this.mInputDataInfos[0] = createVideoInputStreamInfo(camcorderProfileProfile);
                this.mInputDataInfos[1] = createAudioInputStreamInfo(camcorderProfileProfile);
            } else {
                this.mInputDataInfos = new InputDataInfo[1];
                this.mInputDataInfos[0] = createVideoInputStreamInfo(camcorderProfileProfile);
            }
            this.mOutputPath = recorderParameters.outputUri().getPath();
            return true;
        } catch (IOException e) {
            if (this.mInputDataInfos != null) {
                for (InputDataInfo inputDataInfo : this.mInputDataInfos) {
                    inputDataInfo.codec.release();
                    inputDataInfo.source.release();
                }
                this.mInputDataInfos = null;
            }
            CamLog.e("prepare() failed : " + e.getMessage());
            return false;
        }
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public void start() throws IOException {
        FileDescriptor fileDescriptor;
        if (this.mState != VariableSourceMediaRecorder$State.IDLE || this.mContext == null) {
            throw new IllegalStateException();
        }
        if (StorageUtil.getStorageTypeFromPath(this.mOutputPath, this.mContext) == Storage$StorageType.EXTERNAL_CARD) {
            Uri sdCardGrantedUri = StorageUtil.getSdCardGrantedUri(this.mContext);
            try {
                ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = this.mContext.getContentResolver().openFileDescriptor(StorageUtil.createFile(this.mContext, sdCardGrantedUri, StorageUtil.getPathAfterDcim(sdCardGrantedUri, this.mOutputPath)), "rw");
                if (parcelFileDescriptorOpenFileDescriptor == null) {
                    CamLog.e("openFileDescriptor fd is null.");
                    throw new RuntimeException("openFileDescriptor fd is null.");
                }
                fileDescriptor = parcelFileDescriptorOpenFileDescriptor.getFileDescriptor();
                this.mOutputPath = null;
            } catch (FileNotFoundException e) {
                CamLog.e("openFileDescriptor failed.", e);
                throw new RuntimeException(e);
            }
        } else {
            fileDescriptor = null;
        }
        try {
            this.mEncoder = new MediaEncoder(this.mInputDataInfos, this.mOutputPath, fileDescriptor, new VariableSourceMediaRecorder$MediaEncoderStateListener(this));
            this.mEncoder.setOrientationHint(this.mOrientationHint);
            this.mEncoder.setMaxDuration(this.mMaxDurationMillis);
            this.mEncoder.setMaxFileSize(this.mMaxFileSizeBytes);
            if (this.mLocation != null) {
                this.mEncoder.setLocation((float) this.mLocation.getLatitude(), (float) this.mLocation.getLongitude());
            }
            this.mInputDataInfos = null;
            this.mWaitUntilStarted = new CountDownLatch(1);
            this.mWaitUntilStoped = new CountDownLatch(1);
            this.mState = VariableSourceMediaRecorder$State.RUNNING;
            this.mEncoder.start();
            try {
                this.mWaitUntilStarted.await();
            } catch (InterruptedException e2) {
                throw new RuntimeException(e2);
            }
        } catch (IOException e3) {
            CamLog.e("start() failed : " + e3.getMessage());
            throw e3;
        }
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public void stop() {
        if (this.mState != VariableSourceMediaRecorder$State.IDLE) {
            this.mEncoder.stop();
            this.mEncoder = null;
        }
        if (this.mFpsMonitor != null) {
            CamLog.d("FPS_MONITOR:" + this.mFpsMonitor.dump());
        }
        try {
            if (!this.mWaitUntilStoped.await(5000L, TimeUnit.MILLISECONDS)) {
                CamLog.e("Encoder doesn't finish correctly. Video file may be corrupt.");
            }
            this.mState = VariableSourceMediaRecorder$State.IDLE;
            if (!this.mResult) {
                throw new RuntimeException("recording failed.");
            }
        } catch (InterruptedException e) {
            CamLog.e("stop failed due to interruption.", e);
            throw new RuntimeException(e);
        }
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public void stopAsync() {
        throw new UnsupportedOperationException("#stopAsync() only supported by SomeMediaRecorder");
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public void waitUntilStopCompleted() {
        throw new UnsupportedOperationException("#stopAsync() only supported by SomeMediaRecorder");
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public void reset() {
        this.mEncoder = null;
        this.mState = VariableSourceMediaRecorder$State.IDLE;
        if (this.mInputDataInfos != null) {
            for (InputDataInfo inputDataInfo : this.mInputDataInfos) {
                inputDataInfo.codec.release();
                inputDataInfo.source.release();
            }
            this.mInputDataInfos = null;
        }
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public void stopOnCameraError() {
        trace("stopOnCameraError() E");
        stop();
        trace("stopOnCameraError() X");
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public void release() {
        if (this.mState != VariableSourceMediaRecorder$State.IDLE) {
            stop();
        } else {
            reset();
        }
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public void resume() {
        throw new UnsupportedOperationException("This method is not supported");
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public void pause() {
        throw new UnsupportedOperationException("This method is not supported");
    }

    private MediaFormat createVideoFormat(String str, CamcorderProfile camcorderProfile) {
        MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat(str, camcorderProfile.videoFrameWidth, camcorderProfile.videoFrameHeight);
        mediaFormatCreateVideoFormat.setInteger("color-format", 2130708361);
        mediaFormatCreateVideoFormat.setInteger("bitrate", camcorderProfile.videoBitRate);
        mediaFormatCreateVideoFormat.setInteger("frame-rate", camcorderProfile.videoFrameRate);
        mediaFormatCreateVideoFormat.setInteger("i-frame-interval", 1);
        mediaFormatCreateVideoFormat.setInteger("operating-rate", this.mOperatingRate);
        if (camcorderProfile.videoFrameWidth >= 3840 && camcorderProfile.videoFrameHeight >= 2160) {
            if (camcorderProfile.videoCodec == 2) {
                mediaFormatCreateVideoFormat.setInteger("profile", 8);
                mediaFormatCreateVideoFormat.setInteger("level", 1);
            } else {
                mediaFormatCreateVideoFormat.setInteger("profile", 1);
                mediaFormatCreateVideoFormat.setInteger("level", 1);
            }
        } else if (camcorderProfile.videoFrameWidth >= 640 && camcorderProfile.videoFrameHeight >= 480) {
            mediaFormatCreateVideoFormat.setInteger("profile", 8);
            mediaFormatCreateVideoFormat.setInteger("level", 1);
        } else {
            mediaFormatCreateVideoFormat.setInteger("profile", 1);
            mediaFormatCreateVideoFormat.setInteger("level", 1);
        }
        return mediaFormatCreateVideoFormat;
    }

    private MediaFormat createAudioFormat(String str, CamcorderProfile camcorderProfile) {
        MediaFormat mediaFormatCreateAudioFormat = MediaFormat.createAudioFormat(str, camcorderProfile.audioSampleRate, camcorderProfile.audioChannels);
        mediaFormatCreateAudioFormat.setInteger("bitrate", camcorderProfile.audioBitRate);
        mediaFormatCreateAudioFormat.setInteger("aac-profile", 2);
        return mediaFormatCreateAudioFormat;
    }

    private InputDataInfo createVideoInputStreamInfo(CamcorderProfile camcorderProfile) throws IOException {
        MediaFormat mediaFormatCreateVideoFormat = createVideoFormat("video/avc", camcorderProfile);
        MediaCodec mediaCodecCreateEncoderByType = MediaCodec.createEncoderByType("video/avc");
        mediaCodecCreateEncoderByType.configure(mediaFormatCreateVideoFormat, (Surface) null, (MediaCrypto) null, 1);
        VideoFrameSource videoFrameSourceCreateVideoSource = this.mInputDataSourceFactory.createVideoSource(mediaCodecCreateEncoderByType, camcorderProfile);
        this.mSurface = videoFrameSourceCreateVideoSource.createInputSurface();
        return InputDataInfo.create(mediaFormatCreateVideoFormat, mediaCodecCreateEncoderByType, videoFrameSourceCreateVideoSource);
    }

    private InputDataInfo createAudioInputStreamInfo(CamcorderProfile camcorderProfile) throws IOException {
        MediaFormat mediaFormatCreateAudioFormat = createAudioFormat("audio/mp4a-latm", camcorderProfile);
        MediaCodec mediaCodecCreateEncoderByType = MediaCodec.createEncoderByType("audio/mp4a-latm");
        mediaCodecCreateEncoderByType.configure(mediaFormatCreateAudioFormat, (Surface) null, (MediaCrypto) null, 1);
        return InputDataInfo.create(mediaFormatCreateAudioFormat, mediaCodecCreateEncoderByType, this.mInputDataSourceFactory.createAudioSource(mediaCodecCreateEncoderByType, camcorderProfile));
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public void setLocation(Location location) {
        this.mLocation = location;
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public void setMaxDurationMillis(long j) {
        this.mMaxDurationMillis = j;
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public void setMaxFileSizeBytes(long j) {
        this.mMaxFileSizeBytes = Math.min(j, 256000000000L);
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public void setOutputFilePath(String str) {
        this.mOutputPath = str;
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface
    public void setOrientationHint(int i) {
        this.mOrientationHint = i;
    }
}

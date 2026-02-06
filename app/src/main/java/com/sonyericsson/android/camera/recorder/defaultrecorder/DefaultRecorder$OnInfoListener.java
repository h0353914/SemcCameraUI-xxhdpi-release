package com.sonyericsson.android.camera.recorder.defaultrecorder;

import android.media.MediaRecorder$OnInfoListener;
import com.sonyericsson.android.camera.recorder.RecorderInterface$OnMaxReachedListener;
import com.sonyericsson.android.camera.recorder.RecorderInterface$RecordTrackListener;
import com.sonymobile.android.media.MediaRecorder;

class DefaultRecorder$OnInfoListener implements MediaRecorder$OnInfoListener {
    private static final int MEDIA_RECORDER_INFO_KIND_MASK = 15;
    private static final int MEDIA_RECORDER_INFO_KIND_SHIFT = 28;
    private static final int MEDIA_RECORDER_INFO_KIND_VIDEO = 1;
    private static final int MEDIA_RECORDER_INFO_KIND_VIDEO_AUDIO = 2;
    private static final int MEDIA_RECORDER_INFO_MASK = 268435455;
    private final RecorderInterface$RecordTrackListener mAudioTrackListener;
    private boolean mIsAudioTrackStarted;
    private boolean mIsVideoTrackStarted;
    private final RecorderInterface$OnMaxReachedListener mOnMaxReachedListener;
    private final RecorderInterface$RecordTrackListener mVideoTrackListener;
    final /* synthetic */ DefaultRecorder this$0;

    /* synthetic */ DefaultRecorder$OnInfoListener(DefaultRecorder defaultRecorder, RecorderInterface$RecordTrackListener recorderInterface$RecordTrackListener, RecorderInterface$RecordTrackListener recorderInterface$RecordTrackListener2, RecorderInterface$OnMaxReachedListener recorderInterface$OnMaxReachedListener, DefaultRecorder$1 defaultRecorder$1) {
        this(defaultRecorder, recorderInterface$RecordTrackListener, recorderInterface$RecordTrackListener2, recorderInterface$OnMaxReachedListener);
    }

    private DefaultRecorder$OnInfoListener(DefaultRecorder defaultRecorder, RecorderInterface$RecordTrackListener recorderInterface$RecordTrackListener, RecorderInterface$RecordTrackListener recorderInterface$RecordTrackListener2, RecorderInterface$OnMaxReachedListener recorderInterface$OnMaxReachedListener) {
        this.this$0 = defaultRecorder;
        this.mAudioTrackListener = recorderInterface$RecordTrackListener;
        this.mVideoTrackListener = recorderInterface$RecordTrackListener2;
        this.mOnMaxReachedListener = recorderInterface$OnMaxReachedListener;
        this.mIsAudioTrackStarted = false;
        this.mIsVideoTrackStarted = false;
    }

    private void onInfo(MediaRecorder mediaRecorder, int i, int i2) {
        int i3 = 268435455 & i;
        int i4 = (i >> 28) & 15;
        switch (i3) {
            case 800:
                this.mOnMaxReachedListener.onMaxDurationReached();
                break;
            case 801:
                this.mOnMaxReachedListener.onMaxFileSizeReached();
                break;
            case 1000:
                onCompleted(i4);
                break;
            case 1001:
                onProgress(i2, i4);
                break;
        }
    }

    @Override // android.media.MediaRecorder$OnInfoListener
    public void onInfo(android.media.MediaRecorder mediaRecorder, int i, int i2) {
        onInfo((MediaRecorder) null, i, i2);
    }

    private void onCompleted(int i) {
        if (DefaultRecorder.access$300(this.this$0) && i == 2) {
            this.mAudioTrackListener.onCompleted();
        } else {
            if (DefaultRecorder.access$300(this.this$0) || i != 1) {
                return;
            }
            this.mVideoTrackListener.onCompleted();
        }
    }

    private void onProgress(int i, int i2) {
        if (!DefaultRecorder.access$300(this.this$0)) {
            if (i2 == 1) {
                if (!this.mIsVideoTrackStarted) {
                    this.mVideoTrackListener.onStarted();
                    this.mIsVideoTrackStarted = true;
                }
                DefaultRecorder.access$402(this.this$0, DefaultRecorder.access$400(this.this$0) + ((long) i));
                this.mVideoTrackListener.onProgress(DefaultRecorder.access$400(this.this$0));
                return;
            }
            return;
        }
        if (i2 == 2) {
            if (!this.mIsAudioTrackStarted) {
                this.mAudioTrackListener.onStarted();
                this.mIsAudioTrackStarted = true;
            }
            DefaultRecorder.access$402(this.this$0, DefaultRecorder.access$400(this.this$0) + ((long) i));
            this.mAudioTrackListener.onProgress(DefaultRecorder.access$400(this.this$0));
            return;
        }
        if (i2 != 1 || this.mIsVideoTrackStarted) {
            return;
        }
        this.mVideoTrackListener.onStarted();
        this.mIsVideoTrackStarted = true;
    }
}

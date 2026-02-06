package com.sonyericsson.android.camera.recorder.utility.encoder;

import android.media.MediaCodec;
import android.media.MediaCodec$BufferInfo;
import android.media.MediaFormat;
import com.sonyericsson.android.camera.util.CamLog;
import java.nio.ByteBuffer;

class EncodedDataWriteTask implements Runnable {
    private static final long OUTPUTBUFFER_TIMEOUT_NANOSECONDS = 100000000;
    public static final String TAG = "EncodedDataWriteTask";
    private static boolean TRACE;
    private final MediaCodec mCodec;
    private final EncodedDataWriteTask$EncoderStateListener mListener;
    private final MediaMuxerWrapper mMuxer;
    private int mMuxerIndex;
    private final String mName;

    public EncodedDataWriteTask(MediaMuxerWrapper mediaMuxerWrapper, MediaCodec mediaCodec, EncodedDataWriteTask$EncoderStateListener encodedDataWriteTask$EncoderStateListener, String str) {
        this.mName = str;
        this.mMuxer = mediaMuxerWrapper;
        this.mCodec = mediaCodec;
        this.mListener = encodedDataWriteTask$EncoderStateListener;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (awaitEncoderFormat()) {
            ByteBuffer[] outputBuffers = this.mCodec.getOutputBuffers();
            MediaCodec$BufferInfo mediaCodec$BufferInfo = new MediaCodec$BufferInfo();
            MediaFormat outputFormat = this.mCodec.getOutputFormat();
            synchronized (this.mMuxer) {
                if (TRACE) {
                    CamLog.d(this.mName + " ADD TRACK (" + outputFormat + "): E");
                }
                this.mMuxerIndex = this.mMuxer.addTrack(outputFormat);
                if (TRACE) {
                    CamLog.d(this.mName + " ADD TRACK (" + outputFormat + "): X");
                }
            }
            if (this.mListener != null) {
                this.mListener.onEncoderFormatChanged(outputFormat);
            }
            while (true) {
                if (canceled()) {
                    break;
                }
                try {
                    int iDequeueOutputBuffer = this.mCodec.dequeueOutputBuffer(mediaCodec$BufferInfo, 100000000L);
                    if (iDequeueOutputBuffer == -1) {
                        if (TRACE) {
                            CamLog.d(this.mName + " INFO_TRY_AGAIN_LATER");
                        }
                        if (canceled()) {
                            if (TRACE) {
                                CamLog.d(this.mName + " CANCELED");
                            }
                        }
                    } else if (iDequeueOutputBuffer >= 0) {
                        if (canceled()) {
                            mediaCodec$BufferInfo.flags |= 4;
                        }
                        if (TRACE) {
                            CamLog.d(this.mName + " PULL SAMPLE DATA presentationTime:" + mediaCodec$BufferInfo.presentationTimeUs + " flag:" + mediaCodec$BufferInfo.flags);
                        }
                        ByteBuffer byteBuffer = outputBuffers[iDequeueOutputBuffer];
                        if ((mediaCodec$BufferInfo.flags & 2) == 0) {
                            synchronized (this.mMuxer) {
                                this.mMuxer.writeSampleData(this.mMuxerIndex, byteBuffer, mediaCodec$BufferInfo);
                            }
                        }
                        this.mCodec.releaseOutputBuffer(iDequeueOutputBuffer, false);
                        if (canceled()) {
                            if (TRACE) {
                                CamLog.d(this.mName + " CANCELED");
                            }
                        } else if ((mediaCodec$BufferInfo.flags & 4) == 4) {
                            if (TRACE) {
                                CamLog.d(this.mName + " BUFFER_FLAG_END_OF_STREAM");
                            }
                        }
                    } else if (iDequeueOutputBuffer == -3) {
                        if (TRACE) {
                            CamLog.d(this.mName + " INFO_OUTPUT_BUFFERS_CHANGED");
                        }
                        outputBuffers = this.mCodec.getOutputBuffers();
                    } else if (iDequeueOutputBuffer == -2 && TRACE) {
                        CamLog.d(this.mName + " INFO_OUTPUT_FORMAT_CHANGED");
                    }
                } catch (IllegalStateException e) {
                    CamLog.e(e + " occurred. Maybe camera server is dead.", e);
                }
            }
            if (this.mListener != null) {
                this.mListener.onEncoderFinished();
            }
        }
    }

    private boolean awaitEncoderFormat() {
        if (TRACE) {
            CamLog.d(this.mName + " awaitEncoderFormat E");
        }
        MediaCodec$BufferInfo mediaCodec$BufferInfo = new MediaCodec$BufferInfo();
        while (!canceled()) {
            int iDequeueOutputBuffer = this.mCodec.dequeueOutputBuffer(mediaCodec$BufferInfo, 100000000L);
            if (iDequeueOutputBuffer == -2) {
                if (TRACE) {
                    CamLog.d(this.mName + " INFO_OUTPUT_FORMAT_CHANGED");
                }
                return true;
            }
            if (TRACE) {
                CamLog.d(this.mName + " INFO_OUTPUT:" + iDequeueOutputBuffer);
            }
        }
        if (TRACE) {
            CamLog.d(this.mName + " awaitEncoderFormat X");
        }
        return false;
    }

    private static boolean canceled() {
        return Thread.currentThread().isInterrupted();
    }
}

package com.sonymobile.android.media.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
class AudioTrack$AudioRecordHandler extends Handler {
    final /* synthetic */ AudioTrack this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AudioTrack$AudioRecordHandler(AudioTrack audioTrack, Looper looper) {
        super(looper);
        this.this$0 = audioTrack;
    }

    private void doHandleInputBuffer(int i) throws IllegalStateException {
        int i2;
        int i3;
        ByteBuffer inputBuffer = this.this$0.mEncoder.getInputBuffer(i);
        long jAccess$100 = AudioTrack.access$100(this.this$0) + AudioTrack.access$200(this.this$0);
        int i4 = AudioTrack.access$400(this.this$0).read(inputBuffer, AudioTrack.access$300(this.this$0));
        long jAccess$500 = (1000000 * ((long) ((i4 / AudioTrack.access$500(this.this$0)) / AudioTrack.access$600(this.this$0)))) / ((long) AudioTrack.access$700(this.this$0));
        if (this.this$0.mState == Track$States.PAUSED && AudioTrack.access$100(this.this$0) + jAccess$500 > this.this$0.mClock.getDurationAtPauseUs()) {
            if (!this.this$0.mIsPauseLatchDown) {
                this.this$0.mPauseLatch.countDown();
                this.this$0.mIsPauseLatchDown = true;
            }
            if (inputBuffer == null || AudioTrack.access$800(this.this$0)) {
                return;
            }
            if (AudioTrack.access$300(this.this$0) > inputBuffer.limit()) {
                AudioTrack.access$302(this.this$0, inputBuffer.limit());
            }
            if (i4 < 0) {
                Log.e("AudioTrack", "Read audio data is empty.");
                AudioTrack.access$900(this.this$0).obtainMessage(1, 4, 0).sendToTarget();
                return;
            } else {
                AudioTrack.access$1000(this.this$0).sendMessageDelayed(AudioTrack.access$1000(this.this$0).obtainMessage(102, i, 0), 1L);
                return;
            }
        }
        if (this.this$0.mState == Track$States.STOPPED || inputBuffer == null || AudioTrack.access$800(this.this$0)) {
            return;
        }
        if (AudioTrack.access$300(this.this$0) > inputBuffer.limit()) {
            AudioTrack.access$302(this.this$0, inputBuffer.limit());
        }
        if (jAccess$100 < AudioTrack.access$1100(this.this$0)) {
            byte[] bArr = new byte[i4];
            Arrays.fill(bArr, (byte) 0);
            inputBuffer.put(bArr);
        }
        AudioTrack.access$102(this.this$0, AudioTrack.access$100(this.this$0) + jAccess$500);
        if (this.this$0.mState == Track$States.STOPPING) {
            AudioTrack.access$802(this.this$0, true);
            i3 = i4 >= 0 ? i4 : 0;
            i2 = 4;
        } else if (i4 < 0) {
            Log.e("AudioTrack", "Read audio data is empty.");
            AudioTrack.access$900(this.this$0).obtainMessage(1, 4, 0).sendToTarget();
            return;
        } else {
            i2 = 0;
            i3 = i4;
        }
        this.this$0.mEncoder.queueInputBuffer(i, 0, i3, jAccess$100, i2);
    }

    private void doStartAudioRecorder() {
        AudioTrack.access$802(this.this$0, false);
        AudioTrack.access$1202(this.this$0, true);
        try {
            AudioTrack.access$400(this.this$0).startRecording();
        } catch (IllegalStateException unused) {
            Log.e("AudioTrack", "Could not start audio recorder, illegal state");
            AudioTrack.access$900(this.this$0).obtainMessage(1, 4, 3);
        }
        this.this$0.mEncoder.start();
        this.this$0.mState = Track$States.STARTED;
    }

    private void doStopAudioRecorder() {
        if (AudioTrack.access$400(this.this$0) != null) {
            try {
                AudioTrack.access$400(this.this$0).stop();
            } catch (IllegalStateException unused) {
                Log.e("AudioTrack", "Could not stop audio recorder, illegal state");
                AudioTrack.access$900(this.this$0).obtainMessage(1, 4, 3);
            }
        }
        this.this$0.mState = Track$States.STOPPING;
    }

    private void doReleaseAudioRecorder() {
        if (AudioTrack.access$400(this.this$0) != null) {
            AudioTrack.access$400(this.this$0).release();
            AudioTrack.access$402(this.this$0, null);
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        if (i == 102) {
            try {
                doHandleInputBuffer(message.arg1);
            } catch (IllegalStateException unused) {
                return;
            }
        }
        switch (i) {
            case 107:
                doStopAudioRecorder();
                Message messageObtainMessage = ((Handler) message.obj).obtainMessage();
                messageObtainMessage.obj = new Object();
                messageObtainMessage.sendToTarget();
                break;
            case 108:
                doReleaseAudioRecorder();
                Message messageObtainMessage2 = ((Handler) message.obj).obtainMessage();
                messageObtainMessage2.obj = new Object();
                messageObtainMessage2.sendToTarget();
                break;
            case 109:
                doStartAudioRecorder();
                Message messageObtainMessage3 = ((Handler) message.obj).obtainMessage();
                messageObtainMessage3.obj = new Object();
                messageObtainMessage3.sendToTarget();
                break;
        }
    }
}

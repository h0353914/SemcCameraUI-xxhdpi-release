package com.sonyericsson.android.camera.recorder.utility.encoder.source;

class MutableAudioSampleDataSource$1 implements Runnable {
    final /* synthetic */ MutableAudioSampleDataSource this$0;
    final /* synthetic */ boolean val$eos;
    final /* synthetic */ byte[] val$inputByteArray;

    MutableAudioSampleDataSource$1(MutableAudioSampleDataSource mutableAudioSampleDataSource, byte[] bArr, boolean z) {
        this.this$0 = mutableAudioSampleDataSource;
        this.val$inputByteArray = bArr;
        this.val$eos = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.addSampleCount(this.this$0.pushToEncoder(this.val$inputByteArray, this.val$inputByteArray.length, this.val$eos));
    }
}

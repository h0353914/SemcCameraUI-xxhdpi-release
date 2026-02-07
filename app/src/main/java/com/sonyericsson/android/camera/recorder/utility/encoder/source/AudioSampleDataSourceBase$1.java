package com.sonyericsson.android.camera.recorder.utility.encoder.source;

/* JADX INFO: loaded from: classes.dex */
class AudioSampleDataSourceBase$1 implements Runnable {
    final /* synthetic */ AudioSampleDataSourceBase this$0;
    final /* synthetic */ boolean val$eos;

    AudioSampleDataSourceBase$1(AudioSampleDataSourceBase audioSampleDataSourceBase, boolean z) {
        this.this$0 = audioSampleDataSourceBase;
        this.val$eos = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        AudioSampleDataSourceBase.access$000(this.this$0, this.val$eos);
    }
}

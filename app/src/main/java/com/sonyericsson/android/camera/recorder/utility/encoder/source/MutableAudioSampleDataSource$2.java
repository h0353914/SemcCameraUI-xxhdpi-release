package com.sonyericsson.android.camera.recorder.utility.encoder.source;

/* JADX INFO: loaded from: classes.dex */
class MutableAudioSampleDataSource$2 implements Runnable {
    final /* synthetic */ MutableAudioSampleDataSource this$0;

    MutableAudioSampleDataSource$2(MutableAudioSampleDataSource mutableAudioSampleDataSource) {
        this.this$0 = mutableAudioSampleDataSource;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.addSampleCount(MutableAudioSampleDataSource.access$300(this.this$0));
    }
}

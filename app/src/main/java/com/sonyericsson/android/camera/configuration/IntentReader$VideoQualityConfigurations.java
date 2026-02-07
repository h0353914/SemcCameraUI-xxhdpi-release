package com.sonyericsson.android.camera.configuration;

/* JADX INFO: loaded from: classes.dex */
public class IntentReader$VideoQualityConfigurations {
    private static final int EXTRA_VIDEO_QUALITY_LOW = 0;
    public final boolean hasSizeLimit;
    public final long maxDuration;
    public final long maxFileSize;
    public final int quality;

    public IntentReader$VideoQualityConfigurations(long j, long j2, int i, boolean z) {
        this.maxFileSize = j;
        this.maxDuration = j2;
        this.quality = i;
        this.hasSizeLimit = z;
    }

    public boolean isQualityLow() {
        return this.quality == 0;
    }
}

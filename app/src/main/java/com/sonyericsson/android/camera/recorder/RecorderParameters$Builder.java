package com.sonyericsson.android.camera.recorder;

import android.location.Location;
import android.media.CamcorderProfile;
import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
public class RecorderParameters$Builder {
    private final RecorderParameters mParameters;

    public RecorderParameters$Builder(Uri uri, CamcorderProfile camcorderProfile) {
        this.mParameters = new RecorderParameters(uri, camcorderProfile, null);
    }

    public RecorderParameters$Builder setLocation(Location location) {
        RecorderParameters.access$102(this.mParameters, location);
        return this;
    }

    public RecorderParameters$Builder setOrientationHint(int i) {
        RecorderParameters.access$202(this.mParameters, i);
        return this;
    }

    public RecorderParameters$Builder setMaxFileSize(long j) {
        RecorderParameters.access$302(this.mParameters, Math.min(j, 256000000000L));
        return this;
    }

    public RecorderParameters$Builder setMaxDuration(int i) {
        RecorderParameters.access$402(this.mParameters, i);
        return this;
    }

    public RecorderParameters$Builder setMicrophoneEnabled(boolean z) {
        RecorderParameters.access$502(this.mParameters, z);
        return this;
    }

    public RecorderParameters$Builder setDataSpace(RecorderParameters$DataSpace recorderParameters$DataSpace) {
        RecorderParameters.access$602(this.mParameters, recorderParameters$DataSpace);
        return this;
    }

    public RecorderParameters$Builder setHdr(boolean z) {
        RecorderParameters.access$702(this.mParameters, z);
        return this;
    }

    public RecorderParameters build() {
        return this.mParameters;
    }
}

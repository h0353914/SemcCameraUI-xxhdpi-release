package com.sonyericsson.android.camera;

/* JADX INFO: loaded from: classes.dex */
public enum ShutterToneGenerator$Type {
    SOUND_AF_SUCCESS("common/af_success.m4a", true),
    SOUND_SELFTIMER_3SEC("common/selftimer_3sec.m4a", true),
    SOUND_SELFTIMER_10SEC("common/selftimer_10sec.m4a", true),
    SOUND_OFF("no_sound.m4a", false),
    SOUND_BURST_SHUTTER("shutter_done.wav", false),
    SOUND_FAST_CAPTURE_SHUTTER_DONE("fastcapture_launch_and_capture_done.wav", false);

    private String mFileName;
    private boolean mIsCommonSound;

    ShutterToneGenerator$Type(String str, boolean z) {
        this.mFileName = str;
        this.mIsCommonSound = z;
    }

    public String getFileName() {
        return this.mFileName;
    }

    public boolean isCommonSound() {
        return this.mIsCommonSound;
    }
}

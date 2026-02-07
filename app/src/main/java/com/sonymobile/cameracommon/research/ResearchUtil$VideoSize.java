package com.sonymobile.cameracommon.research;

/* JADX INFO: loaded from: classes.dex */
public enum ResearchUtil$VideoSize {
    FULL_HD,
    FULL_HD_60FPS,
    HD,
    VGA,
    FWVGA,
    QVGA,
    MMS,
    FOUR_K_UHD_H264,
    FOUR_K_UHD_H265;

    public static ResearchUtil$VideoSize getVideoSize(String str) {
        return valueOf(str);
    }
}

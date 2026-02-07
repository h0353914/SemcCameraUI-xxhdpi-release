package com.sonymobile.cameracommon.research.parameters;

/* JADX INFO: loaded from: classes.dex */
public enum Event$ForceQuit implements Event$Label {
    DURING_PREVIEW,
    DURING_RECORDING;

    public static Event$ForceQuit getType(boolean z) {
        return z ? DURING_RECORDING : DURING_PREVIEW;
    }
}

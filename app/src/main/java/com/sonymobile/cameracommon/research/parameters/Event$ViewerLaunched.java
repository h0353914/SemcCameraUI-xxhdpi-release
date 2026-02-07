package com.sonymobile.cameracommon.research.parameters;

/* JADX INFO: loaded from: classes.dex */
public enum Event$ViewerLaunched {
    NOT_LAUNCHED(0),
    LAUNCHED(1);

    public final int mValue;

    Event$ViewerLaunched(int i) {
        this.mValue = i;
    }

    public static Event$ViewerLaunched getType(Event$CaptureOperation event$CaptureOperation) {
        return event$CaptureOperation == null ? NOT_LAUNCHED : LAUNCHED;
    }
}

package com.sonymobile.cameracommon.testevent;

/* JADX INFO: loaded from: classes.dex */
public class TestEventSender {
    private static TestEventListener sListener = getBlankListener();

    public static void setListener(TestEventListener testEventListener) {
        if (testEventListener == null) {
            sListener = getBlankListener();
        } else {
            sListener = testEventListener;
        }
    }

    public static void onPictureTaken() {
        sListener.onPictureTaken();
    }

    public static void onCapturedFrameStored(long j) {
        sListener.onCapturedFrameStored(j);
    }

    private static TestEventListener getBlankListener() {
        return new TestEventSender$1();
    }
}

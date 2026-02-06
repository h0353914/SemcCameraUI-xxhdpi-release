package com.sonyericsson.android.camera.device;

public class CameraDeviceHandler$CameraSessionId {
    private static Object sIdLock = new Object();
    private static int sLastId;
    private final String mTag = makeTag();

    private static String makeTag() {
        String string;
        synchronized (sIdLock) {
            int i = sLastId + 1;
            sLastId = i;
            string = Integer.toString(i);
        }
        return string;
    }

    public String toString() {
        return this.mTag;
    }
}

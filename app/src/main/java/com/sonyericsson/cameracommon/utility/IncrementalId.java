package com.sonyericsson.cameracommon.utility;

import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
public final class IncrementalId {
    public static final int INCREMENTAL_INVALID = -1;
    private static final int INCREMENTAL_MAX = 2147483646;
    private static final int INCREMENTAL_MIN = 0;
    private int mId = 0;

    public int getNext() {
        return generateNext();
    }

    public synchronized int generateNext() {
        if (this.mId >= 2147483646) {
            this.mId = 0;
        }
        this.mId++;
        if (CamLog.VERBOSE) {
            CamLog.d(IncrementalId.class.getName(), "New ID :" + Integer.toString(this.mId));
        }
        return this.mId;
    }

    public synchronized void clear() {
        this.mId = 0;
    }
}

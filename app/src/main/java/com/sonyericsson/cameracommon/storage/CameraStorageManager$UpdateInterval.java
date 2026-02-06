package com.sonyericsson.cameracommon.storage;

import android.support.annotation.NonNull;

public enum CameraStorageManager$UpdateInterval {
    STOP(-1),
    IMMEDIATE(0),
    LOW_MEMORY(1000),
    NORMAL(10000);

    private static final long THRESHOLD_LOW_MEMORY = 307200;
    private final int intervalSec;

    CameraStorageManager$UpdateInterval(int i) {
        this.intervalSec = i;
    }

    @NonNull
    public static CameraStorageManager$UpdateInterval decide(long j) {
        if (j <= 61440) {
            return STOP;
        }
        if (j < 307200) {
            return LOW_MEMORY;
        }
        return NORMAL;
    }

    public int getIntervalMillis() {
        return this.intervalSec;
    }
}

package com.sonyericsson.cameracommon.mediasaving;

public enum MediaSavingResult {
    SUCCESS(true, -1, -1),
    FAIL(false, 2131690172, 0),
    FAIL_MEMORY_FULL(false, 2131689945, 0);

    public final int mResultCode;
    public final boolean mSuccess;
    public final int mTextId;

    MediaSavingResult(boolean z, int i, int i2) {
        this.mSuccess = z;
        this.mTextId = i;
        this.mResultCode = i2;
    }
}

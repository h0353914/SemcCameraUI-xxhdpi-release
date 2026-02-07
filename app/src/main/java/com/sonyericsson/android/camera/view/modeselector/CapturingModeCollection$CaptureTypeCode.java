package com.sonyericsson.android.camera.view.modeselector;

/* JADX INFO: loaded from: classes.dex */
class CapturingModeCollection$CaptureTypeCode {
    static final int PHOTO = 1;
    static final int VIDEO = 2;

    private CapturingModeCollection$CaptureTypeCode() {
    }

    static int toCode(CapturingModeAttributes$InternalCaptureType capturingModeAttributes$InternalCaptureType) {
        if (capturingModeAttributes$InternalCaptureType.equals(CapturingModeAttributes$InternalCaptureType.Photo)) {
            return 1;
        }
        if (capturingModeAttributes$InternalCaptureType.equals(CapturingModeAttributes$InternalCaptureType.Video)) {
            return 2;
        }
        throw new IllegalArgumentException();
    }

    static CapturingModeAttributes$InternalCaptureType toCaptureType(int i) {
        if (i == 1) {
            return CapturingModeAttributes$InternalCaptureType.Photo;
        }
        if (i == 2) {
            return CapturingModeAttributes$InternalCaptureType.Video;
        }
        throw new IllegalArgumentException();
    }
}

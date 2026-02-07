package com.sonyericsson.android.camera.view.modeselector;

/* JADX INFO: loaded from: classes.dex */
class CapturingModeCollection$VisibilityTypeCode {
    static final int FALSE = 0;
    static final int TRUE = 1;

    static int toCode(boolean z) {
        return z ? 1 : 0;
    }

    static boolean toVisibilityType(int i) {
        return i == 1;
    }

    private CapturingModeCollection$VisibilityTypeCode() {
    }
}

package com.sonyericsson.android.camera.device;

import java.util.Comparator;

class CameraDeviceUtil$1 implements Comparator<int[]> {
    CameraDeviceUtil$1() {
    }

    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(int[] iArr, int[] iArr2) {
        return compare2(iArr, iArr2);
    }

    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(int[] iArr, int[] iArr2) {
        int i = iArr[1];
        int i2 = iArr[0];
        int i3 = iArr[1];
        int i4 = iArr[0];
        if (i > i3) {
            return 1;
        }
        if (i < i3) {
            return -1;
        }
        if (i2 < i4) {
            return 1;
        }
        return i2 > i4 ? -1 : 0;
    }
}

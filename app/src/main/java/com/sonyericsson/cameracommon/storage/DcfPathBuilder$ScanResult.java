package com.sonyericsson.cameracommon.storage;

/* JADX INFO: loaded from: classes.dex */
class DcfPathBuilder$ScanResult {
    final int resultDirNo;
    final int resultFileNo;
    final DcfPathBuilder$ScanResultState resultState;

    DcfPathBuilder$ScanResult(DcfPathBuilder$ScanResultState dcfPathBuilder$ScanResultState, int i, int i2) {
        this.resultState = dcfPathBuilder$ScanResultState;
        this.resultDirNo = i;
        this.resultFileNo = i2;
    }
}

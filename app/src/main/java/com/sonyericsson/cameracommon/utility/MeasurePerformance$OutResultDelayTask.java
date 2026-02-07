package com.sonyericsson.cameracommon.utility;

/* JADX INFO: loaded from: classes.dex */
class MeasurePerformance$OutResultDelayTask implements Runnable {
    private MeasurePerformance$OutResultDelayTask() {
    }

    @Override // java.lang.Runnable
    public void run() {
        MeasurePerformance.outResult();
    }
}

package com.sonyericsson.cameracommon.utility;

class MeasurePerformance$OutResultDelayTask implements Runnable {
    private MeasurePerformance$OutResultDelayTask() {
    }

    @Override // java.lang.Runnable
    public void run() {
        MeasurePerformance.outResult();
    }
}

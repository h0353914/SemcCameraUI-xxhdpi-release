package com.sonyericsson.android.camera;

/* synthetic */ class SideTouchEventDetector$1 {
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$State = new int[SideTouchEventDetector$State.values().length];

    static {
        try {
            $SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$State[SideTouchEventDetector$State.IDLING.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$State[SideTouchEventDetector$State.SCROLLING.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$State[SideTouchEventDetector$State.DOUBLE_TAPPING.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        $SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea = new int[SideTouchEventDetector$SideTouchArea.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea[SideTouchEventDetector$SideTouchArea.TOP.ordinal()] = 1;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea[SideTouchEventDetector$SideTouchArea.BOTTOM.ordinal()] = 2;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea[SideTouchEventDetector$SideTouchArea.LEFT.ordinal()] = 3;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea[SideTouchEventDetector$SideTouchArea.RIGHT.ordinal()] = 4;
        } catch (NoSuchFieldError unused7) {
        }
    }
}

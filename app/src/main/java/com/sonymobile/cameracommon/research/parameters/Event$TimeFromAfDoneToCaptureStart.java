package com.sonymobile.cameracommon.research.parameters;

public enum Event$TimeFromAfDoneToCaptureStart {
    WITHIN_10_MS,
    WITHIN_50_MS,
    WITHIN_100_MS,
    WITHIN_200_MS,
    WITHIN_500_MS,
    WITHIN_1000_MS,
    WITHIN_1500_MS,
    WITHIN_2000_MS,
    OVER_2000_MS,
    CONTINUOUS_CAPTURE,
    NOT_TARGET;

    public static Event$TimeFromAfDoneToCaptureStart getType(long j) {
        if (j >= 2000) {
            return OVER_2000_MS;
        }
        if (j >= 1500) {
            return WITHIN_2000_MS;
        }
        if (j >= 1000) {
            return WITHIN_1500_MS;
        }
        if (j >= 500) {
            return WITHIN_1000_MS;
        }
        if (j >= 200) {
            return WITHIN_500_MS;
        }
        if (j >= 100) {
            return WITHIN_200_MS;
        }
        if (j >= 50) {
            return WITHIN_100_MS;
        }
        if (j >= 10) {
            return WITHIN_50_MS;
        }
        return WITHIN_10_MS;
    }
}

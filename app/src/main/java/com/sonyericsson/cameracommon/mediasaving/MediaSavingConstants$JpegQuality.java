package com.sonyericsson.cameracommon.mediasaving;

public class MediaSavingConstants$JpegQuality {
    public static final int ECONOMY = 85;
    public static final int FINE = 97;
    public static final int STANDARD = 93;

    public static int getPlatformQualityFromCameraProfile(int i) {
        switch (i) {
            case 0:
                return 85;
            case 1:
                return 93;
            default:
                return 97;
        }
    }
}

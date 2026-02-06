package com.sonyericsson.cameracommon.contentsview.contents;

class PlayIconResources {
    PlayIconResources() {
    }

    public static int get(Content$ContentsType content$ContentsType) {
        switch (content$ContentsType) {
            case VIDEO:
            case TIME_SHIFT_VIDEO:
            case TIME_SHIFT_VIDEO_120F:
            case VIDEO_4K:
            case SUPER_SLOW_MOTION_VIDEO:
            case SUPER_SLOW_SHOT_VIDEO:
            case STANDARD_SLOW_MOTION_VIDEO:
            case HIGH_FRAME_RATE_VIDEO:
            case HDR_VIDEO:
            case HDR_VIDEO_4K:
                return 2131231149;
            default:
                return -1;
        }
    }
}

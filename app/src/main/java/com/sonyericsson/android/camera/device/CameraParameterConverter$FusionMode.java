package com.sonyericsson.android.camera.device;

/* JADX INFO: loaded from: classes.dex */
class CameraParameterConverter$FusionMode {
    CameraParameterConverter$FusionMode() {
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static Integer getApi2Value(String str) {
        byte b;
        int iHashCode = str.hashCode();
        if (iHashCode != 3551) {
            if (iHashCode != 109935) {
                b = (iHashCode == 3005871 && str.equals("auto")) ? (byte) 2 : (byte) -1;
            } else if (str.equals("off")) {
                b = 0;
            }
        } else if (str.equals("on")) {
            b = 1;
        }
        switch (b) {
            case 0:
                return 0;
            case 1:
                return 1;
            case 2:
                return 2;
            default:
                return null;
        }
    }
}

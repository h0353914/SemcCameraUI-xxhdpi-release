package com.sonyericsson.android.camera.device;

class CameraParameterConverter$DistortionCorrection {
    CameraParameterConverter$DistortionCorrection() {
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static Integer getApi2Value(String str) {
        byte b;
        int iHashCode = str.hashCode();
        if (iHashCode != 3551) {
            b = (iHashCode == 109935 && str.equals("off")) ? (byte) 0 : (byte) -1;
        } else if (str.equals("on")) {
            b = 1;
        }
        switch (b) {
            case 0:
                return 0;
            case 1:
                return 1;
            default:
                return null;
        }
    }
}

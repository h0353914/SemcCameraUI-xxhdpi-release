package com.sonyericsson.android.camera.device;

/* JADX INFO: loaded from: classes.dex */
class CameraParameterConverter$StillHdr {
    CameraParameterConverter$StillHdr() {
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static Integer getApi2Value(String str) {
        byte b;
        int iHashCode = str.hashCode();
        if (iHashCode != 109935) {
            if (iHashCode != 3005871) {
                b = (iHashCode == 1589394147 && str.equals("on-still-hdr")) ? (byte) 1 : (byte) -1;
            } else if (str.equals("auto")) {
                b = 2;
            }
        } else if (str.equals("off")) {
            b = 0;
        }
        switch (b) {
            case 0:
                return 0;
            case 1:
                return 1;
            case 2:
            default:
                return null;
        }
    }
}

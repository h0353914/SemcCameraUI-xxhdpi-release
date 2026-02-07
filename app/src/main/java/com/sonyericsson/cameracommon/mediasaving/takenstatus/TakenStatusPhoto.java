package com.sonyericsson.cameracommon.mediasaving.takenstatus;

import com.sonyericsson.android.camera.util.CamLog;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class TakenStatusPhoto {
    public static final String TAG = "TakenStatusPhoto";
    protected TakenStatusPhoto$Facing mFacing;
    public byte[] mImage;

    public TakenStatusPhoto() {
        this.mFacing = TakenStatusPhoto$Facing.UNKNOWN;
    }

    public TakenStatusPhoto(TakenStatusPhoto takenStatusPhoto) {
        this.mFacing = TakenStatusPhoto$Facing.UNKNOWN;
        this.mImage = takenStatusPhoto.mImage;
        this.mFacing = takenStatusPhoto.mFacing;
    }

    public TakenStatusPhoto(TakenStatusPhoto$Facing takenStatusPhoto$Facing) {
        this.mFacing = TakenStatusPhoto$Facing.UNKNOWN;
        this.mFacing = takenStatusPhoto$Facing;
    }

    public boolean isFront() {
        return this.mFacing == TakenStatusPhoto$Facing.FRONT;
    }

    public void log() {
        if (CamLog.VERBOSE) {
            String[] strArr = new String[1];
            StringBuilder sb = new StringBuilder();
            sb.append("Image            : ");
            sb.append(this.mImage == null ? "null" : Integer.valueOf(Arrays.hashCode(this.mImage)));
            strArr[0] = sb.toString();
            CamLog.d(strArr);
        }
    }
}

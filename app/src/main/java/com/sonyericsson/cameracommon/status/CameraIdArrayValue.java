package com.sonyericsson.cameracommon.status;

import android.content.ContentValues;
import com.sonyericsson.android.camera.device.CameraInfo$CameraId;

public abstract class CameraIdArrayValue implements CameraStatusValue {
    private static final String INLALID_VALUE = "N/A";
    private static final char SEPARATOR = ',';
    protected final CameraInfo$CameraId[] mValues;

    public CameraIdArrayValue(CameraInfo$CameraId... cameraInfo$CameraIdArr) {
        this.mValues = cameraInfo$CameraIdArr;
    }

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public void putInto(ContentValues contentValues, String str) {
        contentValues.put(str + getKey(), getValue());
    }

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public String getValueForDebug() {
        return getValue();
    }

    private String getValue() {
        if (this.mValues.length <= 0) {
            return "N/A";
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.mValues.length; i++) {
            if (i != 0) {
                sb.append(',');
            }
            sb.append(this.mValues[i].getCameraDeviceIdApi1());
        }
        return sb.toString();
    }
}

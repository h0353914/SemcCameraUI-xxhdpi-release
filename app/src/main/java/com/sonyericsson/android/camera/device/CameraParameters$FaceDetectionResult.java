package com.sonyericsson.android.camera.device;

import android.graphics.Rect;
import java.util.ArrayList;
import java.util.List;

public class CameraParameters$FaceDetectionResult {
    public List<CameraParameters$ExtFace> extFaceList = new ArrayList();
    public int faceNum;
    public int indexOfSelectedFace;

    void setFrameResult(int i) {
        this.indexOfSelectedFace = i;
    }

    void addFaceResult(int i, int i2, int i3, int i4, int i5, int i6) {
        CameraParameters$ExtFace cameraParameters$ExtFace = new CameraParameters$ExtFace();
        cameraParameters$ExtFace.smileScore = i6;
        cameraParameters$ExtFace.id = i;
        cameraParameters$ExtFace.rect = new Rect(i2, i3, i4, i5);
        this.extFaceList.add(cameraParameters$ExtFace);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        sb.append(this.faceNum);
        sb.append(',');
        sb.append(this.indexOfSelectedFace);
        sb.append(',');
        for (CameraParameters$ExtFace cameraParameters$ExtFace : this.extFaceList) {
            sb.append('[');
            sb.append(cameraParameters$ExtFace.id);
            sb.append(',');
            sb.append(cameraParameters$ExtFace.rect.toString());
            sb.append(',');
            sb.append(cameraParameters$ExtFace.smileScore);
            sb.append("]");
        }
        sb.append(']');
        return sb.toString();
    }
}

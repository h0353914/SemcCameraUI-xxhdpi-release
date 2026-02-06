package com.sonyericsson.cameracommon.utility;

import java.util.Comparator;

class FaceDetectUtil$DistanceComparator implements Comparator<FaceDetectUtil$DistanceMapItem> {
    private FaceDetectUtil$DistanceComparator() {
    }

    /* synthetic */ FaceDetectUtil$DistanceComparator(FaceDetectUtil$1 faceDetectUtil$1) {
        this();
    }

    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(FaceDetectUtil$DistanceMapItem faceDetectUtil$DistanceMapItem, FaceDetectUtil$DistanceMapItem faceDetectUtil$DistanceMapItem2) {
        return compare2(faceDetectUtil$DistanceMapItem, faceDetectUtil$DistanceMapItem2);
    }

    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(FaceDetectUtil$DistanceMapItem faceDetectUtil$DistanceMapItem, FaceDetectUtil$DistanceMapItem faceDetectUtil$DistanceMapItem2) {
        return faceDetectUtil$DistanceMapItem.getDistance() - faceDetectUtil$DistanceMapItem2.getDistance();
    }
}

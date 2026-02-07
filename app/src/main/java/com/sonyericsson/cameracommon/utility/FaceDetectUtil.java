package com.sonyericsson.cameracommon.utility;

import android.graphics.Rect;
import com.sonyericsson.android.camera.device.CameraParameters$ExtFace;
import com.sonyericsson.android.camera.device.CameraParameters$FaceDetectionResult;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.focusview.FaceInformationList;
import com.sonyericsson.cameracommon.focusview.NamedFace;
import com.sonyericsson.cameracommon.focusview.TaggedRectangle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map$Entry;

/* JADX INFO: loaded from: classes.dex */
public class FaceDetectUtil {
    public static final String TAG = "FaceDetectUtil";

    public static void dumpDistanceMapList(List<FaceDetectUtil$DistanceMapItem> list) {
        if (CamLog.VERBOSE) {
            CamLog.d("dumpDistanceMapList");
            for (FaceDetectUtil$DistanceMapItem faceDetectUtil$DistanceMapItem : list) {
                CamLog.d("item.arrayIndex = " + faceDetectUtil$DistanceMapItem.getArrayIndex() + " item.distance = " + faceDetectUtil$DistanceMapItem.getDistance());
            }
        }
    }

    private static List<FaceDetectUtil$DistanceMapItem> createSortedDistanceList(CameraParameters$FaceDetectionResult cameraParameters$FaceDetectionResult, Rect rect) {
        if (cameraParameters$FaceDetectionResult == null || cameraParameters$FaceDetectionResult.extFaceList == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        Iterator<CameraParameters$ExtFace> it = cameraParameters$FaceDetectionResult.extFaceList.iterator();
        while (it.hasNext()) {
            arrayList.add(new FaceDetectUtil$DistanceMapItem(i, computeClosesDistance(it.next().rect, rect)));
            i++;
        }
        Collections.sort(arrayList, new FaceDetectUtil$DistanceComparator(null));
        return arrayList;
    }

    private static int computeClosesDistance(Rect rect, Rect rect2) {
        if (CamLog.VERBOSE) {
            CamLog.d("computeClosesDistance: centerPosition = " + rect2 + " faceRect = " + rect);
        }
        Rect rectConvertFromActiveArrayToView = PositionConverter.getInstance().convertFromActiveArrayToView(rect);
        int iCenterX = rect2.centerX() - rectConvertFromActiveArrayToView.centerX();
        int iCenterY = rect2.centerY() - rectConvertFromActiveArrayToView.centerY();
        if (CamLog.VERBOSE) {
            CamLog.d("converted faceRect = " + rectConvertFromActiveArrayToView);
        }
        if (iCenterX < 0) {
            iCenterX *= -1;
        }
        if (iCenterY < 0) {
            iCenterY *= -1;
        }
        return iCenterX + iCenterY;
    }

    public static void logFaceDetectionResult(CameraParameters$FaceDetectionResult cameraParameters$FaceDetectionResult) {
        if (cameraParameters$FaceDetectionResult == null) {
            CamLog.v("onFaceDetection: result is null");
            return;
        }
        CamLog.v("onFaceDetection: Number of faces: " + cameraParameters$FaceDetectionResult.extFaceList.size());
        CamLog.v("onFaceDetection: Selected index : " + cameraParameters$FaceDetectionResult.indexOfSelectedFace);
        if (cameraParameters$FaceDetectionResult.extFaceList.isEmpty()) {
            return;
        }
        int i = 0;
        for (CameraParameters$ExtFace cameraParameters$ExtFace : cameraParameters$FaceDetectionResult.extFaceList) {
            CamLog.v((((("ExtFACE[" + i + "]") + " face = " + cameraParameters$ExtFace + " ") + " face.id = " + cameraParameters$ExtFace.id + " ") + " face.rect = " + cameraParameters$ExtFace.rect + " ") + " SmileScore = " + cameraParameters$ExtFace.smileScore + " ");
            i++;
        }
    }

    public static TaggedRectangle overwriteTaggedRectangle(HashMap<String, TaggedRectangle> map, String str, FaceInformationList faceInformationList) {
        String key;
        TaggedRectangle value;
        Iterator<Map$Entry<String, TaggedRectangle>> it = map.entrySet().iterator();
        while (true) {
            key = null;
            if (!it.hasNext()) {
                value = null;
                break;
            }
            Map$Entry<String, TaggedRectangle> next = it.next();
            key = next.getKey();
            boolean z = false;
            Iterator<NamedFace> it2 = faceInformationList.getNamedFaceList().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                if (key.equals(it2.next().mUuid)) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                value = next.getValue();
                break;
            }
        }
        if (value != null) {
            map.remove(key);
            map.put(str, value);
        }
        return value;
    }

    public static FaceInformationList getFaceInformationList(CameraParameters$FaceDetectionResult cameraParameters$FaceDetectionResult, Rect rect, String str) {
        if (CamLog.VERBOSE) {
            CamLog.d("getFaceInformationSortList centerPosition = " + rect);
        }
        if (cameraParameters$FaceDetectionResult == null) {
            if (CamLog.VERBOSE) {
                CamLog.d("getFaceInformationListt faceDetectResultList is null");
            }
            return null;
        }
        List<FaceDetectUtil$DistanceMapItem> listCreateSortedDistanceList = createSortedDistanceList(cameraParameters$FaceDetectionResult, rect);
        if (listCreateSortedDistanceList == null) {
            if (CamLog.VERBOSE) {
                CamLog.d("createSortedDistanceList() return null");
            }
            return null;
        }
        FaceInformationList faceInformationList = new FaceInformationList();
        faceInformationList.setUserTouchUuid(str);
        Iterator<FaceDetectUtil$DistanceMapItem> it = listCreateSortedDistanceList.iterator();
        while (it.hasNext()) {
            CameraParameters$ExtFace cameraParameters$ExtFace = cameraParameters$FaceDetectionResult.extFaceList.get(it.next().getArrayIndex());
            faceInformationList.addNamedFace(new NamedFace(null, String.valueOf(cameraParameters$ExtFace.id), cameraParameters$ExtFace.rect, cameraParameters$ExtFace.smileScore));
        }
        logFaceDetectionResult(cameraParameters$FaceDetectionResult);
        return faceInformationList;
    }

    public static Boolean hasValidFaceId(CameraParameters$FaceDetectionResult cameraParameters$FaceDetectionResult) {
        Boolean bool = Boolean.TRUE;
        Iterator<CameraParameters$ExtFace> it = cameraParameters$FaceDetectionResult.extFaceList.iterator();
        while (it.hasNext()) {
            if (it.next().id == -1) {
                if (CamLog.VERBOSE) {
                    CamLog.d("FaceDetection ID is not supported.");
                }
                return Boolean.FALSE;
            }
        }
        return bool;
    }

    public static CameraParameters$FaceDetectionResult setUuidFaceDetectionResult(CameraParameters$FaceDetectionResult cameraParameters$FaceDetectionResult) {
        Iterator<CameraParameters$ExtFace> it = cameraParameters$FaceDetectionResult.extFaceList.iterator();
        int i = 0;
        while (it.hasNext()) {
            it.next().id = i;
            i++;
        }
        return cameraParameters$FaceDetectionResult;
    }

    public static boolean isValidFaceDetectionResult(CameraParameters$FaceDetectionResult cameraParameters$FaceDetectionResult) {
        return cameraParameters$FaceDetectionResult != null && cameraParameters$FaceDetectionResult.extFaceList.size() > cameraParameters$FaceDetectionResult.indexOfSelectedFace && cameraParameters$FaceDetectionResult.indexOfSelectedFace >= 0;
    }
}

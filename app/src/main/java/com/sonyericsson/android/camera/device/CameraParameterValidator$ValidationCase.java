package com.sonyericsson.android.camera.device;

import android.graphics.Rect;
import android.hardware.camera2.CaptureRequest$Key;
import android.hardware.camera2.params.MeteringRectangle;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class CameraParameterValidator$ValidationCase {
    private List<CameraParameterValidator$KeyValueSet> mBaseConditionList;
    private List<CameraParameterValidator$KeyValueSet> mCheckConditionList;

    private CameraParameterValidator$ValidationCase() {
        this.mBaseConditionList = new ArrayList();
        this.mCheckConditionList = new ArrayList();
    }

    /* synthetic */ CameraParameterValidator$ValidationCase(CameraParameterValidator$1 cameraParameterValidator$1) {
        this();
    }

    static /* synthetic */ boolean access$000(CameraParameterValidator$ValidationCase cameraParameterValidator$ValidationCase, List list, CaptureRequestHolder captureRequestHolder) {
        return cameraParameterValidator$ValidationCase.isBaseCondition(list, captureRequestHolder);
    }

    static /* synthetic */ void access$100(CameraParameterValidator$ValidationCase cameraParameterValidator$ValidationCase, List list, CaptureRequestHolder captureRequestHolder, Rect rect) {
        cameraParameterValidator$ValidationCase.checkInvalid(list, captureRequestHolder, rect);
    }

    static /* synthetic */ void access$200(CameraParameterValidator$ValidationCase cameraParameterValidator$ValidationCase, List list, CaptureRequestHolder captureRequestHolder, Rect rect) {
        cameraParameterValidator$ValidationCase.checkValid(list, captureRequestHolder, rect);
    }

    static /* synthetic */ void access$400(CameraParameterValidator$ValidationCase cameraParameterValidator$ValidationCase, CameraParameterValidator$KeyValueSet cameraParameterValidator$KeyValueSet) {
        cameraParameterValidator$ValidationCase.addBaseCondition(cameraParameterValidator$KeyValueSet);
    }

    static /* synthetic */ void access$500(CameraParameterValidator$ValidationCase cameraParameterValidator$ValidationCase, CameraParameterValidator$KeyValueSet cameraParameterValidator$KeyValueSet) {
        cameraParameterValidator$ValidationCase.addCheckCondition(cameraParameterValidator$KeyValueSet);
    }

    private void addBaseCondition(CameraParameterValidator$KeyValueSet cameraParameterValidator$KeyValueSet) {
        this.mBaseConditionList.add(cameraParameterValidator$KeyValueSet);
    }

    private void addCheckCondition(CameraParameterValidator$KeyValueSet cameraParameterValidator$KeyValueSet) {
        this.mCheckConditionList.add(cameraParameterValidator$KeyValueSet);
    }

    private boolean isBaseCondition(List<CaptureRequest$Key<?>> list, CaptureRequestHolder captureRequestHolder) {
        for (CameraParameterValidator$KeyValueSet cameraParameterValidator$KeyValueSet : this.mBaseConditionList) {
            CaptureRequest$Key targetKey = getTargetKey(list, cameraParameterValidator$KeyValueSet);
            if (targetKey != null) {
                if (!cameraParameterValidator$KeyValueSet.value.equals(String.valueOf(captureRequestHolder.get(targetKey)))) {
                    return false;
                }
            }
        }
        return true;
    }

    private void checkValid(List<CaptureRequest$Key<?>> list, CaptureRequestHolder captureRequestHolder, Rect rect) {
        String strValueOf;
        for (CameraParameterValidator$KeyValueSet cameraParameterValidator$KeyValueSet : this.mCheckConditionList) {
            CaptureRequest$Key targetKey = getTargetKey(list, cameraParameterValidator$KeyValueSet);
            if (targetKey != null) {
                if (cameraParameterValidator$KeyValueSet.value.equals("active-array-size")) {
                    if (captureRequestHolder.get(targetKey) instanceof MeteringRectangle[]) {
                        strValueOf = ((MeteringRectangle[]) captureRequestHolder.get(targetKey))[0].getRect().toString();
                    } else {
                        strValueOf = String.valueOf(captureRequestHolder.get(targetKey));
                    }
                    if (!rect.toString().equals(strValueOf)) {
                        throw new CameraParameterValidator$ParameterValidationError("ERROR : [KEY=" + cameraParameterValidator$KeyValueSet.key + "]\n  EXPECTED : [VALUE=" + rect + "]\n  ACTUAL   : [VALUE=" + strValueOf + "]\n");
                    }
                } else {
                    String strValueOf2 = String.valueOf(captureRequestHolder.get(targetKey));
                    if (!cameraParameterValidator$KeyValueSet.value.equals(strValueOf2)) {
                        throw new CameraParameterValidator$ParameterValidationError("ERROR : [KEY=" + cameraParameterValidator$KeyValueSet.key + "]\n  EXPECTED : [VALUE=" + cameraParameterValidator$KeyValueSet.value + "]\n  ACTUAL   : [VALUE=" + strValueOf2 + "]\n");
                    }
                }
            }
        }
    }

    private void checkInvalid(List<CaptureRequest$Key<?>> list, CaptureRequestHolder captureRequestHolder, Rect rect) {
        String strValueOf;
        for (CameraParameterValidator$KeyValueSet cameraParameterValidator$KeyValueSet : this.mCheckConditionList) {
            CaptureRequest$Key targetKey = getTargetKey(list, cameraParameterValidator$KeyValueSet);
            if (targetKey != null) {
                if (cameraParameterValidator$KeyValueSet.value.equals("active-array-size")) {
                    if (captureRequestHolder.get(targetKey) instanceof MeteringRectangle[]) {
                        strValueOf = ((MeteringRectangle[]) captureRequestHolder.get(targetKey))[0].getRect().toString();
                    } else {
                        strValueOf = String.valueOf(captureRequestHolder.get(targetKey));
                    }
                    if (rect.toString().equals(strValueOf)) {
                        throw new CameraParameterValidator$ParameterValidationError("ERROR : [KEY=" + cameraParameterValidator$KeyValueSet.key + "]\n  INVALID  : [VALUE=" + rect + "]\n");
                    }
                } else {
                    if (cameraParameterValidator$KeyValueSet.value.equals(String.valueOf(captureRequestHolder.get(targetKey)))) {
                        throw new CameraParameterValidator$ParameterValidationError("ERROR : [KEY=" + cameraParameterValidator$KeyValueSet.key + "]\n  INVALID  : [VALUE=" + cameraParameterValidator$KeyValueSet.value + "]\n");
                    }
                }
            }
        }
    }

    private CaptureRequest$Key getTargetKey(List<CaptureRequest$Key<?>> list, CameraParameterValidator$KeyValueSet cameraParameterValidator$KeyValueSet) {
        for (CaptureRequest$Key<?> captureRequest$Key : list) {
            if (captureRequest$Key.getName().equals(cameraParameterValidator$KeyValueSet.key)) {
                return getApplicationCaptureRequestKey(captureRequest$Key);
            }
        }
        return null;
    }

    private CaptureRequest$Key<?> getApplicationCaptureRequestKey(CaptureRequest$Key<?> captureRequest$Key) {
        String name = captureRequest$Key.getName();
        if (name != null) {
            for (CaptureRequest$Key<?> captureRequest$Key2 : SomcCameraDeviceInfo.getAllCaptureRequestKeys()) {
                if (captureRequest$Key2.getName().equals(name)) {
                    return captureRequest$Key2;
                }
            }
        }
        return captureRequest$Key;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ValidationSet :\n");
        sb.append("  BaseConditionList :\n");
        for (CameraParameterValidator$KeyValueSet cameraParameterValidator$KeyValueSet : this.mBaseConditionList) {
            sb.append("    ");
            sb.append(cameraParameterValidator$KeyValueSet.toString());
            sb.append("\n");
        }
        sb.append("  CheckConditionList :\n");
        for (CameraParameterValidator$KeyValueSet cameraParameterValidator$KeyValueSet2 : this.mCheckConditionList) {
            sb.append("    ");
            sb.append(cameraParameterValidator$KeyValueSet2.toString());
            sb.append("\n");
        }
        return sb.toString();
    }
}

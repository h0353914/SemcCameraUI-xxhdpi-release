package com.sonyericsson.android.camera.device;

import android.content.Context;
import android.content.res.XmlResourceParser;
import android.graphics.Rect;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest$Key;
import com.sonyericsson.android.camera.util.CamLog;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
class CameraParameterValidator {
    private static final String BASE_CONDITION_TAG = "base-condition";
    private static final String CHECK_CONDITION_TAG = "check-condition";
    private static final int KEY_ATTRIBUTE_INDEX = 0;
    private static final String KEY_VALUE_SET_TAG = "key-value-set";
    private static final boolean LOCAL_LOG = false;
    private static final String VALIDATION_SET_TAG = "validation-set";
    private static final String VALUE_ACTIVE_ARRAY_SIZE = "active-array-size";
    private static final int VALUE_ATTRIBUTE_INDEX = 1;
    private static Map<String, Rect> mActiveArraySizeMap;
    private static Map<String, List<CaptureRequest$Key<?>>> mKeysMap;
    private static List<CameraParameterValidator$ValidationCase> mValidSetList = new ArrayList();
    private static List<CameraParameterValidator$ValidationCase> mInvalidSetList = new ArrayList();

    CameraParameterValidator() {
    }

    static synchronized void validate(String str, CaptureRequestHolder captureRequestHolder) {
        if (CamLog.DEBUG) {
            List<CaptureRequest$Key<?>> list = mKeysMap.get(str);
            Rect rect = mActiveArraySizeMap.get(str);
            for (CameraParameterValidator$ValidationCase cameraParameterValidator$ValidationCase : mInvalidSetList) {
                if (CameraParameterValidator$ValidationCase.access$000(cameraParameterValidator$ValidationCase, list, captureRequestHolder)) {
                    CameraParameterValidator$ValidationCase.access$100(cameraParameterValidator$ValidationCase, list, captureRequestHolder, rect);
                }
            }
            for (CameraParameterValidator$ValidationCase cameraParameterValidator$ValidationCase2 : mValidSetList) {
                if (CameraParameterValidator$ValidationCase.access$000(cameraParameterValidator$ValidationCase2, list, captureRequestHolder)) {
                    CameraParameterValidator$ValidationCase.access$200(cameraParameterValidator$ValidationCase2, list, captureRequestHolder, rect);
                }
            }
        }
    }

    public static void loadCheckList(Context context) {
        if (CamLog.DEBUG) {
            loadAvailableKeys(context);
            loadCheckList(context, mInvalidSetList, 2131886080);
            loadCheckList(context, mValidSetList, 2131886081);
        }
    }

    private static void loadAvailableKeys(Context context) {
        CameraManager cameraManager = (CameraManager) context.getSystemService("camera");
        try {
            mKeysMap = new HashMap();
            mActiveArraySizeMap = new HashMap();
            for (String str : cameraManager.getCameraIdList()) {
                CameraCharacteristics cameraCharacteristics = cameraManager.getCameraCharacteristics(str);
                mKeysMap.put(str, cameraCharacteristics.getAvailableCaptureRequestKeys());
                Rect rect = (Rect) cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
                mActiveArraySizeMap.put(str, new Rect(0, 0, rect.width(), rect.height()));
            }
        } catch (CameraAccessException e) {
            CamLog.e("Failed in getCameraCharacteristics", e);
        }
    }

    private static void loadCheckList(Context context, List<CameraParameterValidator$ValidationCase> list, int i) {
        try {
            XmlResourceParser xml = context.getResources().getXml(i);
            if (xml != null) {
                Throwable th = null;
                try {
                    CameraParameterValidator$ValidationCase cameraParameterValidator$ValidationCase = null;
                    for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                        String name = xml.getName();
                        switch (eventType) {
                            case 2:
                                if ("validation-set".equals(name)) {
                                    cameraParameterValidator$ValidationCase = new CameraParameterValidator$ValidationCase(null);
                                } else if ("base-condition".equals(name)) {
                                    loadBaseCondition(cameraParameterValidator$ValidationCase, xml);
                                } else if ("check-condition".equals(name)) {
                                    loadCheckCondition(cameraParameterValidator$ValidationCase, xml);
                                }
                                break;
                            case 3:
                                if ("validation-set".equals(name)) {
                                    list.add(cameraParameterValidator$ValidationCase);
                                }
                                break;
                        }
                    }
                } catch (Throwable th2) {
                    if (xml != null) {
                        if (0 != 0) {
                            try {
                                xml.close();
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                            }
                        } else {
                            xml.close();
                        }
                    }
                    throw th2;
                }
            }
            if (xml != null) {
                xml.close();
            }
        } catch (IOException e) {
            CamLog.e("Fail to load of CheckList.", e);
            throw new CameraParameterValidator$ParameterValidationError("loadCheckList():[IOException]");
        } catch (XmlPullParserException e2) {
            CamLog.e("Fail to load of CheckList.", e2);
            throw new CameraParameterValidator$ParameterValidationError("loadCheckList():[XmlPullParserException]");
        }
    }

    private static void loadBaseCondition(CameraParameterValidator$ValidationCase cameraParameterValidator$ValidationCase, XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int eventType = xmlPullParser.getEventType();
        while (true) {
            if (eventType == 3 && "base-condition".equals(xmlPullParser.getName())) {
                return;
            }
            if (eventType == 2 && "key-value-set".equals(xmlPullParser.getName())) {
                CameraParameterValidator$ValidationCase.access$400(cameraParameterValidator$ValidationCase, new CameraParameterValidator$KeyValueSet(xmlPullParser.getAttributeValue(0), xmlPullParser.getAttributeValue(1)));
            }
            eventType = xmlPullParser.next();
        }
    }

    private static void loadCheckCondition(CameraParameterValidator$ValidationCase cameraParameterValidator$ValidationCase, XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int eventType = xmlPullParser.getEventType();
        while (true) {
            if (eventType == 3 && "check-condition".equals(xmlPullParser.getName())) {
                return;
            }
            if (eventType == 2 && "key-value-set".equals(xmlPullParser.getName())) {
                CameraParameterValidator$ValidationCase.access$500(cameraParameterValidator$ValidationCase, new CameraParameterValidator$KeyValueSet(xmlPullParser.getAttributeValue(0), xmlPullParser.getAttributeValue(1)));
            }
            eventType = xmlPullParser.next();
        }
    }
}

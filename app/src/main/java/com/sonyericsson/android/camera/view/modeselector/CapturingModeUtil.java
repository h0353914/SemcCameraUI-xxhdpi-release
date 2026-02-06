package com.sonyericsson.android.camera.view.modeselector;

import android.content.Context;
import android.content.Intent;
import com.sonyericsson.android.camera.util.CamLog;
import java.util.ArrayList;
import java.util.List;

public class CapturingModeUtil {
    public static final String ACTION_GET_MORE_APPLICATION = "com.sonymobile.cameracommon.action.GET_MORE_APPLICATION";
    public static final String ACTION_REGISTER_MODE = "com.sonymobile.cameracommon.action.REGISTER_MODE";
    public static final String ACTION_REQUEST_REGISTER = "com.sonymobile.camera.addon.action.REQUEST_REGISTER";
    private static final String ART_FILTER_PACKAGE_NAME = "com.sonyericsson.android.addoncamera.artfilter";
    private static final String AR_EFFECT_MODE_NAME = "AR Effect";
    private static final String AR_EFFECT_PACKAGE_NAME = "com.sonymobile.androidapp.cameraaddon.areffect";
    private static final String CAMERA3D_PACKAGE_NAME = "com.sonyericsson.android.camera3d";
    public static final String CAMERA_ACTIVITY = "com.sonyericsson.android.camera.CameraActivity";
    public static final String CAMERA_ADDON_PERMISSION_NAME = "com.sonymobile.permission.CAMERA_ADDON";
    public static final String CAMERA_COMMON_PACKAGE_NAME = "com.sonymobile.cameracommon";
    public static final String CAMERA_UI_PACKAGE_NAME = "com.sonyericsson.android.camera";
    public static final String EXTRA_CALLING_CLASS_NAME = "extra-calling-class-name";
    public static final String EXTRA_CALLING_PACKAGE_NAME = "extra-calling-package-name";
    public static final String EXTRA_CAPTURING_MODE = "com.sonymobile.camera.addon.intent.extra.CAPTURING_MODE";
    private static final String FACE_IN_PACKAGE_NAME = "com.sonymobile.android.addoncamera.dual";
    private static final String FAST_CAPTURING_ACTIVITY = "com.sonyericsson.android.camera.fastcapturing.FastCapturingActivity";
    private static final int INVALID = -1;
    private static final String SOUND_PHOTO_PACKAGE_NAME = "com.sonymobile.android.addoncamera.soundphoto";
    private static final String STICKER_CREATOR_PACKAGE_NAME = "com.sonymobile.androidapp.cameraaddon.stickercreator";
    private static final String STYLE_PORTRAIT_PACKAGE_NAME = "com.sonymobile.android.addoncamera.styleportrait";
    private static final String SUPER_VIDEO_PACKAGE_NAME = "com.sonymobile.android.addoncamera.supervideo";
    static final String TAG = "CapturingModeUtil";
    private static final String TIME_SHIFT_PACKAGE_NAME = "com.sonymobile.android.addoncamera.timeshift";
    public static final List<String> MODE_WHITE_LIST = new CapturingModeUtil$1();
    private static final String[][] DEFAULT_SORT_ORDER_LIST = {new String[]{"com.sonyericsson.android.camera", "SCENE_RECOGNITION"}, new String[]{"com.sonyericsson.android.camera", "NORMAL"}, new String[]{"com.sonymobile.androidapp.cameraaddon.areffect", "AR Effect"}, new String[]{"com.sonyericsson.android.addoncamera.artfilter", "capturing_mode_single_effect"}, new String[]{"com.sonyericsson.android.camera3d", "capturing_mode_sweep_panorama"}, new String[]{"com.sonymobile.android.addoncamera.soundphoto", "capturing_mode_soundphoto"}, new String[]{"com.sonymobile.androidapp.cameraaddon.stickercreator", "sticker_creator"}, new String[]{"com.sonymobile.android.addoncamera.supervideo", "HIGH_FRAME_RATE"}, new String[]{"com.sonymobile.android.addoncamera.styleportrait", "capturing_mode_self_portrait"}, new String[]{"com.sonymobile.android.addoncamera.dual", "capturing_mode_dual"}, new String[]{"com.sonymobile.android.addoncamera.supervideo", "FOUR_K_UHD"}};
    private static final String[][] ONESHOT_DEFAULT_SORT_ORDER_LIST = {new String[]{"com.sonyericsson.android.camera", "SCENE_RECOGNITION"}, new String[]{"com.sonyericsson.android.camera", "NORMAL"}, new String[]{"com.sonyericsson.android.addoncamera.artfilter", "capture_mode_single_effect"}};

    private CapturingModeUtil() {
    }

    public static <T extends CapturingModeUtil$CapturingMode> List<T> sortCapturingMode(List<T> list) {
        return sort(list, DEFAULT_SORT_ORDER_LIST);
    }

    public static <T extends CapturingModeUtil$CapturingMode> List<T> sortOneshotCapturingMode(List<T> list) {
        return sort(list, ONESHOT_DEFAULT_SORT_ORDER_LIST);
    }

    public static boolean hasDefaultSortOrder(CapturingModeUtil$CapturingMode capturingModeUtil$CapturingMode) {
        return -1 != getSortOrder(capturingModeUtil$CapturingMode, DEFAULT_SORT_ORDER_LIST);
    }

    private static <T extends CapturingModeUtil$CapturingMode> List<T> sort(List<T> list, String[][]... strArr) {
        ArrayList<CapturingModeUtil$CapturingMode> arrayList = new ArrayList();
        for (String[][] strArr2 : strArr) {
            for (int i = 0; i < strArr2.length; i++) {
                arrayList.add(null);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (T t : list) {
            int sortOrder = getSortOrder(t, strArr);
            if (sortOrder != -1) {
                arrayList.set(sortOrder, t);
            } else {
                arrayList2.add(t);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        for (CapturingModeUtil$CapturingMode capturingModeUtil$CapturingMode : arrayList) {
            if (capturingModeUtil$CapturingMode != null) {
                arrayList3.add(capturingModeUtil$CapturingMode);
            }
        }
        arrayList3.addAll(arrayList2);
        return arrayList3;
    }

    private static int getSortOrder(CapturingModeUtil$CapturingMode capturingModeUtil$CapturingMode, String[][]... strArr) {
        int length = 0;
        for (String[][] strArr2 : strArr) {
            int indexOf = getIndexOf(capturingModeUtil$CapturingMode, strArr2);
            if (indexOf >= 0) {
                return indexOf + length;
            }
            length += strArr2.length;
        }
        return -1;
    }

    private static int getIndexOf(CapturingModeUtil$CapturingMode capturingModeUtil$CapturingMode, String[][] strArr) {
        for (int i = 0; i < strArr.length; i++) {
            if (capturingModeUtil$CapturingMode.is(strArr[i][0], strArr[i][1])) {
                return i;
            }
        }
        return -1;
    }

    public static String filteringPrevName(String str) {
        return str.equals("FAST_CAPTURING_CAMERA") ? "SCENE_RECOGNITION" : str;
    }

    public static String filteringPrevActivity(String str) {
        return str.equals("com.sonyericsson.android.camera.fastcapturing.FastCapturingActivity") ? "com.sonyericsson.android.camera.CameraActivity" : str;
    }

    public static void requestRegisterMode(Context context) {
        startCameraCommonService(context, new Intent("com.sonymobile.cameracommon.action.REGISTER_MODE"));
    }

    public static void startCameraCommonService(Context context, Intent intent) {
        intent.setPackage("com.sonymobile.cameracommon");
        intent.putExtra("extra-calling-package-name", context.getApplicationInfo().packageName);
        intent.putExtra("extra-calling-class-name", context.getClass().getName());
        context.startService(intent);
    }

    public static boolean isActivityAvailable(Context context, Intent intent) {
        if (intent.resolveActivity(context.getPackageManager()) != null) {
            return true;
        }
        CamLog.w("isActivityAvailable: false : " + intent);
        return false;
    }
}

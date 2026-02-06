package com.sonymobile.cameracommon.research.idd;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.text.TextUtils;
import com.sonyericsson.android.camera.CameraApplication;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.idd.api.Idd;
import com.sonymobile.cameracommon.research.parameters.Event$Category;
import com.sonymobile.cameracommon.research.parameters.Screen;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import org.json.JSONException;
import org.json.JSONObject;

public class IddUtil {
    private static final String EMPTY_STRING = "";
    private static final String IDD_CLASS_NAME = "com.sonyericsson.idd.api.Idd";
    private static final boolean IDD_DUMP_ENABLE = false;
    private static final String IDD_METHOD_NAME = "addAppDataJSON";
    private static final String KEY_ACTION = "action";
    private static final String KEY_ENVIRONMENT = "environment";
    private static final String KEY_LABEL = "label";
    private static final String KEY_LAUNCHEDBY = "launched_by";
    private static final String KEY_MODE = "mode";
    private static final String KEY_PERFORMANCE_BATTERY_LEVEL = "battery_level";
    private static final String KEY_PERFORMANCE_TARGET = "target";
    private static final String KEY_PERFORMANCE_THERMAL_STATUS = "thermal_status";
    private static final String KEY_PERFORMANCE_TIME = "time";
    private static final String KEY_SETTING = "setting";
    private static final String KEY_SUB_TYPE = "subtype";
    private static final String KEY_TIMESTAMP_ORIGINAL_EVENT = "timestamp_original_event";
    public static final String KEY_TYPE = "type";
    private static final String KEY_VALUE = "value";
    private static final String KEY_VALUE_AFTER = "after";
    private static final String KEY_VALUE_BEFORE = "before";
    private static final String KEY_VALUE_PAGE = "page";
    private static final String KEY_VALUE_RESULT = "result";
    private static final String KEY_VALUE_TIME = "time";
    public static final String KEY_VALUE_TO = "to";
    private static final String KEY_VALUE_WAY = "way";
    public static final String TAG = "IddUtil";
    private static final String THERMAL_STATUS_HIGH = "HIGH";
    private static final String THERMAL_STATUS_NORMAL = "NORMAL";
    private static final String TYPE_AUTO_POWEROFF_EVENT = "AUTO_POWEROFF";
    private static final String TYPE_CAMERA_NOT_AVAILABLE_EVENT = "CAMERA_NOT_AVAILABLE";
    public static final String TYPE_CHANGE_SETTING_EVENT = "CHANGE_SETTING_EVENT";
    private static final String TYPE_LOWBATTERY_ERROR_EVENT = "LOWBATTERY_ERROR";
    private static final String TYPE_MODE_CHANGE_EVENT = "MODE_CHANGE_EVENT";
    private static final String TYPE_MODE_SELECTOR_EVENT = "MODE_SELECTOR_EVENT";
    private static final String TYPE_PANORAMA_EVENT = "PANORAMA";
    private static final String TYPE_PERFORMANCE_EVENT = "PERFORMANCE";
    public static final String TYPE_PHOTO_EVENT = "PHOTO_EVENT";
    private static final String TYPE_PREDICTIVE_LAUNCH_EVENT = "PREDICTIVE_LAUNCH";
    private static final String TYPE_SELFTIMER_CANCEL_EVENT = "SELFTIMER_CANCEL_EVENT";
    private static final String TYPE_SETUP_WIZARD_EVENT = "SETUP_WIZARD_EVENT";
    private static final String TYPE_SLOW_MOTION_EVENT = "SLOW_MOTION_EVENT";
    private static final String TYPE_THERMAL_ERROR_EVENT = "THERMAL_ERROR";
    public static final String TYPE_VIDEO_EVENT = "VIDEO_EVENT";
    private static Context mContext = CameraApplication.getContext();
    private static boolean mIsIddSupportAlreadyChecked = false;
    private static boolean mIsIddSupported = false;
    private static boolean mIsSendingAllowed = true;
    private static String mLaunchedBy = "";
    private static String mPackageName = "";
    private static int mVersionCode = 0;
    private static String mVersionName = "";
    private static String mView = "";

    public static void onPause(boolean z) {
    }

    public static void onResume() {
    }

    static /* synthetic */ String access$000() {
        return mView;
    }

    static /* synthetic */ String access$100() {
        return mLaunchedBy;
    }

    private IddUtil() {
    }

    public static void onCreate() {
        if (CamLog.VERBOSE) {
            CamLog.d("onCreate()");
        }
    }

    private static void setPackageInfo() {
        if (mContext == null || !"".equals(mPackageName)) {
            return;
        }
        mPackageName = mContext.getPackageName();
        PackageManager packageManager = mContext.getPackageManager();
        try {
            mVersionName = packageManager.getPackageInfo(mPackageName, 0).versionName;
            mVersionCode = packageManager.getPackageInfo(mPackageName, 0).versionCode;
        } catch (PackageManager$NameNotFoundException unused) {
            if (CamLog.VERBOSE) {
                CamLog.w("setPackageInfo(): Could not get version info");
            }
        }
    }

    private static boolean checkIddSupported() {
        if (mIsIddSupportAlreadyChecked) {
            return mIsIddSupported;
        }
        mIsIddSupported = false;
        try {
            Class.forName("com.sonyericsson.idd.api.Idd").getMethod("addAppDataJSON", String.class, String.class, Integer.TYPE, JSONObject.class);
            mIsIddSupported = true;
            if (CamLog.VERBOSE) {
                CamLog.d("Idd.addAppDataJSON is supported");
            }
        } catch (ClassNotFoundException | LinkageError | NoSuchMethodException unused) {
            if (CamLog.VERBOSE) {
                CamLog.w("Idd.addAppDataJSON is not supported");
            }
        }
        mIsIddSupportAlreadyChecked = true;
        return mIsIddSupported;
    }

    public static void onDestroy() {
        if (CamLog.VERBOSE) {
            CamLog.d("onDestroy()");
        }
    }

    public static void setLaunchedBy(String str) {
        if (CamLog.DEBUG) {
            CamLog.d("setLaunchedBy() : launchedBy = " + str);
        }
        mLaunchedBy = str;
    }

    public static void setView(Screen screen) {
        if (CamLog.DEBUG) {
            CamLog.d("sendView() : screen = " + screen);
        }
        if (screen == null) {
            return;
        }
        mView = screen.toString();
    }

    public static void sendEvent(Event$Category event$Category, String str, String str2, long j) {
        if (getTypeName(event$Category) == null) {
            return;
        }
        if (CamLog.DEBUG) {
            CamLog.d("sendEvent(): category = " + event$Category.toString() + ", action = " + str + ", label = " + str2 + ", value = " + j);
        }
        IddUtil$JsonStringBuilder iddUtil$JsonStringBuilder = new IddUtil$JsonStringBuilder(getTypeName(event$Category));
        if (str == null) {
            str = "";
        }
        IddUtil$JsonStringBuilder iddUtil$JsonStringBuilder2 = iddUtil$JsonStringBuilder.set("action", str);
        if (str2 == null) {
            str2 = "";
        }
        sendJsonData(iddUtil$JsonStringBuilder2.set("label", str2).set("value", Long.toString(j)).build());
    }

    private static String getTypeName(Event$Category event$Category) {
        if (event$Category == null) {
            return null;
        }
        switch (event$Category) {
        }
        return null;
    }

    public static void sendPerformanceData(String str, long j, boolean z, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append("sendPerformanceData(): key = ");
        sb.append(str == null ? "" : str.toString());
        sb.append(", time(millis) = ");
        sb.append(j);
        sb.append(", isHeated = ");
        sb.append(z);
        String string = sb.toString();
        IddUtil$JsonStringBuilder iddUtil$JsonStringBuilder = new IddUtil$JsonStringBuilder("PERFORMANCE");
        if (str == null) {
            str = "";
        }
        IddUtil$JsonStringBuilder iddUtil$JsonStringBuilder2 = iddUtil$JsonStringBuilder.set("target", str).set("time", Long.toString(j)).set("thermal_status", z ? "HIGH" : "NORMAL");
        if (!TextUtils.isEmpty(str2)) {
            string = string + ", batteryLevel = " + str2;
            iddUtil$JsonStringBuilder2.set("battery_level", str2);
        }
        if (CamLog.DEBUG) {
            CamLog.d(string);
        }
        sendJsonData(iddUtil$JsonStringBuilder2.build());
    }

    public static void sendEventAllSettings(Event$Category event$Category, Map<String, String> map, Map<String, String> map2) {
        if (CamLog.DEBUG) {
            CamLog.d("sendEventAllSettings(): category = " + event$Category.toString() + ", env = " + map + ", settings = " + map2);
        }
        sendJsonData(new IddUtil$JsonStringBuilder(getTypeName(event$Category)).set("environment", map).set("setting", map2).build());
    }

    public static void sendEventChangedSetting(String str, String str2, String str3) {
        if (CamLog.DEBUG) {
            CamLog.d("sendEventChangedSetting(): setting = " + str + ", before = " + str2 + ", after = " + str3);
        }
        IddUtil$JsonStringBuilder iddUtil$JsonStringBuilder = new IddUtil$JsonStringBuilder("CHANGE_SETTING_EVENT");
        if (str == null) {
            str = "";
        }
        IddUtil$JsonStringBuilder iddUtil$JsonStringBuilder2 = iddUtil$JsonStringBuilder.set("setting", str);
        if (str2 == null) {
            str2 = "";
        }
        IddUtil$JsonStringBuilder iddUtil$JsonStringBuilder3 = iddUtil$JsonStringBuilder2.set("before", str2);
        if (str3 == null) {
            str3 = "";
        }
        sendJsonData(iddUtil$JsonStringBuilder3.set("after", str3).build());
    }

    public static void sendEventInternalModeChange(String str, String str2, String str3) {
        if (CamLog.DEBUG) {
            CamLog.d("sendEventInternalModeChange(): mode :" + str + "  To : " + str2 + " Way : " + str3);
        }
        IddUtil$JsonStringBuilder iddUtil$JsonStringBuilder = new IddUtil$JsonStringBuilder("MODE_CHANGE_EVENT");
        if (str == null) {
            str = "";
        }
        IddUtil$JsonStringBuilder iddUtil$JsonStringBuilder2 = iddUtil$JsonStringBuilder.set("mode", str);
        if (str2 == null) {
            str2 = "";
        }
        IddUtil$JsonStringBuilder iddUtil$JsonStringBuilder3 = iddUtil$JsonStringBuilder2.set("to", str2);
        if (str3 == null) {
            str3 = "";
        }
        sendJsonData(iddUtil$JsonStringBuilder3.set("way", str3).build());
    }

    public static void sendEventAddonModeChange(Event$Category event$Category, String str, String str2, String str3) {
        if (getTypeName(event$Category) == null) {
            return;
        }
        if (CamLog.DEBUG) {
            CamLog.d("sendEventAddonModeChange(): category = " + event$Category.toString() + ", action = " + str + ", label = " + str2 + ", method = " + str3);
        }
        IddUtil$JsonStringBuilder iddUtil$JsonStringBuilder = new IddUtil$JsonStringBuilder(getTypeName(event$Category));
        if (str == null) {
            str = "";
        }
        IddUtil$JsonStringBuilder iddUtil$JsonStringBuilder2 = iddUtil$JsonStringBuilder.set("action", str);
        if (str2 == null) {
            str2 = "";
        }
        IddUtil$JsonStringBuilder iddUtil$JsonStringBuilder3 = iddUtil$JsonStringBuilder2.set("label", str2);
        if (str3 == null) {
            str3 = "";
        }
        sendJsonData(iddUtil$JsonStringBuilder3.set("way", str3).build());
    }

    public static void sendWizardEvent(String str, String str2, String str3) {
        if (CamLog.DEBUG) {
            CamLog.d("sendWizardEvent(): page = " + str + ", time = " + str2 + ", reslut = " + str3);
        }
        IddUtil$JsonStringBuilder iddUtil$JsonStringBuilder = new IddUtil$JsonStringBuilder("SETUP_WIZARD_EVENT");
        if (str == null) {
            str = "";
        }
        IddUtil$JsonStringBuilder iddUtil$JsonStringBuilder2 = iddUtil$JsonStringBuilder.set("page", str);
        if (str2 == null) {
            str2 = "";
        }
        IddUtil$JsonStringBuilder iddUtil$JsonStringBuilder3 = iddUtil$JsonStringBuilder2.set("time", str2);
        if (str3 == null) {
            str3 = "";
        }
        sendJsonData(iddUtil$JsonStringBuilder3.set("result", str3).build());
    }

    public static void sendExternalCameraAppEvent(JSONObject jSONObject, long j) throws JSONException {
        if (CamLog.DEBUG) {
            CamLog.d("IddUtil", "sendExternalCameraAppEvent(): json = " + jSONObject.toString() + " timestamp = " + j);
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("HH:mm:ss");
        Date date = new Date(j);
        jSONObject.put("timestamp_original_event", simpleDateFormat.format(date) + "T" + simpleDateFormat2.format(date) + getCurrentTimeZone());
        sendJsonData(jSONObject.toString());
    }

    private static String getCurrentTimeZone() {
        int rawOffset = TimeZone.getDefault().getRawOffset() / 60000;
        StringBuilder sb = new StringBuilder(6);
        if (rawOffset < 0) {
            sb.append(String.format(Locale.US, "-%02d:%02d", Integer.valueOf(Math.abs(rawOffset / 60)), Integer.valueOf(Math.abs(rawOffset % 60))));
        } else {
            sb.append(String.format(Locale.US, "+%02d:%02d", Integer.valueOf(rawOffset / 60), Integer.valueOf(rawOffset % 60)));
        }
        return sb.toString();
    }

    private static void sendJsonData(String str) {
        if (mIsSendingAllowed) {
            setPackageInfo();
            if (checkIddSupported()) {
                try {
                    Idd.addAppDataJSON(mPackageName, mVersionName, mVersionCode, new JSONObject(str));
                } catch (Throwable th) {
                    if (CamLog.VERBOSE) {
                        CamLog.w("sendJsonData(): Could not send event: " + th.getMessage());
                    }
                }
            }
        }
    }
}

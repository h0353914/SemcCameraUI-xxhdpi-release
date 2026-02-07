package com.sonymobile.cameracommon.research;

import android.content.ContentValues;
import android.content.Context;
import com.sonyericsson.android.camera.LaunchCondition$LaunchTrigger;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonymobile.getmore.api.ContributionContract$Event;

/* JADX INFO: loaded from: classes.dex */
enum ResearchUtil$XperiaTipsLaunchTrigger {
    HW_KEY_SLEEP_OR_LOCK,
    HW_KEY_OTHER,
    SHORTCUT_LOCKSCREEN,
    POWER_KEY_DOUBLE_PRESS,
    HOME_APP,
    NOT_TARGET;

    private static final String EVENT_NAME = "launch_trigger";

    static /* synthetic */ void access$1800(Context context, LaunchCondition$LaunchTrigger launchCondition$LaunchTrigger) {
        setLaunchTriggerEvent(context, launchCondition$LaunchTrigger);
    }

    private static void setLaunchTriggerEvent(Context context, LaunchCondition$LaunchTrigger launchCondition$LaunchTrigger) {
        ResearchUtil$XperiaTipsLaunchTrigger researchUtil$XperiaTipsLaunchTrigger;
        if (launchCondition$LaunchTrigger == LaunchCondition$LaunchTrigger.HW_CAMERA_KEY_LOCK) {
            researchUtil$XperiaTipsLaunchTrigger = HW_KEY_SLEEP_OR_LOCK;
        } else if (launchCondition$LaunchTrigger == LaunchCondition$LaunchTrigger.HW_CAMERA_KEY) {
            researchUtil$XperiaTipsLaunchTrigger = HW_KEY_OTHER;
        } else if (launchCondition$LaunchTrigger == LaunchCondition$LaunchTrigger.LOCK_SCREEN) {
            researchUtil$XperiaTipsLaunchTrigger = SHORTCUT_LOCKSCREEN;
        } else if (launchCondition$LaunchTrigger == LaunchCondition$LaunchTrigger.POWER_KEY_DOUBLE_TAP) {
            researchUtil$XperiaTipsLaunchTrigger = POWER_KEY_DOUBLE_PRESS;
        } else if (launchCondition$LaunchTrigger != LaunchCondition$LaunchTrigger.HOME) {
            return;
        } else {
            researchUtil$XperiaTipsLaunchTrigger = HOME_APP;
        }
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("name", "launch_trigger");
            contentValues.put("data", researchUtil$XperiaTipsLaunchTrigger.toString());
            context.getContentResolver().insert(ContributionContract$Event.CONTENT_URI, contentValues);
        } catch (Exception e) {
            if (CamLog.VERBOSE) {
                CamLog.e("Failed setting data to XPERIA Tips : " + e);
            }
        } catch (NoClassDefFoundError e2) {
            CamLog.e("Not found getmore api : " + e2);
        }
    }
}

package com.sonyericsson.android.camera.util;

import android.app.ActivityManager;
import android.app.ActivityManager$MemoryInfo;
import android.app.ActivityManager$RunningAppProcessInfo;
import android.content.Context;
import android.os.Debug;
import android.os.Debug$MemoryInfo;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class MemoryAnalyzer {
    public static final String TAG = "MemoryAnalyzer";

    public static synchronized void logMemoryInfo(Context context, String str, String str2) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        ActivityManager$MemoryInfo activityManager$MemoryInfo = new ActivityManager$MemoryInfo();
        activityManager.getMemoryInfo(activityManager$MemoryInfo);
        if (CamLog.VERBOSE) {
            CamLog.d("System Memory Info : availMem = " + activityManager$MemoryInfo.availMem);
        }
        if (CamLog.VERBOSE) {
            CamLog.d("System Memory Info : threshold = " + activityManager$MemoryInfo.threshold);
        }
        List<ActivityManager$RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
        if (runningAppProcesses != null) {
            int i = 0;
            while (true) {
                if (i >= runningAppProcesses.size()) {
                    break;
                }
                if (runningAppProcesses.get(i).processName.equalsIgnoreCase("com.sonyericsson.android.camera")) {
                    if (CamLog.VERBOSE) {
                        CamLog.d("Info : Find Camera Process !!!");
                    }
                    if (CamLog.VERBOSE) {
                        CamLog.d("Process Info : pid = " + runningAppProcesses.get(i).pid);
                    }
                    if (CamLog.VERBOSE) {
                        CamLog.d("Process Info : uid = " + runningAppProcesses.get(i).uid);
                    }
                    if (CamLog.VERBOSE) {
                        CamLog.d("Process Info : processName = " + runningAppProcesses.get(i).processName);
                    }
                } else {
                    i++;
                }
            }
            if (i == runningAppProcesses.size()) {
                if (CamLog.VERBOSE) {
                    CamLog.d("Info : Can not find Camera Process Info");
                }
            } else {
                Debug$MemoryInfo debug$MemoryInfo = new Debug$MemoryInfo();
                Debug.getMemoryInfo(debug$MemoryInfo);
                if (CamLog.VERBOSE) {
                    CamLog.d("Proc Memory Info : dalvikPrivateDirty   = " + debug$MemoryInfo.dalvikPrivateDirty);
                }
                if (CamLog.VERBOSE) {
                    CamLog.d("Proc Memory Info : dalvikPss            = " + debug$MemoryInfo.dalvikPss);
                }
                if (CamLog.VERBOSE) {
                    CamLog.d("Proc Memory Info : dalvikSharedDirty    = " + debug$MemoryInfo.dalvikSharedDirty);
                }
                if (CamLog.VERBOSE) {
                    CamLog.d("Proc Memory Info : nativePrivateDirty   = " + debug$MemoryInfo.nativePrivateDirty);
                }
                if (CamLog.VERBOSE) {
                    CamLog.d("Proc Memory Info : nativePss            = " + debug$MemoryInfo.nativePss);
                }
                if (CamLog.VERBOSE) {
                    CamLog.d("Proc Memory Info : nativeSharedDirty    = " + debug$MemoryInfo.nativeSharedDirty);
                }
                if (CamLog.VERBOSE) {
                    CamLog.d("Proc Memory Info : otherPrivateDirty    = " + debug$MemoryInfo.otherPrivateDirty);
                }
                if (CamLog.VERBOSE) {
                    CamLog.d("Proc Memory Info : otherPss             = " + debug$MemoryInfo.otherPss);
                }
                if (CamLog.VERBOSE) {
                    CamLog.d("Proc Memory Info : otherSharedDirty     = " + debug$MemoryInfo.otherSharedDirty);
                }
                if (CamLog.VERBOSE) {
                    CamLog.d("Proc Memory Info : getTotalPrivateDirty = " + debug$MemoryInfo.getTotalPrivateDirty());
                }
                if (CamLog.VERBOSE) {
                    CamLog.d("Proc Memory Info : getTotalPss          = " + debug$MemoryInfo.getTotalPss());
                }
                if (CamLog.VERBOSE) {
                    CamLog.d("Proc Memory Info : getTotalSharedDirty  = " + debug$MemoryInfo.getTotalSharedDirty());
                }
            }
        } else if (CamLog.VERBOSE) {
            CamLog.d("Cannot get Running App Processes.");
        }
    }
}

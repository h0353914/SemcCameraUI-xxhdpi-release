package com.google.android.gms.internal;

import android.app.ActivityManager;
import android.app.ActivityManager$RunningAppProcessInfo;
import android.content.Context;
import android.os.Binder;
import java.util.List;

public class zzmy {
    private static String zza(StackTraceElement[] stackTraceElementArr, int i) {
        int i2 = 4 + i;
        if (i2 >= stackTraceElementArr.length) {
            return "<bottom of call stack>";
        }
        StackTraceElement stackTraceElement = stackTraceElementArr[i2];
        return stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName() + ":" + stackTraceElement.getLineNumber();
    }

    public static String zzaq(Context context) {
        return zzj(context, Binder.getCallingPid());
    }

    public static String zzj(Context context, int i) {
        List<ActivityManager$RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return null;
        }
        for (ActivityManager$RunningAppProcessInfo activityManager$RunningAppProcessInfo : runningAppProcesses) {
            if (activityManager$RunningAppProcessInfo.pid == i) {
                return activityManager$RunningAppProcessInfo.processName;
            }
        }
        return null;
    }

    public static String zzl(int i, int i2) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        StringBuffer stringBuffer = new StringBuffer();
        int i3 = i2 + i;
        while (i < i3) {
            stringBuffer.append(zza(stackTrace, i));
            stringBuffer.append(" ");
            i++;
        }
        return stringBuffer.toString();
    }
}

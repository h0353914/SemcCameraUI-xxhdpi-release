package com.sonyericsson.cameracommon.storage;

import android.net.Uri;
import android.os.Environment;
import com.sonyericsson.android.camera.CameraApplication;
import com.sonyericsson.android.camera.util.CamLog;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class SlowMotionPathBuilder {
    private static final String DCF_FILE_NAME_DATE_FORMAT = "yyyyMMddHHmmss";
    private static final String DCF_FILE_NAME_FREE_WORD_120F = "MOV_HFR_120F_";
    private static final String DCF_FILE_NAME_FREE_WORD_SM = "MOV_SM_P120F_";
    private static final String DCF_FILE_NAME_FREE_WORD_SSM = "MOV_SM_P960F_";
    private static final String DCF_FILE_NAME_FREE_WORD_SSS = "MOV_SM_960F_";
    private static final int RETRY_COUNT = 10;
    private static final String TAG = "SlowMotionPathBuilder";
    private String mPrefix;
    private final String mSuffix;
    private static final String DCF_DIR_NAME_FREE_WORD_XPERIA_SLOW_MOTION = "XPERIA" + File.separator + "SLOW_VIDEO";
    private static final Pattern mSSMDetector = Pattern.compile("/MOV_SM_P960F_\\d{" + "yyyyMMddHHmmss".length() + "}.mp4\\z", 2);
    private static final Pattern mSSSDetector = Pattern.compile("/MOV_SM_960F_\\d{" + "yyyyMMddHHmmss".length() + "}.mp4\\z", 2);
    private static final Pattern mHFRDetector = Pattern.compile("/MOV_HFR_120F_\\d{" + "yyyyMMddHHmmss".length() + "}.mp4\\z", 2);
    private static final Pattern mSMDetector = Pattern.compile("/MOV_SM_P120F_\\d{" + "yyyyMMddHHmmss".length() + "}.mp4\\z", 2);

    public SlowMotionPathBuilder(String str) {
        this.mSuffix = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String get(String str, String str2, long j, Storage$StorageType storage$StorageType) {
        byte b;
        int iHashCode = str2.hashCode();
        if (iHashCode != -351666540) {
            if (iHashCode != 1185702096) {
                b = (iHashCode == 1616114994 && str2.equals("STANDARD_SLOW_MOTION")) ? (byte) 1 : (byte) -1;
            } else if (str2.equals("SUPER_SLOW_MOTION")) {
                b = 0;
            }
        } else if (str2.equals("SUPER_SLOW_SHOT")) {
            b = 2;
        }
        switch (b) {
            case 0:
                this.mPrefix = "MOV_SM_P960F_";
                break;
            case 1:
                this.mPrefix = "MOV_HFR_120F_";
                break;
            case 2:
                this.mPrefix = "MOV_SM_960F_";
                break;
        }
        if (storage$StorageType != Storage$StorageType.EXTERNAL_CARD) {
            if (!makeDirectories(str + File.separator + DCF_DIR_NAME_FREE_WORD_XPERIA_SLOW_MOTION)) {
                CamLog.e("Failed to make directory for slow motion video content.");
                return null;
            }
        } else {
            Uri sdCardGrantedUri = StorageUtil.getSdCardGrantedUri(CameraApplication.getContext());
            if (StorageUtil.createDirectory(CameraApplication.getContext(), sdCardGrantedUri, StorageUtil.isExistDcimDirectory(sdCardGrantedUri) ? DCF_DIR_NAME_FREE_WORD_XPERIA_SLOW_MOTION : Environment.DIRECTORY_DCIM + "/" + DCF_DIR_NAME_FREE_WORD_XPERIA_SLOW_MOTION) == null) {
                CamLog.e("Failed to make directory on SD card for slow motion video content.");
                return null;
            }
        }
        Calendar calendar = Calendar.getInstance();
        for (int i = 0; i < 10; i++) {
            calendar.setTimeInMillis((((long) i) * 1000) + j);
            String str3 = str + File.separator + DCF_DIR_NAME_FREE_WORD_XPERIA_SLOW_MOTION + File.separator + this.mPrefix + new SimpleDateFormat("yyyyMMddHHmmss", Locale.US).format(calendar.getTime()) + this.mSuffix;
            if (new File(str3).exists()) {
                CamLog.w("Generated path already exists. Try to generate next path. tryCount:" + i);
            } else {
                if (CamLog.VERBOSE) {
                    CamLog.d("Generate path:" + str3);
                }
                return str3;
            }
        }
        CamLog.e("Failed to generate path. retry:10");
        return null;
    }

    private static boolean makeDirectories(String str) {
        File file = new File(str);
        if (file.isDirectory() || file.mkdirs()) {
            return true;
        }
        CamLog.e("Failed mkdirs() : " + file.getPath());
        return false;
    }

    public static boolean isSuperSlowMotionVideo(String str) {
        return mSSMDetector.matcher(str).find();
    }

    public static boolean isSuperSlowShotVideo(String str) {
        return mSSSDetector.matcher(str).find();
    }

    public static boolean isHFRVideo(String str) {
        return mHFRDetector.matcher(str).find();
    }

    public static boolean isStandardSlowMotionVideo(String str) {
        return mSMDetector.matcher(str).find();
    }
}

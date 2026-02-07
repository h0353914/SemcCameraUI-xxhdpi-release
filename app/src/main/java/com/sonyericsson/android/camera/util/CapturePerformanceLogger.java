package com.sonyericsson.android.camera.util;

import android.util.Log;
import com.sonyericsson.cameracommon.storage.RequestFactory$RequestBuilder;
import com.sonyericsson.cameracommon.storage.SavingRequest;
import com.sonyericsson.cameracommon.storage.SavingTaskManager$SavedFileType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class CapturePerformanceLogger {
    private static final String TAG = "CapturePerformance";
    private static int sNumOfBurstTaken;
    private static final Map<Long, CapturePerformanceLogger$TimeLog> sCaptureTimeMap = new HashMap();
    private static List<CapturePerformanceLogger$TimeLog> sBurstTimeList = new ArrayList();

    private CapturePerformanceLogger() {
    }

    public static CapturePerformanceLogger$TimeLog create(RequestFactory$RequestBuilder requestFactory$RequestBuilder) {
        CapturePerformanceLogger$TimeLog capturePerformanceLogger$TimeLog = new CapturePerformanceLogger$TimeLog(requestFactory$RequestBuilder.mCommonStatus.savedFileType);
        synchronized (sCaptureTimeMap) {
            sCaptureTimeMap.put(Long.valueOf(requestFactory$RequestBuilder.getDateTaken()), capturePerformanceLogger$TimeLog);
        }
        return capturePerformanceLogger$TimeLog;
    }

    public static CapturePerformanceLogger$TimeLog create(SavingRequest savingRequest) {
        CapturePerformanceLogger$TimeLog capturePerformanceLogger$TimeLog = new CapturePerformanceLogger$TimeLog();
        synchronized (sCaptureTimeMap) {
            sCaptureTimeMap.put(Long.valueOf(savingRequest.getDateTaken()), capturePerformanceLogger$TimeLog);
        }
        return capturePerformanceLogger$TimeLog;
    }

    public static CapturePerformanceLogger$TimeLog get(RequestFactory$RequestBuilder requestFactory$RequestBuilder) {
        return sCaptureTimeMap.get(Long.valueOf(requestFactory$RequestBuilder.getDateTaken()));
    }

    public static CapturePerformanceLogger$TimeLog get(SavingRequest savingRequest) {
        return sCaptureTimeMap.get(Long.valueOf(savingRequest.getDateTaken()));
    }

    public static void complete(RequestFactory$RequestBuilder requestFactory$RequestBuilder) {
        sCaptureTimeMap.get(Long.valueOf(requestFactory$RequestBuilder.getDateTaken())).log();
        sCaptureTimeMap.remove(Long.valueOf(requestFactory$RequestBuilder.getDateTaken()));
    }

    public static void complete(SavingRequest savingRequest) {
        CapturePerformanceLogger$TimeLog capturePerformanceLogger$TimeLog = sCaptureTimeMap.get(Long.valueOf(savingRequest.getDateTaken()));
        capturePerformanceLogger$TimeLog.burstNum = savingRequest.getCaptureIdForPredictiveCapture();
        capturePerformanceLogger$TimeLog.log();
        if (SavingTaskManager$SavedFileType.BURST == savingRequest.common.savedFileType) {
            sBurstTimeList.add(capturePerformanceLogger$TimeLog);
        }
        sCaptureTimeMap.remove(Long.valueOf(savingRequest.getDateTaken()));
        if (sNumOfBurstTaken <= 0 || sNumOfBurstTaken != sBurstTimeList.size()) {
            return;
        }
        completeBurst();
        sNumOfBurstTaken = 0;
    }

    public static void setNumOfBurstTaken(int i) {
        sNumOfBurstTaken = i;
    }

    private static void completeBurst() {
        long j = 0;
        long j2 = 0;
        long j3 = 0;
        long j4 = 0;
        for (CapturePerformanceLogger$TimeLog capturePerformanceLogger$TimeLog : sBurstTimeList) {
            j += capturePerformanceLogger$TimeLog.writeFileDone - capturePerformanceLogger$TimeLog.startSave;
            j2 += capturePerformanceLogger$TimeLog.scanFileDone - capturePerformanceLogger$TimeLog.startScan;
            if (j3 != 0) {
                j4 += capturePerformanceLogger$TimeLog.snapshotDone - j3;
            }
            j3 = capturePerformanceLogger$TimeLog.snapshotDone;
        }
        long j5 = sBurstTimeList.get(0).startSnapshot;
        Log.e("CapturePerformance", "===============================================\nTime spent to capture " + sBurstTimeList.size() + " images = " + (sBurstTimeList.get(sBurstTimeList.size() - 1).scanFileDone - j5) + " [ms]\nAverage Capture Duration = " + (j4 / ((long) (sBurstTimeList.size() - 1))) + " [ms]\nAverage Save Duration = " + (j / ((long) sBurstTimeList.size())) + " [ms]\nAverage ScanFile Duration = " + (j2 / ((long) sBurstTimeList.size())) + " [ms]\n===============================================");
        sBurstTimeList.clear();
    }
}

package com.sonyericsson.cameracommon.utility;

import android.annotation.SuppressLint;
import android.os.Environment;
import com.sonyericsson.android.camera.util.CamLog;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class MeasurePerformance {
    private static final String DEBUG_PERFORM_FILE = "camera_perform.csv";
    private static final boolean DEBUG_PERFORM_MEM = false;
    private static final String DEBUG_PERFORM_TIME_TAG = "VERBOSE_PERFORM_TIME_TAG";
    private static final String FILE = "camera_perform.csv";
    public static final String TAG = "MeasurePerformance";
    public static final String TAG_DEVICE = "[DEVICE]";
    public static final String TAG_SEQ = "[SEQ]";
    public static final String TAG_SHOT = "[SHOT]";
    public static final String TAG_STARTUP = "[START UP]";
    public static final String TAG_SURFACE = "[SURFACE]";
    public static final String TAG_TASK = "[TASK]";
    private static boolean sMemoryFlag;
    private static boolean sTimerFlag;
    private long originalTime;
    private static List<MeasurePerformance$MeasureTime> mTimeList = Collections.synchronizedList(new ArrayList());
    private static List<MeasurePerformance$MeasureResource> mResourceList = Collections.synchronizedList(new ArrayList());
    private static MeasurePerformance sInstance = new MeasurePerformance();

    public static final void outResultDelay(int i) {
    }

    protected MeasurePerformance() {
        if (CamLog.VERBOSE) {
            CamLog.d("MeasurePerformance() is called.");
        }
        init();
        this.originalTime = System.currentTimeMillis();
    }

    private static void init() {
        mTimeList.clear();
        mResourceList.clear();
    }

    public static final void setTimerFlag(boolean z) {
        sTimerFlag = z;
    }

    public static final void setMemoryFlag(boolean z) {
        sMemoryFlag = z;
    }

    private static final void measureTime(MeasurePerformance$PerformanceIds measurePerformance$PerformanceIds, MeasurePerformance$MeasureKind measurePerformance$MeasureKind, String str) {
        if (sTimerFlag) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            MeasurePerformance$MeasureTime measurePerformance$MeasureTime = new MeasurePerformance$MeasureTime(null);
            measurePerformance$MeasureTime.id = measurePerformance$PerformanceIds;
            measurePerformance$MeasureTime.additionalInfo = str;
            measurePerformance$MeasureTime.time = jCurrentTimeMillis;
            measurePerformance$MeasureTime.kind = measurePerformance$MeasureKind;
            mTimeList.add(measurePerformance$MeasureTime);
        }
    }

    private static final boolean isLastMeasuredTime(List<MeasurePerformance$MeasureTime> list, int i) {
        MeasurePerformance$MeasureTime measurePerformance$MeasureTime = list.get(i);
        for (int i2 = i + 1; i2 < list.size(); i2++) {
            MeasurePerformance$MeasureTime measurePerformance$MeasureTime2 = list.get(i2);
            if (measurePerformance$MeasureTime2.kind == measurePerformance$MeasureTime.kind && measurePerformance$MeasureTime2.id == measurePerformance$MeasureTime.id) {
                return false;
            }
        }
        return true;
    }

    public static final void measureTime(MeasurePerformance$PerformanceIds measurePerformance$PerformanceIds, boolean z, String str) {
        measureTime(measurePerformance$PerformanceIds, z ? MeasurePerformance$MeasureKind.MEASURE_START : MeasurePerformance$MeasureKind.MEASURE_END, str);
    }

    public static final void measureTime(MeasurePerformance$PerformanceIds measurePerformance$PerformanceIds, boolean z) {
        measureTime(measurePerformance$PerformanceIds, z ? MeasurePerformance$MeasureKind.MEASURE_START : MeasurePerformance$MeasureKind.MEASURE_END, "");
    }

    public static final void measureTimeOverwrite(MeasurePerformance$PerformanceIds measurePerformance$PerformanceIds, boolean z) {
        measureTime(measurePerformance$PerformanceIds, z ? MeasurePerformance$MeasureKind.MEASURE_START_OVERWRITE : MeasurePerformance$MeasureKind.MEASURE_END, "");
    }

    public static final void measureResource(int i) {
        if (sMemoryFlag) {
            MeasurePerformance$MeasureResource measurePerformance$MeasureResource = new MeasurePerformance$MeasureResource(null);
            Runtime runtime = Runtime.getRuntime();
            long j = runtime.totalMemory();
            long jFreeMemory = runtime.freeMemory();
            measurePerformance$MeasureResource.mTotalMemory = j;
            measurePerformance$MeasureResource.mFreeMemory = jFreeMemory;
            mResourceList.add(measurePerformance$MeasureResource);
        }
    }

    public static final void measureResource(String str) {
        if (sMemoryFlag) {
            MeasurePerformance$MeasureResource measurePerformance$MeasureResource = new MeasurePerformance$MeasureResource(null);
            Runtime runtime = Runtime.getRuntime();
            long j = runtime.totalMemory();
            long jFreeMemory = runtime.freeMemory();
            measurePerformance$MeasureResource.mTag = str;
            measurePerformance$MeasureResource.mTotalMemory = j;
            measurePerformance$MeasureResource.mFreeMemory = jFreeMemory;
            mResourceList.add(measurePerformance$MeasureResource);
        }
    }

    public static final void outResult() {
        if (sTimerFlag || sMemoryFlag) {
            ArrayList arrayList = new ArrayList(mTimeList);
            ArrayList arrayList2 = new ArrayList(mResourceList);
            String str = "";
            init();
            if (sTimerFlag) {
                str = "" + setResultTime(arrayList);
            }
            if (sMemoryFlag) {
                str = str + setResultResource(arrayList2);
            }
            writeFile(str);
        }
    }

    private static String setResultTime(List<MeasurePerformance$MeasureTime> list) {
        MeasurePerformance$MeasureTime[] measurePerformance$MeasureTimeArr = new MeasurePerformance$MeasureTime[MeasurePerformance$PerformanceIds.values().length];
        MeasurePerformance$MeasureAmountTime[] measurePerformance$MeasureAmountTimeArr = new MeasurePerformance$MeasureAmountTime[MeasurePerformance$PerformanceIds.values().length];
        for (int i = 0; i < MeasurePerformance$PerformanceIds.values().length; i++) {
            measurePerformance$MeasureAmountTimeArr[i] = new MeasurePerformance$MeasureAmountTime(null);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("---Measure Time Start---\n");
        sb.append("VERBOSE_PERFORM_TIME_TAGID,Time[ms],Comment\n");
        for (int i2 = 0; i2 < list.size(); i2++) {
            MeasurePerformance$MeasureTime measurePerformance$MeasureTime = list.get(i2);
            if (measurePerformance$MeasureTime.kind == MeasurePerformance$MeasureKind.MEASURE_START) {
                if (measurePerformance$MeasureTimeArr[measurePerformance$MeasureTime.id.ordinal()] == null) {
                    measurePerformance$MeasureTimeArr[measurePerformance$MeasureTime.id.ordinal()] = measurePerformance$MeasureTime;
                }
            } else if (measurePerformance$MeasureTime.kind == MeasurePerformance$MeasureKind.MEASURE_START_OVERWRITE) {
                measurePerformance$MeasureTimeArr[measurePerformance$MeasureTime.id.ordinal()] = measurePerformance$MeasureTime;
            } else if (measurePerformance$MeasureTimeArr[measurePerformance$MeasureTime.id.ordinal()] != null) {
                measurePerformance$MeasureAmountTimeArr[measurePerformance$MeasureTime.id.ordinal()].id = measurePerformance$MeasureTime.id;
                measurePerformance$MeasureAmountTimeArr[measurePerformance$MeasureTime.id.ordinal()].total += measurePerformance$MeasureTime.time - measurePerformance$MeasureTimeArr[measurePerformance$MeasureTime.id.ordinal()].time;
                measurePerformance$MeasureAmountTimeArr[measurePerformance$MeasureTime.id.ordinal()].count++;
                if (isLastMeasuredTime(list, i2)) {
                    sb.append("VERBOSE_PERFORM_TIME_TAG");
                    sb.append(measurePerformance$MeasureTime.id.tag);
                    sb.append(measurePerformance$MeasureTime.id.name());
                    sb.append(", ");
                    sb.append(Long.toString(measurePerformance$MeasureTime.time - measurePerformance$MeasureTimeArr[measurePerformance$MeasureTime.id.ordinal()].time));
                    sb.append(", ");
                    sb.append(measurePerformance$MeasureTime.additionalInfo);
                    sb.append(measurePerformance$MeasureTimeArr[measurePerformance$MeasureTime.id.ordinal()].additionalInfo);
                    sb.append("\n");
                    measurePerformance$MeasureTimeArr[measurePerformance$MeasureTime.id.ordinal()] = null;
                }
            }
        }
        sb.append("VERBOSE_PERFORM_TIME_TAG---Measure Time End---\n\n");
        sb.append("---Measure Time Dump Start---\n");
        sb.append("ID,Type(1:Start/2:End),SytemTime,RelativeTime,Comment\n");
        for (int i3 = 0; i3 < list.size(); i3++) {
            MeasurePerformance$MeasureTime measurePerformance$MeasureTime2 = list.get(i3);
            sb.append(measurePerformance$MeasureTime2.id.name());
            sb.append(", ");
            sb.append(measurePerformance$MeasureTime2.kind);
            sb.append(", ");
            sb.append(Long.toString(measurePerformance$MeasureTime2.time));
            sb.append(", ");
            sb.append(Long.toString(measurePerformance$MeasureTime2.time - sInstance.originalTime));
            sb.append(", ");
            sb.append(measurePerformance$MeasureTime2.additionalInfo);
            sb.append("\n");
        }
        for (int i4 = 0; i4 < MeasurePerformance$PerformanceIds.values().length; i4++) {
            MeasurePerformance$MeasureAmountTime measurePerformance$MeasureAmountTime = measurePerformance$MeasureAmountTimeArr[i4];
            if (measurePerformance$MeasureAmountTime.id != null) {
                sb.append("AmountTime: ");
                sb.append(measurePerformance$MeasureAmountTime.id.name());
                sb.append(" total: ");
                sb.append(Long.toString(measurePerformance$MeasureAmountTime.total));
                sb.append(", count: ");
                sb.append(Long.toString(measurePerformance$MeasureAmountTime.count));
                sb.append(", avalage: ");
                sb.append(Long.toString(measurePerformance$MeasureAmountTime.total / ((long) measurePerformance$MeasureAmountTime.count)));
                sb.append("\n");
            }
        }
        sb.append("---Measure Time Dump End---\n");
        return sb.toString();
    }

    private static String setResultResource(List<MeasurePerformance$MeasureResource> list) {
        StringBuilder sb = new StringBuilder();
        sb.append("---Measure Resource Start---\n");
        sb.append("ID,Total,Used,free\n");
        for (int i = 0; list.size() > i; i++) {
            String str = list.get(i).mTag;
            long j = list.get(i).mTotalMemory;
            long j2 = list.get(i).mFreeMemory;
            sb.append(str + "," + j + "," + (j - j2) + "," + j2 + "\n");
        }
        sb.append("---Measure Resource End---\n");
        return sb.toString();
    }

    @SuppressLint({"NewApi"})
    private static void writeFile(String str) {
        File file = new File(Environment.getExternalStorageDirectory() + "/camera_perform.csv");
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException unused) {
                CamLog.e("Create output file failed");
                return;
            }
        }
        try {
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(Environment.getExternalStorageDirectory() + "/camera_perform.csv"));
            try {
                outputStreamWriter.write(str);
                if (outputStreamWriter != null) {
                    outputStreamWriter.close();
                }
            } finally {
            }
        } catch (FileNotFoundException e) {
            CamLog.e("[MeasurePerformance::writeFile]:Error = " + e);
        } catch (IOException e2) {
            CamLog.e("[MeasurePerformance::writeFile]:Error = " + e2);
        }
    }
}

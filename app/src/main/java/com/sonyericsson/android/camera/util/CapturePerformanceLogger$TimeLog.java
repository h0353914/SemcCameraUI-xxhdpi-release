package com.sonyericsson.android.camera.util;

import com.sonyericsson.cameracommon.storage.SavingTaskManager$SavedFileType;
import java.text.DecimalFormat;

public class CapturePerformanceLogger$TimeLog {
    public int burstNum;
    public int fileSize;
    private final SavingTaskManager$SavedFileType savingFileType;
    public long scanFileDone;
    public long shutterDone;
    public long snapshotDone;
    public long startSave;
    public long startScan;
    public long startSnapshot;
    public long writeFileDone;

    public CapturePerformanceLogger$TimeLog() {
        this.savingFileType = SavingTaskManager$SavedFileType.PHOTO;
    }

    public CapturePerformanceLogger$TimeLog(SavingTaskManager$SavedFileType savingTaskManager$SavedFileType) {
        this.savingFileType = savingTaskManager$SavedFileType;
    }

    void log() {
        StringBuilder sb = new StringBuilder();
        DecimalFormat decimalFormat = new DecimalFormat("#.0");
        if (CapturePerformanceLogger$1.$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType[this.savingFileType.ordinal()] == 1) {
            sb.append("Burst: ");
            sb.append("Num = ");
            sb.append(this.burstNum);
            sb.append("\tSize = ");
            sb.append(decimalFormat.format(((double) this.fileSize) / 1048576.0d));
            sb.append(" MB");
            sb.append("\tCapture = ");
            sb.append(this.snapshotDone - this.startSnapshot);
            sb.append("\tSave = ");
            sb.append(this.writeFileDone - this.startSave);
            sb.append("\tScan = ");
            sb.append(this.scanFileDone - this.startScan);
        } else {
            sb.append("[[[");
            sb.append(this.startSnapshot);
            sb.append(',');
            sb.append(this.shutterDone - this.startSnapshot);
            sb.append(',');
            sb.append(this.snapshotDone - this.startSnapshot);
            sb.append(',');
            sb.append(this.startSave - this.startSnapshot);
            sb.append(',');
            sb.append(this.writeFileDone - this.startSnapshot);
            sb.append(',');
            sb.append(this.startScan - this.startSnapshot);
            sb.append(',');
            sb.append(this.scanFileDone - this.startSnapshot);
            sb.append("]]]");
        }
        CamLog.d(sb.toString());
    }
}

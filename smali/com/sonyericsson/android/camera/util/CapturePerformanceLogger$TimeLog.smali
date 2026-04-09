.class public Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;
.super Ljava/lang/Object;
.source "CapturePerformanceLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeLog"
.end annotation


# instance fields
.field public burstNum:I

.field public fileSize:I

.field private final savingFileType:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

.field public scanFileDone:J

.field public shutterDone:J

.field public snapshotDone:J

.field public startSave:J

.field public startScan:J

.field public startSnapshot:J

.field public writeFileDone:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->savingFileType:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->savingFileType:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    return-void
.end method


# virtual methods
.method log()V
    .locals 8

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#.0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 140
    sget-object v2, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$1;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->savingFileType:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const-string v1, "[[["

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-wide v1, p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->startSnapshot:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    iget-wide v4, p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->shutterDone:J

    iget-wide v6, p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->startSnapshot:J

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    iget-wide v4, p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->snapshotDone:J

    iget-wide v6, p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->startSnapshot:J

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    iget-wide v4, p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->startSave:J

    iget-wide v6, p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->startSnapshot:J

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    iget-wide v4, p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->writeFileDone:J

    iget-wide v6, p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->startSnapshot:J

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    iget-wide v4, p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->startScan:J

    iget-wide v6, p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->startSnapshot:J

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    iget-wide v1, p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->scanFileDone:J

    iget-wide v4, p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->startSnapshot:J

    sub-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "]]]"

    .line 170
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v2, "Burst: "

    .line 142
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Num = "

    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget v2, p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->burstNum:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\tSize = "

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget v2, p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->fileSize:I

    int-to-double v4, v2

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MB"

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tCapture = "

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-wide v1, p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->snapshotDone:J

    iget-wide v4, p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->startSnapshot:J

    sub-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\tSave = "

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-wide v1, p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->writeFileDone:J

    iget-wide v4, p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->startSave:J

    sub-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\tScan = "

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-wide v1, p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->scanFileDone:J

    iget-wide v4, p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->startScan:J

    sub-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 173
    :goto_0
    new-array p0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method

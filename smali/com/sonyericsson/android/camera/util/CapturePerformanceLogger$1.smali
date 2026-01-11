.class synthetic Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$1;
.super Ljava/lang/Object;
.source "CapturePerformanceLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 140
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->values()[Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$1;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

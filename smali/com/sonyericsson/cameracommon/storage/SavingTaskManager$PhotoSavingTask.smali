.class public Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;
.super Ljava/lang/Object;
.source "SavingTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhotoSavingTask"
.end annotation


# instance fields
.field private volatile mIsCanceled:Z

.field private volatile mIsRunning:Z

.field private final mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;


# direct methods
.method static bridge synthetic -$$Nest$mgetExpectedFileSize(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;)I
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->getExpectedFileSize()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mrelease(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->release()V

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 173
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mIsCanceled:Z

    .line 177
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    .line 178
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mIsRunning:Z

    return-void
.end method

.method private assignOutput()Landroid/net/Uri;
    .locals 4

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 186
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "assignOutput getExtraOutput != null"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string v0, "assignOutput getExtraOutput != null 2"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 190
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Create dir: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Filed mkdirs() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 198
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 200
    :cond_4
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_5

    const-string v0, "assignOutput getExtraOutput == null"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 204
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isOneShot()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->-$$Nest$fgetmCallingPackageName(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.cts.verifier"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 205
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_6

    const-string p0, "assignOutput CTS verifier do not need store image"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_6
    move-object p0, v1

    goto :goto_1

    .line 207
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    const-string v3, "assignOutput getSaveTimeForPredictiveCapture() =  null"

    if-ne v0, v2, :cond_9

    .line 208
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_8

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 210
    :cond_8
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/ManualBurstPathBuilder;->getPhotoPath(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 211
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getSaveTimeForPredictiveCapture()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    .line 212
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_a

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 214
    :cond_a
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/SinglePhotoPathBuilder;->getPhotoPath(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 216
    :cond_b
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_c

    const-string v0, "assignOutput getSaveTimeForPredictiveCapture() !=  null"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 218
    :cond_c
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->getPhotoPath(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    if-nez p0, :cond_e

    .line 221
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_d

    const-string p0, "assignOutput path =  null"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    return-object v1

    .line 225
    :cond_e
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private getExpectedFileSize()I
    .locals 1

    .line 358
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mIsRunning:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isImageReaderUsing()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 p0, 0xf00000

    return p0

    .line 366
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getImageData()[B

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method private release()V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    iget-boolean v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mIsSmallImage:Z

    if-nez v0, :cond_0

    .line 451
    const-string p0, "Caused by Final imageData is received, so can not set image to null"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 454
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->close()V

    return-void
.end method

.method private store(Landroid/net/Uri;)V
    .locals 11

    .line 371
    const-string v0, " time:"

    .line 0
    const-string/jumbo v1, "store: setLastModified failed. filePath:"

    const-string/jumbo v2, "store: parse failed. filePath:"

    .line 371
    const-string/jumbo v3, "store() E"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 374
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->get(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 375
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->get(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->startSave:J

    .line 378
    :cond_0
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "storeContent E URI:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 380
    :cond_1
    const-string v3, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 381
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "This uri is file path. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 381
    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 383
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->setFilePath(Ljava/lang/String;)V

    goto :goto_0

    .line 384
    :cond_3
    const-string v3, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 385
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_4

    .line 386
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "This uri is file content. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 387
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->setFilePath(Ljava/lang/String;)V

    .line 390
    :cond_5
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[datetaken:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getDateTaken()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]start saving"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 392
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-direct {p0, v3, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->writeToStorage(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object p1

    .line 394
    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_6

    .line 395
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-static {p1, v0, v1, p0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->-$$Nest$mnotifyStoreComplete(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V

    return-void

    .line 400
    :cond_6
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->get(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 401
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->get(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, v3, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->writeFileDone:J

    .line 404
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getDateTaken()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]store is success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 406
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-boolean v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->addToMediaStore:Z

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_1

    .line 442
    :cond_8
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    .line 443
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    .line 442
    invoke-static {p1, v0, v1, p0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->-$$Nest$mnotifyStoreComplete(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V

    goto/16 :goto_3

    .line 408
    :cond_9
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 413
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->isPredictiveCaptureImage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 414
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyyMMddHHmmssSSS"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 418
    :try_start_1
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getSaveTimeForPredictiveCapture()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 420
    :catch_0
    :try_start_2
    new-array v4, v6, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    .line 421
    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getSaveTimeForPredictiveCapture()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    .line 420
    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    move-object v2, v7

    :goto_2
    if-eqz v2, :cond_a

    .line 424
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 425
    const-string v8, "date_modified"

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 426
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object v8, v8, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 427
    iget-object v9, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Landroid/net/Uri;

    invoke-virtual {v8, v9, v4, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_a

    .line 429
    new-array v4, v6, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 430
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 429
    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 435
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-static {v0, v1, p1, v2}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->-$$Nest$mnotifyStoreComplete(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 437
    :catch_1
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL_MEMORY_FULL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-static {p1, v0, v1, p0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->-$$Nest$mnotifyStoreComplete(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V

    .line 446
    :goto_3
    const-string/jumbo p0, "store() X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method

.method private verifyImageDataBeforeStoring(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;Landroid/net/Uri;)I
    .locals 1

    .line 238
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isImageReaderUsing()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 239
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getImageReaderData()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getImageData()[B

    move-result-object p0

    array-length p0, p0

    :goto_0
    if-nez p0, :cond_2

    .line 246
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "The image data is empty. Camera will create broken file. uri:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 248
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getImageReaderData()Ljava/nio/ByteBuffer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 250
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " buff.capacity:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 251
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " buff.limit:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 252
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " buff.position:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 255
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return p0
.end method

.method private writeToStorage(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;Landroid/net/Uri;)Landroid/util/Pair;
    .locals 3

    const/4 v0, 0x0

    .line 271
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->verifyImageDataBeforeStoring(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;Landroid/net/Uri;)I

    move-result v1

    .line 272
    new-instance v2, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-direct {v2, p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;Landroid/net/Uri;)V

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->storeData(Ljava/lang/Exception;)Landroid/util/Pair;

    move-result-object p0

    .line 273
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->close()V

    .line 275
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->get(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 276
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->get(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    move-result-object p1

    iput v1, p1, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->fileSize:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 280
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to store image. : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    move-object p0, v0

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    .line 283
    :cond_1
    new-instance p0, Landroid/util/Pair;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 354
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mIsCanceled:Z

    return-void
.end method

.method public final run()V
    .locals 6

    .line 288
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mIsCanceled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 291
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mIsRunning:Z

    .line 293
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    .line 294
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->-$$Nest$fgetmStorageAccessSemaphoreMap(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Semaphore;

    .line 297
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 298
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "PhotoSavingTask["

    if-eqz v3, :cond_1

    :try_start_1
    new-array v0, v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]: E"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v0, v5

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 305
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->assignOutput()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 307
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->store(Landroid/net/Uri;)V

    .line 309
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getSavedFileType()Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    move-result-object v0

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    .line 310
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isFinalInSavingGroup()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    .line 312
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getSaveTimeForPredictiveCapture()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    .line 313
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getCaptureIdForPredictiveCapture()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 311
    invoke-static {v0, v3}, Lcom/sonyericsson/cameracommon/storage/ManualBurstPathBuilder;->getPhotoPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->updateBurstCaptureName(Ljava/lang/String;)Z

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-static {v0, p0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->-$$Nest$mpopPhotoSavingTask(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;)V

    .line 320
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->-$$Nest$fgetmStorageManager(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object v0

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->PHOTO_STORING_COMPLETED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    .line 321
    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->updateStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    .line 323
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->-$$Nest$fgetmStorageManager(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->checkAndNotifyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    goto :goto_0

    .line 325
    :cond_3
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_4

    const-string v0, "assignOutput() is null"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 327
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-static {v0, p0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->-$$Nest$mpopPhotoSavingTask(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;)V

    .line 331
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->-$$Nest$fgetmStorageManager(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object v0

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->PHOTO_STORING_COMPLETED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    .line 332
    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->updateStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    .line 334
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->close()V

    .line 335
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    new-instance v3, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask$1;

    invoke-direct {v3, p0, v1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask$1;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    invoke-static {v0, v3}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->-$$Nest$mrunOnUiThread(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Ljava/lang/Runnable;)V

    .line 343
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-static {v0, v3, v5, p0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->-$$Nest$mnotifyStoreComplete(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V

    .line 346
    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 347
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]: X"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5
    return-void

    .line 301
    :catch_0
    const-string p0, "Failed to acquire of storage access permit."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void
.end method

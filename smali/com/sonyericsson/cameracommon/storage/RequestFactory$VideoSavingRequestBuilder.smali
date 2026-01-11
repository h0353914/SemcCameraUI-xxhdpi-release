.class public Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;
.super Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;
.source "RequestFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/RequestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoSavingRequestBuilder"
.end annotation


# instance fields
.field public mVideoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;)V
    .locals 0

    .line 195
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;)V

    .line 196
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mVideoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    return-void
.end method

.method private getOutputFile(Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;)Ljava/lang/String;
    .locals 5

    .line 256
    const-string v0, "/dev/null"

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const/4 p2, 0x0

    move-object v1, v0

    :goto_0
    const/16 v2, 0x1e

    if-ge p2, v2, :cond_2

    .line 261
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getDateTaken()J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lcom/sonyericsson/cameracommon/storage/VideoPathBuilder;->getVideoPath(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/16 v2, 0x64

    .line 265
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 270
    :cond_1
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_2

    .line 271
    const-string p0, "Path is neither null nor /dev/null"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    if-lt p2, v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 283
    :goto_1
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_4

    .line 284
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "getOutputFile: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 204
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mVideoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->mDuration:J

    return-wide v0
.end method

.method public getVideo()Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mVideoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    return-object p0
.end method

.method public setDuration(J)V
    .locals 2

    .line 208
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setDuration: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 209
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mVideoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iput-wide p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->mDuration:J

    return-void
.end method

.method public setSlowMotion(ZLjava/lang/String;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    .locals 0

    .line 222
    check-cast p3, Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    .line 223
    invoke-virtual {p3}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->getCameraStorageManager()Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object p3

    if-eqz p3, :cond_4

    if-eqz p2, :cond_1

    .line 226
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    .line 227
    const-string p1, "set path for slow motion to video request"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 229
    :cond_0
    invoke-virtual {p3, p2, p4}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->getSlowMotionPath(Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->setFilePath(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_1
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_2

    .line 232
    const-string p2, "set path video request"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 234
    :cond_2
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object p2, p2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->fileExtension:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getOutputFile(Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;)Ljava/lang/String;

    move-result-object p2

    .line 236
    const-string p3, "/dev/null"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    if-eqz p1, :cond_3

    .line 237
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object p1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->fileExtension:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "_temp"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object p4, p4, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->fileExtension:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 239
    :cond_3
    invoke-virtual {p0, p2}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->setFilePath(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

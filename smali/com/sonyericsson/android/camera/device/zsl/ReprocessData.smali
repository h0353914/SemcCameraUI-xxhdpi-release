.class public Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;
.super Ljava/lang/Object;
.source "ReprocessData.java"


# instance fields
.field private image:Landroid/media/Image;

.field private result:Landroid/hardware/camera2/TotalCaptureResult;

.field private token:Lcom/sonyericsson/android/camera/device/zsl/ImageToken;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/device/zsl/ImageToken;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->token:Lcom/sonyericsson/android/camera/device/zsl/ImageToken;

    return-void
.end method


# virtual methods
.method public getImage()Landroid/media/Image;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->image:Landroid/media/Image;

    return-object p0
.end method

.method public getResult()Landroid/hardware/camera2/TotalCaptureResult;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->result:Landroid/hardware/camera2/TotalCaptureResult;

    return-object p0
.end method

.method public isValid()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->image:Landroid/media/Image;

    invoke-static {v0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->result:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public recycle()V
    .locals 2

    .line 69
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "recycle() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->image:Landroid/media/Image;

    if-eqz v0, :cond_1

    .line 72
    :try_start_0
    invoke-virtual {v0}, Landroid/media/Image;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 74
    const-string v1, " ### IllegalArgumentException e : "

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 78
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->token:Lcom/sonyericsson/android/camera/device/zsl/ImageToken;

    if-eqz p0, :cond_2

    .line 79
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/zsl/ImageToken;->recycle()V

    :cond_2
    return-void
.end method

.method public setImage(Landroid/media/Image;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->image:Landroid/media/Image;

    return-void
.end method

.method public setResult(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->result:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReprocessData{image="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->image:Landroid/media/Image;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->result:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->token:Lcom/sonyericsson/android/camera/device/zsl/ImageToken;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

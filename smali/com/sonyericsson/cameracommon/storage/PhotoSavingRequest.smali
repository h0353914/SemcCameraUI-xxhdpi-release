.class public Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;
.super Lcom/sonyericsson/cameracommon/storage/SavingRequest;
.source "PhotoSavingRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PhotoSavingRequest"


# instance fields
.field private isSmallJpegData:Z

.field private isUsingProcessingMediaAPI:Z

.field private mImage:Landroid/media/Image;

.field private mImageReader:Landroid/media/ImageReader;

.field private mIsOneShot:Z

.field private mOnImageReaderDettachedListener:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;

.field public final photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

.field public final shouldUpdateOrientationBeforeStoring:Z


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;Z)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;)V

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mIsOneShot:Z

    .line 97
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    .line 98
    iput-boolean p3, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->shouldUpdateOrientationBeforeStoring:Z

    .line 100
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    const-string p1, "PhotoSavingRequest: at created."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->log()V

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;)V
    .locals 2

    .line 110
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mIsOneShot:Z

    .line 111
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    iget-object p1, p1, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    invoke-direct {v1, p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    .line 112
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->shouldUpdateOrientationBeforeStoring:Z

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;I)V
    .locals 1

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingRequest;I)V

    const/4 p2, 0x0

    .line 50
    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mIsOneShot:Z

    .line 123
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    iget-object p1, p1, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    invoke-direct {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    .line 124
    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->shouldUpdateOrientationBeforeStoring:Z

    return-void
.end method


# virtual methods
.method public attachImageReader(Landroid/media/ImageReader;Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImageReader:Landroid/media/ImageReader;

    .line 141
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mOnImageReaderDettachedListener:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;

    return-void
.end method

.method public close()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImage:Landroid/media/Image;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 182
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImage:Landroid/media/Image;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mImage:[B

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mImage:[B

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mOnImageReaderDettachedListener:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;

    if-eqz v0, :cond_2

    .line 190
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImageReader:Landroid/media/ImageReader;

    invoke-interface {v0, v2}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;->onDetached(Landroid/media/ImageReader;)V

    .line 192
    :cond_2
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImageReader:Landroid/media/ImageReader;

    return-void
.end method

.method public getImageData()[B
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mImage:[B

    return-object p0
.end method

.method public getImageReaderData()Ljava/nio/ByteBuffer;
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    .line 161
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImage:Landroid/media/Image;

    if-nez v1, :cond_0

    .line 162
    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImage:Landroid/media/Image;

    .line 165
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImage:Landroid/media/Image;

    if-eqz p0, :cond_1

    .line 166
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    const/4 v0, 0x0

    .line 167
    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    goto :goto_0

    .line 170
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ImageReader maybe closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isImageReaderUsing()Z
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImageReader:Landroid/media/ImageReader;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOneShot()Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mIsOneShot:Z

    return p0
.end method

.method public isPredictiveCaptureCoverImage()Z
    .locals 0

    .line 207
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->isPredictiveCaptureCoverImage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isPredictiveCaptureImage()Z
    .locals 0

    .line 203
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->isPredictiveCaptureImage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSmallJpegData()Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isSmallJpegData:Z

    return p0
.end method

.method public isUsingProcessingMediaAPI()Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI:Z

    return p0
.end method

.method public log()V
    .locals 0

    .line 198
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->log()V

    .line 199
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->log()V

    return-void
.end method

.method public setImageData([B)V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mImage:[B

    return-void
.end method

.method public setOneShot(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mIsOneShot:Z

    return-void
.end method

.method public setSmallJpegData(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isSmallJpegData:Z

    .line 71
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mIsSmallImage:Z

    return-void
.end method

.method public setUsingProcessingMediaAPI(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI:Z

    return-void
.end method

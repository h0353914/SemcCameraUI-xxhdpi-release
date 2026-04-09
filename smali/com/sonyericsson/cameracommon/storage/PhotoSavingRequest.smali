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
.field private mImage:Landroid/media/Image;

.field private mImageReader:Landroid/media/ImageReader;

.field private mOnImageReaderDettachedListener:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;

.field public final photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

.field public final shouldUpdateOrientationBeforeStoring:Z


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;Z)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;)V

    .line 75
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    .line 76
    iput-boolean p3, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->shouldUpdateOrientationBeforeStoring:Z

    .line 78
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    const-string p1, "PhotoSavingRequest: at created."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->log()V

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;)V
    .locals 1

    .line 88
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V

    .line 89
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    iget-object p1, p1, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    invoke-direct {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    const/4 p1, 0x0

    .line 90
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->shouldUpdateOrientationBeforeStoring:Z

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;I)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingRequest;I)V

    .line 101
    new-instance p2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    iget-object p1, p1, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    invoke-direct {p2, p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;)V

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    const/4 p1, 0x0

    .line 102
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->shouldUpdateOrientationBeforeStoring:Z

    return-void
.end method


# virtual methods
.method public attachImageReader(Landroid/media/ImageReader;Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImageReader:Landroid/media/ImageReader;

    .line 120
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mOnImageReaderDettachedListener:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;

    return-void
.end method

.method public close()V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImage:Landroid/media/Image;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 161
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImage:Landroid/media/Image;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mOnImageReaderDettachedListener:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mOnImageReaderDettachedListener:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImageReader:Landroid/media/ImageReader;

    invoke-interface {v0, v2}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;->onDetached(Landroid/media/ImageReader;)V

    .line 166
    :cond_1
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImageReader:Landroid/media/ImageReader;

    return-void
.end method

.method public createContentValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 5

    .line 196
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createContentValues savedFileType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 199
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 200
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mSomcType:I

    if-eqz v1, :cond_1

    const-string v1, "somctype"

    .line 202
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getSomcType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 201
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "title"

    .line 206
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->removeFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_display_name"

    .line 207
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "description"

    .line 209
    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p1, "datetaken"

    .line 211
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getDateTaken()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "mime_type"

    .line 212
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "orientation"

    .line 213
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "_size"

    .line 214
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "date_modified"

    .line 215
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "_data"

    .line 216
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "width"

    .line 217
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "height"

    .line 218
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public getImageData()[B
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mImage:[B

    return-object p0
.end method

.method public getImageReaderData()Ljava/nio/ByteBuffer;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImage:Landroid/media/Image;

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImage:Landroid/media/Image;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_1

    .line 145
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImage:Landroid/media/Image;

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    const/4 v0, 0x0

    .line 146
    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    goto :goto_0

    .line 149
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

    .line 129
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImageReader:Landroid/media/ImageReader;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPredictiveCaptureCoverImage()Z
    .locals 0

    .line 181
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->isPredictiveCaptureCoverImage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isPredictiveCaptureImage()Z
    .locals 0

    .line 177
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->isPredictiveCaptureImage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isPredictiveCaptureLastImage()Z
    .locals 0

    .line 185
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->isPredictiveCaptureLastImage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public log()V
    .locals 0

    .line 172
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->log()V

    .line 173
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->log()V

    return-void
.end method

.method public setImageData([B)V
    .locals 4

    .line 110
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setImageData size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 111
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mImage:[B

    return-void
.end method

.class public Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
.super Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;
.source "RequestFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/RequestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoSavingRequestBuilder"
.end annotation


# instance fields
.field private mImage:Landroid/media/Image;

.field private mImageReader:Landroid/media/ImageReader;

.field private mIsOneshot:Z

.field private mOnImageReaderDettachedListener:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;

.field public mPhotoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

.field private mShouldUpdateOrientationBeforeStoring:Z


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;Z)V
    .locals 0

    .line 278
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;)V

    const/4 p1, 0x0

    .line 274
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mIsOneshot:Z

    .line 279
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mPhotoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    .line 280
    iput-boolean p3, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mShouldUpdateOrientationBeforeStoring:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Z
    .locals 0

    .line 266
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mShouldUpdateOrientationBeforeStoring:Z

    return p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Landroid/media/ImageReader;
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mOnImageReaderDettachedListener:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;

    return-object p0
.end method


# virtual methods
.method public attachImageReader(Landroid/media/ImageReader;Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mImageReader:Landroid/media/ImageReader;

    .line 313
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mOnImageReaderDettachedListener:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;

    return-void
.end method

.method public close()V
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mImage:Landroid/media/Image;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 352
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mImage:Landroid/media/Image;

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mOnImageReaderDettachedListener:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mOnImageReaderDettachedListener:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mImageReader:Landroid/media/ImageReader;

    invoke-interface {v0, v2}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;->onDetached(Landroid/media/ImageReader;)V

    .line 357
    :cond_1
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mImageReader:Landroid/media/ImageReader;

    return-void
.end method

.method public getCaptureIdForPredictiveCapture()I
    .locals 0

    .line 300
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCaptureIdForPredictiveCapture:I

    return p0
.end method

.method public getImageData()[B
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mPhotoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mImage:[B

    return-object p0
.end method

.method public getImageReaderData()Ljava/nio/ByteBuffer;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    .line 332
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mImage:Landroid/media/Image;

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mImage:Landroid/media/Image;

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_1

    .line 337
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mImage:Landroid/media/Image;

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    const/4 v0, 0x0

    .line 338
    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    goto :goto_0

    .line 340
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

.method public getSaveTimeForPredictiveCapture()Ljava/lang/String;
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mSaveTimeForPredictiveCapture:Ljava/lang/String;

    return-object p0
.end method

.method public getShouldUpdateOrientationBeforeStoring()Z
    .locals 0

    .line 284
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mShouldUpdateOrientationBeforeStoring:Z

    return p0
.end method

.method public isOneShot()Z
    .locals 0

    .line 321
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mIsOneshot:Z

    return p0
.end method

.method public setCaptureIdForCaptureGourp(I)V
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iput p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCaptureIdForPredictiveCapture:I

    return-void
.end method

.method public setImageData([B)V
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mPhotoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mImage:[B

    return-void
.end method

.method public setOneshot(Z)V
    .locals 0

    .line 317
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mIsOneshot:Z

    return-void
.end method

.method public setSaveTimeForCaptureGroup(Ljava/lang/String;)V
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mSaveTimeForPredictiveCapture:Ljava/lang/String;

    return-void
.end method

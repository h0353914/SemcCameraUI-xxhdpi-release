.class public Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;
.super Ljava/lang/Object;
.source "FinalImageSaver.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/virtual/VirtualTakePictureListener;


# static fields
.field private static final sFinalImageSaver:Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;


# instance fields
.field private mDelayToSaveImage:Z

.field private mImageData:[B

.field private mOnStoreCompletedListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

.field private final mSavingPhotoRequestForFinalJpegQueue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->sFinalImageSaver:Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mDelayToSaveImage:Z

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mImageData:[B

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mSavingPhotoRequestForFinalJpegQueue:Ljava/util/Deque;

    return-void
.end method

.method public static getFinalImageSaver()Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;
    .locals 1

    .line 24
    sget-object v0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->sFinalImageSaver:Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;

    return-object v0
.end method


# virtual methods
.method public addSavingPhotoRequestForFinalJpegQueue(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .locals 3

    const-string v0, "Need HAL doing background task, Add to mSavingPhotoRequestForSmallJpegQueue:"

    .line 37
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mSavingPhotoRequestForFinalJpegQueue:Ljava/util/Deque;

    monitor-enter v1

    .line 38
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mSavingPhotoRequestForFinalJpegQueue:Ljava/util/Deque;

    invoke-interface {v2, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 39
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mSavingPhotoRequestForFinalJpegQueue:Ljava/util/Deque;

    .line 40
    invoke-interface {p0}, Ljava/util/Deque;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aput-object p0, p1, v0

    .line 39
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 41
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearPendingProcessingCount()V
    .locals 0

    return-void
.end method

.method public clearPendingProcessingMedia(I)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mSavingPhotoRequestForFinalJpegQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 88
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {p0, p1}, Lcom/sonyericsson/cameracommon/storage/Storage;->clearPendingProcessingMedia(I)V

    return-void
.end method

.method public onCaptureFailed()V
    .locals 0

    return-void
.end method

.method public onPictureTaken([B)V
    .locals 4

    .line 46
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPictureTaken mDelayToSaveImage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mDelayToSaveImage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mDelayToSaveImage:Z

    .line 48
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mSavingPhotoRequestForFinalJpegQueue:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    if-eqz v1, :cond_2

    .line 49
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getImageData()[B

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mDelayToSaveImage:Z

    .line 51
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mImageData:[B

    .line 52
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "Small image is not stored finish, so delay to retry "

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void

    .line 55
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mSavingPhotoRequestForFinalJpegQueue:Ljava/util/Deque;

    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mSavingPhotoRequestForFinalJpegQueue:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    if-eqz v2, :cond_4

    .line 58
    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setSmallJpegData(Z)V

    .line 59
    invoke-virtual {v2, p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setImageData([B)V

    .line 62
    iget-object p1, v2, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object p1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO_BOKEN:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    if-ne p1, v0, :cond_3

    .line 63
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getImageData()[B

    move-result-object p1

    iget-object v0, v2, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    iget-object v3, v2, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    invoke-static {p1, v0, v3}, Lcom/sonyericsson/android/camera/device/xmp/XMPController;->addXMPInfo([BII)[B

    move-result-object p1

    .line 65
    invoke-virtual {v2, p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setImageData([B)V

    .line 69
    :cond_3
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/storage/RequestFactory;->createSavingRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mOnStoreCompletedListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

    invoke-interface {v0, p1, v2, p0}, Lcom/sonyericsson/cameracommon/storage/Storage;->requestStore(Lcom/sonyericsson/cameracommon/storage/SavingRequest;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)Z

    .line 72
    :cond_4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setOnStoreCompletedListener(Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    .line 33
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mOnStoreCompletedListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

    return-void
.end method

.method public updateSmallImageState(Z)V
    .locals 2

    .line 92
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateSmallImageState storedSuccess "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", mDelayToSaveImage "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mDelayToSaveImage:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 94
    :cond_0
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mDelayToSaveImage:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mImageData:[B

    if-eqz p1, :cond_2

    .line 95
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "Small image is stored finish, so retry to save final image"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 96
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mImageData:[B

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->onPictureTaken([B)V

    :cond_2
    return-void
.end method

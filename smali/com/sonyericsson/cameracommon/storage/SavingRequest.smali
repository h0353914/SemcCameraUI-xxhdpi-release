.class public abstract Lcom/sonyericsson/cameracommon/storage/SavingRequest;
.super Ljava/lang/Object;
.source "SavingRequest.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SavingRequest"


# instance fields
.field public final common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

.field private mFinalRequest:Z

.field public mIsNecessaryMediaUpload:Z

.field private mIsOneShot:Z

.field private mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->mIsOneShot:Z

    .line 68
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->mIsNecessaryMediaUpload:Z

    .line 55
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->mIsOneShot:Z

    .line 68
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->mIsNecessaryMediaUpload:Z

    .line 64
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object p1, p1, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    invoke-direct {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/storage/SavingRequest;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 43
    iput-boolean v2, v0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->mIsOneShot:Z

    .line 68
    iput-boolean v2, v0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->mIsNecessaryMediaUpload:Z

    .line 84
    new-instance v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v3, v1, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-wide v4, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mDateTaken:J

    iget-object v3, v1, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v7, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    iget-object v3, v1, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v8, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    iget-object v3, v1, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v9, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    iget-object v3, v1, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v10, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    iget-object v3, v1, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v11, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->fileExtension:Ljava/lang/String;

    iget-object v3, v1, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v12, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    iget-object v3, v1, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v13, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mFilePath:Ljava/lang/String;

    iget-object v3, v1, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v14, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->cropValue:Ljava/lang/String;

    iget-object v3, v1, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-boolean v15, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->addToMediaStore:Z

    iget-object v3, v1, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-boolean v6, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->takenByFastCapture:Z

    move-object v3, v2

    move/from16 v16, v6

    move/from16 v6, p2

    invoke-direct/range {v3 .. v16}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;-><init>(JILandroid/location/Location;IILjava/lang/String;Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v2, v0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    .line 97
    iget-object v0, v1, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCallbacks:Ljava/util/List;

    iput-object v0, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCallbacks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 103
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

    if-ne v1, p1, :cond_0

    return-void

    .line 108
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCallbacks:Ljava/util/List;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCaptureIdForPredictiveCapture()I
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCaptureIdForPredictiveCapture:I

    return p0
.end method

.method public getDateTaken()J
    .locals 2

    .line 130
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mDateTaken:J

    return-wide v0
.end method

.method public getExtraOutput()Landroid/net/Uri;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mExtraOutput:Landroid/net/Uri;

    return-object p0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getIsNecessaryMediaUpload()Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->mIsNecessaryMediaUpload:Z

    return p0
.end method

.method public getRequestId()I
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mRequestId:I

    return p0
.end method

.method public getSaveTimeForPredictiveCapture()Ljava/lang/String;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mSaveTimeForPredictiveCapture:Ljava/lang/String;

    return-object p0
.end method

.method public getSavedFileType()Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    return-object p0
.end method

.method public getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    return-object p0
.end method

.method public isFinalInSavingGroup()Z
    .locals 0

    .line 176
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->mFinalRequest:Z

    return p0
.end method

.method public isOneShot()Z
    .locals 0

    .line 184
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->mIsOneShot:Z

    return p0
.end method

.method public isPredictiveCaptureCover()Z
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mIsPredictiveCaptureCover:Z

    return p0
.end method

.method public log()V
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->log()V

    return-void
.end method

.method public notifyStoreFailed(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;)V
    .locals 5

    .line 193
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-direct {v0, v1, v2, p0}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V

    .line 194
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 195
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

    if-nez v1, :cond_0

    return-void

    .line 199
    :cond_0
    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    iget v4, p1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->mResultCode:I

    invoke-interface {v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;->onStoreFailed(Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyStoreResult(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .locals 3

    .line 209
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "notifyStoreResult E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 210
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 211
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

    if-nez v0, :cond_2

    .line 213
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string p0, "notifyStoreResult X - 1"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    if-nez p1, :cond_3

    .line 218
    const-string p0, "notifyStoreResult X - 1 result is null"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void

    .line 221
    :cond_3
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 222
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    iget-object p1, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    .line 223
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p1

    .line 222
    invoke-interface {v0, v1, v2, p1}, Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;->onStoreCompleted(Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    goto :goto_1

    .line 226
    :cond_4
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->getResultCode()I

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;->onStoreFailed(Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;I)V

    :goto_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_5
    return-void
.end method

.method public setCaptureIdForPredictiveCapture(I)V
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iput p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCaptureIdForPredictiveCapture:I

    return-void
.end method

.method public setDateTaken(J)V
    .locals 2

    .line 134
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDateTaken: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 135
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iput-wide p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mDateTaken:J

    return-void
.end method

.method public setExtraOutput(Landroid/net/Uri;)V
    .locals 2

    .line 143
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setExtraOutput: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 144
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mExtraOutput:Landroid/net/Uri;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 2

    .line 125
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setFilePath: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 126
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public setFinalInSavingGroup(Z)V
    .locals 0

    .line 168
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->mFinalRequest:Z

    return-void
.end method

.method public setIsNecessaryMediaUpload(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->mIsNecessaryMediaUpload:Z

    return-void
.end method

.method public setOneShot(Z)V
    .locals 0

    .line 180
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->mIsOneShot:Z

    return-void
.end method

.method public setRequestId(I)V
    .locals 2

    .line 116
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setRequestId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 117
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iput p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mRequestId:I

    return-void
.end method

.method public setSaveTimeForPredictiveCapture(Ljava/lang/String;)V
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mSaveTimeForPredictiveCapture:Ljava/lang/String;

    return-void
.end method

.method setStorageType(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    return-void
.end method

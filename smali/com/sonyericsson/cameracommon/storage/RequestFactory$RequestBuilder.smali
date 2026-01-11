.class public abstract Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;
.super Ljava/lang/Object;
.source "RequestFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/RequestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RequestBuilder"
.end annotation


# instance fields
.field private isSmallJpegData:Z

.field private isUsingProcessingMediaAPI:Z

.field public mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

.field private mFinalRequest:Z

.field private mIsOneShot:Z

.field private mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mFinalRequest:Z

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mIsOneShot:Z

    .line 87
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

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

    .line 176
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

    if-ne v1, p1, :cond_0

    return-void

    .line 181
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCallbacks:Ljava/util/List;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDateTaken()J
    .locals 2

    .line 123
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mDateTaken:J

    return-wide v0
.end method

.method public getExtraOutput()Landroid/net/Uri;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mExtraOutput:Landroid/net/Uri;

    return-object p0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestId()I
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mRequestId:I

    return p0
.end method

.method public getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    return-object p0
.end method

.method public isFinalInSavingGroup()Z
    .locals 0

    .line 163
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mFinalRequest:Z

    return p0
.end method

.method public isOneShot()Z
    .locals 0

    .line 171
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mIsOneShot:Z

    return p0
.end method

.method public isPredictiveCaptureCover()Z
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mIsPredictiveCaptureCover:Z

    return p0
.end method

.method public isSmallJpegData()Z
    .locals 0

    .line 151
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->isSmallJpegData:Z

    return p0
.end method

.method public isUsingProcessingMediaAPI()Z
    .locals 0

    .line 143
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->isUsingProcessingMediaAPI:Z

    return p0
.end method

.method public setDateTaken(J)V
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iput-wide p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mDateTaken:J

    return-void
.end method

.method public setExtraOutput(Landroid/net/Uri;)V
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mExtraOutput:Landroid/net/Uri;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public setFinalInSavingGroup(Z)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mFinalRequest:Z

    return-void
.end method

.method public setOneShot(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mIsOneShot:Z

    return-void
.end method

.method public setPredictiveCaptureCover(Z)V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mIsPredictiveCaptureCover:Z

    return-void
.end method

.method public setRequestId(I)V
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iput p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mRequestId:I

    return-void
.end method

.method public setSmallJpegData(Z)V
    .locals 0

    .line 147
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->isSmallJpegData:Z

    return-void
.end method

.method public setStorageType(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    return-void
.end method

.method public setUsingProcessingMediaAPI(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->isUsingProcessingMediaAPI:Z

    return-void
.end method

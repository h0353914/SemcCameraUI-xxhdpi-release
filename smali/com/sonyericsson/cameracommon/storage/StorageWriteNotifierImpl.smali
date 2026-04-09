.class public Lcom/sonyericsson/cameracommon/storage/StorageWriteNotifierImpl;
.super Ljava/lang/Object;
.source "StorageWriteNotifierImpl.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageWriteNotifierImpl"


# instance fields
.field private mMaxIntervalCount:J

.field private mProgressCount:I

.field private final mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

.field private final mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

.field private final mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;ILcom/sonyericsson/cameracommon/storage/StorageController;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageWriteNotifierImpl;->mProgressCount:I

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageWriteNotifierImpl;->mMaxIntervalCount:J

    .line 63
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/StorageWriteNotifierImpl;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    .line 64
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/StorageWriteNotifierImpl;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    int-to-long p1, p3

    .line 65
    iput-wide p1, p0, Lcom/sonyericsson/cameracommon/storage/StorageWriteNotifierImpl;->mMaxIntervalCount:J

    .line 66
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/storage/StorageWriteNotifierImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    return-void
.end method


# virtual methods
.method public getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageWriteNotifierImpl;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    return-object p0
.end method

.method public notifyWriteStorage()V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageWriteNotifierImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageWriteNotifierImpl;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->getAvailableStorageSize(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J

    move-result-wide v0

    .line 84
    iget v2, p0, Lcom/sonyericsson/cameracommon/storage/StorageWriteNotifierImpl;->mProgressCount:I

    if-eqz v2, :cond_0

    const-wide/32 v2, 0x4b000

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageWriteNotifierImpl;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    check-cast v0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageWriteNotifierImpl;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->onWriteStorage(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    .line 89
    :cond_1
    iget v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageWriteNotifierImpl;->mProgressCount:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/sonyericsson/cameracommon/storage/StorageWriteNotifierImpl;->mMaxIntervalCount:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 91
    iput v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageWriteNotifierImpl;->mProgressCount:I

    goto :goto_0

    .line 94
    :cond_2
    iget v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageWriteNotifierImpl;->mProgressCount:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageWriteNotifierImpl;->mProgressCount:I

    .line 95
    new-array v0, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mProgressCount is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageWriteNotifierImpl;->mProgressCount:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

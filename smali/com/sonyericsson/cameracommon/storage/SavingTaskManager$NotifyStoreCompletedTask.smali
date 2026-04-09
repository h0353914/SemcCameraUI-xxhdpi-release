.class Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$NotifyStoreCompletedTask;
.super Ljava/lang/Object;
.source "SavingTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotifyStoreCompletedTask"
.end annotation


# instance fields
.field private final mResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .locals 0

    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 765
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$NotifyStoreCompletedTask;->mResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$1;)V
    .locals 0

    .line 756
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$NotifyStoreCompletedTask;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 770
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$NotifyStoreCompletedTask;->mResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$NotifyStoreCompletedTask;->mResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$NotifyStoreCompletedTask;->mResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$NotifyStoreCompletedTask;->mResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-virtual {v0, v4}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->notifyStoreResult(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    .line 772
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    new-array v0, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "mStatus.notifyStoreResult() is called."

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 775
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    new-array v0, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "StoreDataResult or SavingRequest is null."

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

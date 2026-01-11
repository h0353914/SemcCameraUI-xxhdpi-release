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

    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 782
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$NotifyStoreCompletedTask;->mResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$NotifyStoreCompletedTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$NotifyStoreCompletedTask;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 787
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$NotifyStoreCompletedTask;->mResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$NotifyStoreCompletedTask;->mResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$NotifyStoreCompletedTask;->mResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->notifyStoreResult(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    .line 789
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mStatus.notifyStoreResult() is called."

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 792
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StoreDataResult or SavingRequest is null."

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.class public Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
.super Ljava/lang/Object;
.source "CameraStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;,
        Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;,
        Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;,
        Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;,
        Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraStorageManager"

.field private static final THREAD_NAME_CHECK_REMAIN:Ljava/lang/String; = "SM#ChkRemain"

.field private static final THREAD_NAME_CHECK_WRITABLE:Ljava/lang/String; = "SM#ChkWritable"

.field private static final TIMEOUT_CHECK_WRITABLE:I = 0x1388

.field public static final TIMEOUT_GET_STATFS:I = 0xdac

.field public static final TIMEOUT_SEMAPHORE_ACQUIRE_MS:I = 0xfa0


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDcfPathBuilderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;",
            "Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mIsApplicationForeground:Z

.field private mLastStorageStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;",
            "Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;",
            ">;"
        }
    .end annotation
.end field

.field private final mReadyStateLock:Ljava/lang/Object;

.field private mSavingTaskInquiry:Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;

.field private final mSlowMotionPathBuilder:Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;

.field private final mStateLock:Ljava/lang/Object;

.field private mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

.field private mStorageUpdaterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;",
            "Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;",
            ">;"
        }
    .end annotation
.end field

.field private mWritableCheckResult:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/StorageController;)V
    .locals 2

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    .line 156
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;

    const-string v1, ".mp4"

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mSlowMotionPathBuilder:Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;

    .line 159
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mWritableCheckResult:Ljava/util/Map;

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mIsApplicationForeground:Z

    .line 170
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStateLock:Ljava/lang/Object;

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mReadyStateLock:Ljava/lang/Object;

    .line 186
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mContext:Landroid/content/Context;

    .line 187
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    .line 188
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mDcfPathBuilderMap:Ljava/util/Map;

    .line 189
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    .line 190
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageUpdaterMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;)Ljava/util/Map;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mWritableCheckResult:Ljava/util/Map;

    return-object p0
.end method

.method private changeReadyStateTo(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Z
    .locals 6

    .line 1012
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->getStorageReadyState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    move-result-object v0

    .line 1013
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 1014
    new-array v1, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeReadyStateTo: type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", from = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", to = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", Reason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1020
    :cond_0
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$1;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageReadyState:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 1064
    new-array p3, v3, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is not supported."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1056
    :pswitch_0
    sget-object p3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->SUSPENDED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-ne p2, p3, :cond_1

    .line 1057
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageUpdaterMap:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;

    invoke-virtual {p3, v2}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->setAutoUpdateEnabled(Z)V

    goto/16 :goto_1

    .line 1059
    :cond_1
    sget-object p3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->PREPARING:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-ne p2, p3, :cond_5

    goto/16 :goto_1

    .line 1048
    :pswitch_1
    sget-object p3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->SUSPENDED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-ne p2, p3, :cond_2

    .line 1049
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageUpdaterMap:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;

    invoke-virtual {p3, v2}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->setAutoUpdateEnabled(Z)V

    goto :goto_1

    .line 1051
    :cond_2
    sget-object p3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->COMPLETED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-ne p2, p3, :cond_5

    goto :goto_1

    .line 1039
    :pswitch_2
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->SUSPENDED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-ne p2, v0, :cond_3

    .line 1040
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageUpdaterMap:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;

    invoke-virtual {p3, v2}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->setAutoUpdateEnabled(Z)V

    goto :goto_1

    .line 1042
    :cond_3
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->ACCESSIBLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-ne p2, v0, :cond_5

    .line 1043
    invoke-virtual {p0, p1, p3}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->requestWriteCheck(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    goto :goto_1

    .line 1032
    :pswitch_3
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->PREPARING:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-ne p2, v0, :cond_5

    .line 1033
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageUpdaterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->IMMEDIATE:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    invoke-virtual {v0, v1, p3}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->requestVolumeCheck(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    goto :goto_1

    .line 1022
    :pswitch_4
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->PREPARING:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-ne p2, v0, :cond_4

    .line 1023
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageUpdaterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->IMMEDIATE:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    invoke-virtual {v0, v1, p3}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->requestVolumeCheck(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    goto :goto_1

    .line 1027
    :cond_4
    sget-boolean p3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p3, :cond_5

    .line 1028
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Incorrect state : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    move v3, v2

    :goto_1
    if-eqz v3, :cond_6

    .line 1069
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p3, p1, p2}, Lcom/sonyericsson/cameracommon/storage/StorageController;->setStorageReadyState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;)V

    .line 1070
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->checkAndNotifyReadyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    :cond_6
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private decideForceFsWritingCheck(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Z
    .locals 0

    .line 472
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$1;->$SwitchMap$com$sonyericsson$cameracommon$storage$CameraStorageManager$UpdateRequestReason:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x5

    if-eq p0, p1, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private decideForceSdCardGrantedCheck(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Z
    .locals 0

    .line 486
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne p1, p0, :cond_0

    .line 487
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$1;->$SwitchMap$com$sonyericsson$cameracommon$storage$CameraStorageManager$UpdateRequestReason:[I

    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getLastStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;
    .locals 0

    .line 698
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    return-object p0
.end method

.method private getNextStateFromRemain(J)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;
    .locals 2

    const-wide/32 v0, 0x25800

    cmp-long p0, p1, v0

    if-lez p0, :cond_0

    .line 636
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0xf000

    cmp-long p0, p1, v0

    if-lez p0, :cond_1

    .line 638
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY_LOW:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_0

    .line 640
    :cond_1
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FULL:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 643
    :goto_0
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNextStateFromRemain() newState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-object p0
.end method

.method private getNextStateFromVolume(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;
    .locals 4

    .line 440
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getVolumeState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 441
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextStateFromVolume() storage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " , volume state = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const-string p1, "bad_removal"

    .line 445
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 446
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_0

    :cond_1
    const-string p1, "mounted_ro"

    .line 447
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 448
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_READ_ONLY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_0

    :cond_2
    const-string p1, "removed"

    .line 449
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 450
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_0

    :cond_3
    const-string p1, "shared"

    .line 451
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 452
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_SHARED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_0

    :cond_4
    const-string p1, "unmountable"

    .line 453
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 454
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FORMAT:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_0

    :cond_5
    const-string p1, "unmounted"

    .line 455
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 456
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_0

    :cond_6
    const-string p1, "checking"

    .line 457
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 458
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_CHECKING:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_0

    :cond_7
    const-string p1, "mounted"

    .line 459
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 460
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_0

    :cond_8
    const-string p1, "ejecting"

    .line 461
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 462
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_0

    .line 464
    :cond_9
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_ACCESS:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    :goto_0
    return-object p0
.end method

.method private getNextStateFromWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Z)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "SM#ChkWritable"

    .line 504
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 505
    new-instance v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;-><init>(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Z)V

    .line 506
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    const/4 p2, 0x1

    .line 510
    :try_start_0
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne p1, v1, :cond_0

    .line 512
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x1388

    .line 515
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    :goto_0
    invoke-interface {p0, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 522
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 518
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextStateFromWritable: timed out or fatal error, type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 519
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_TIMED_OUT:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-object v1

    .line 521
    :goto_2
    invoke-interface {p0, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 522
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 523
    throw p1
.end method

.method private isReadable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 810
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 811
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$1;->$SwitchMap$com$sonyericsson$cameracommon$storage$CameraStorageManager$DetailStorageState:[I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->ordinal()I

    move-result p0

    aget p0, p1, p0

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isWritableCheckNeeded(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 831
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 832
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$1;->$SwitchMap$com$sonyericsson$cameracommon$storage$CameraStorageManager$DetailStorageState:[I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->ordinal()I

    move-result p0

    aget p0, p1, p0

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private logStorageState()V
    .locals 8

    .line 659
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 662
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 663
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v3, v5

    goto :goto_0

    .line 666
    :cond_0
    new-array p0, v5, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logStorageState "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v2

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private setLastStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;)V
    .locals 4

    .line 649
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 650
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLastStorageState storage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->logStorageState()V

    .line 655
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/StorageController;->setStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;)V

    return-void
.end method

.method private updateDcfPath(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    .locals 4

    .line 709
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 710
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDcfPath : targetStorage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 713
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->getRootDirectory(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 715
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mDcfPathBuilderMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 716
    new-instance v1, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;

    invoke-direct {v1, v0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;-><init>(Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mDcfPathBuilderMap:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 718
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mDcfPathBuilderMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->getRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 719
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_2

    const-string v1, "Root path is changed"

    .line 720
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 721
    :cond_2
    new-instance v1, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;

    invoke-direct {v1, v0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;-><init>(Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mDcfPathBuilderMap:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mDcfPathBuilderMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->startScan()V

    :cond_4
    return-void
.end method


# virtual methods
.method public calculateNextPollingInterval(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;
    .locals 0

    .line 971
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->getAvailableStorageSize(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->decide(J)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    move-result-object p0

    return-object p0
.end method

.method public checkAndNotifyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    .locals 4

    .line 693
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndNotifyStateChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 694
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p0, p1, v1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->checkAndNotifyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Z)V

    return-void
.end method

.method public checkRemain(ZLcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J
    .locals 4

    .line 681
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 682
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRemain: storage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {v0, p2, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->checkAndNotifyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Z)V

    .line 684
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p0, p2}, Lcom/sonyericsson/cameracommon/storage/StorageController;->getAvailableStorageSize(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J

    move-result-wide p0

    return-wide p0
.end method

.method public declared-synchronized doPause()V
    .locals 5

    monitor-enter p0

    .line 992
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mReadyStateLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    .line 993
    :try_start_1
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mIsApplicationForeground:Z

    .line 994
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 996
    :try_start_2
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getMountableStorageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 998
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mReadyStateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 999
    :try_start_3
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->getStorageReadyState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->COMPLETED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-ne v3, v4, :cond_0

    .line 1000
    sget-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->SUSPENDED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    sget-object v4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->APP_CLOSE:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    invoke-direct {p0, v1, v3, v4}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->changeReadyStateTo(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Z

    .line 1003
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1005
    :cond_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v1

    .line 994
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    .line 991
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doResume()V
    .locals 6

    monitor-enter p0

    .line 975
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mReadyStateLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x1

    .line 976
    :try_start_1
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mIsApplicationForeground:Z

    .line 977
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 979
    :try_start_2
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getMountableStorageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 980
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mReadyStateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 981
    :try_start_3
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {v4, v2}, Lcom/sonyericsson/cameracommon/storage/StorageController;->getStorageReadyState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->SUSPENDED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-ne v4, v5, :cond_0

    .line 982
    sget-object v4, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->PREPARING:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->APP_LAUNCH:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    invoke-direct {p0, v2, v4, v5}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->changeReadyStateTo(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Z

    .line 985
    :cond_0
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 987
    :try_start_4
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageUpdaterMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->setAutoUpdateEnabled(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 985
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 989
    :cond_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v1

    .line 977
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    .line 974
    monitor-exit p0

    throw v0
.end method

.method public getBurstPhotoPath(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Ljava/lang/String;
    .locals 2

    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getPathFromType(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 916
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/storage/ManualBurstPathBuilder;->getPhotoPath(Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDcimDirectory(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Ljava/lang/String;
    .locals 1

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->getRootDirectory(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPhotoPath(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Ljava/lang/String;
    .locals 1

    .line 899
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mDcfPathBuilderMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;

    if-eqz p0, :cond_1

    .line 901
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "DcfPathbuilder is not null!!"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 902
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->getPhotoPath(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 904
    :cond_1
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_2

    const-string p0, "DcfPathbuilder is null!!"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPredictiveCapturePhotoPath(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Ljava/lang/String;
    .locals 1

    .line 926
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->getDcimDirectory(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->getPhotoPath(Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getReadableStoragePaths()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 852
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 853
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 854
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->isReadable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 855
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getPathFromType(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 857
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getRootDirectory(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Ljava/lang/String;
    .locals 0

    .line 878
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getPathFromType(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSdGrantedUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 7

    .line 528
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 529
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/storage/StorageController;->getStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->REMOVED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return-object v1

    .line 532
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getSdCardGrantedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p0

    .line 533
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 534
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getPersistedUriPermissions()Ljava/util/List;

    move-result-object v0

    .line 536
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 537
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/UriPermission;

    invoke-virtual {p0}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .line 538
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_5

    .line 540
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UriPermission;

    .line 541
    invoke-virtual {v2}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz p0, :cond_2

    .line 542
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    goto :goto_0

    .line 546
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v2, v6}, Landroid/content/ContentResolver;->releasePersistableUriPermission(Landroid/net/Uri;I)V

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, p0

    :cond_5
    :goto_1
    return-object v1
.end method

.method public getSlowMotionPath(Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Ljava/lang/String;
    .locals 6

    .line 953
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 954
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mSlowMotionPathBuilder:Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;

    .line 955
    invoke-virtual {p0, p2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->getDcimDirectory(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v5, p2

    .line 954
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;->get(Ljava/lang/String;Ljava/lang/String;JLcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStatFs(Ljava/lang/String;)Landroid/os/StatFs;
    .locals 5

    .line 735
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    new-array p0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStatFs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const-string p0, "SM#ChkRemain"

    .line 738
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    .line 739
    new-instance v1, Lcom/sonyericsson/cameracommon/storage/StorageUtil$GetStatFsTask;

    invoke-direct {v1, p1}, Lcom/sonyericsson/cameracommon/storage/StorageUtil$GetStatFsTask;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    const/4 v1, 0x0

    const-wide/16 v2, 0xdac

    .line 744
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/StatFs;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 753
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    move-object v1, v2

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "GetStatFsTask failed."

    .line 750
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v3, "GetStatFsTask failed."

    .line 748
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v3, "GetStatFsTask has been interrupted."

    .line 746
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 752
    :goto_0
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 753
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :goto_1
    return-object v1

    .line 752
    :goto_2
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 753
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 754
    throw v1
.end method

.method public getVideoPath(Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Ljava/lang/String;
    .locals 1

    .line 937
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mDcfPathBuilderMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;

    if-eqz v0, :cond_0

    .line 939
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mDcfPathBuilderMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->getVideoPath(Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "/dev/null"

    return-object p0
.end method

.method initialize(Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;Ljava/util/Map;)V
    .locals 5
    .param p1    # Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;",
            "Ljava/util/concurrent/Semaphore;",
            ">;)V"
        }
    .end annotation

    .line 202
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraStorageManager initialize"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 203
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->STORAGE_MANAGER_SETUP:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/storage/StorageController;->setAvailableStorageSize(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;J)V

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/storage/StorageController;->setAvailableStorageSize(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;J)V

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    .line 209
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mSavingTaskInquiry:Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;

    .line 211
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getMountableStorageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 212
    new-instance v2, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;

    .line 213
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v1, p0, p1, v3}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;-><init>(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;Ljava/util/concurrent/Semaphore;)V

    .line 215
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageUpdaterMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mReadyStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 217
    :try_start_0
    sget-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->PREPARING:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    sget-object v4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->APP_LAUNCH:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    invoke-direct {p0, v1, v3, v4}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->changeReadyStateTo(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Z

    .line 219
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 222
    :cond_1
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->STORAGE_MANAGER_SETUP:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void
.end method

.method public release()V
    .locals 3

    .line 865
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getMountableStorageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 866
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageUpdaterMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->release()V

    goto :goto_0

    .line 868
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/StorageController;->release()V

    return-void
.end method

.method public requestVolumeCheck(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V
    .locals 0

    .line 267
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageUpdaterMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;

    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->requestVolumeCheck(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    return-void
.end method

.method public requestWriteCheck(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageUpdaterMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;

    invoke-virtual {p0, p2}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->requestWriteCheck(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    return-void
.end method

.method public updateAvailableStorageSize(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;J)J
    .locals 9

    .line 768
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getPathFromType(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 770
    new-array p0, v4, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Storage is not mounted. : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v3

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-wide v1

    .line 773
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->getStatFs(Ljava/lang/String;)Landroid/os/StatFs;

    move-result-object v5

    if-nez v5, :cond_1

    .line 777
    new-array p0, v4, [Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to get StatFs: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v3

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-wide v1

    .line 782
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getVolumeState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "mounted"

    .line 783
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return-wide v1

    .line 787
    :cond_2
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide p0

    .line 788
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v5

    .line 790
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_3

    new-array v0, v4, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAvailableSize size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 791
    :cond_3
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_4

    new-array v0, v4, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAvailableSize num: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    mul-long/2addr p0, v5

    sub-long/2addr p0, p2

    const-wide/16 p2, 0x400

    .line 794
    div-long/2addr p0, p2

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    .line 795
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_5

    .line 796
    new-array p2, v4, [Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAvailableSize total[KB]: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v3

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5
    return-wide p0
.end method

.method public declared-synchronized updateStateByVolumeInfo(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;JLcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;
    .locals 9

    monitor-enter p0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 357
    :try_start_0
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 358
    new-array v3, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invoke: type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", reservedSize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", reason = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 362
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 363
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->getLastStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    move-result-object v6

    .line 364
    sget-boolean v7, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v7, :cond_1

    new-array v5, v5, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lastState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    if-eqz v6, :cond_3

    .line 365
    sget-object v4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    if-eq v6, v4, :cond_3

    sget-object v4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY_LOW:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    if-eq v6, v4, :cond_3

    sget-object v4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FULL:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    if-eq v6, v4, :cond_3

    .line 370
    sget-object v4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$1;->$SwitchMap$com$sonyericsson$cameracommon$storage$CameraStorageManager$UpdateRequestReason:[I

    invoke-virtual {p4}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    move-object v2, v6

    goto :goto_0

    .line 372
    :pswitch_0
    sget-object v4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_NO_DCIM:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    if-eq v6, v4, :cond_2

    sget-object v4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_READ_ONLY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    if-eq v6, v4, :cond_2

    sget-object v4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_TIMED_OUT:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    if-ne v6, v4, :cond_3

    .line 376
    :cond_2
    sget-object p4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->APP_LAUNCH_WITH_UNTRUSTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    .line 390
    :cond_3
    :goto_0
    :pswitch_1
    sget-object v4, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne p1, v4, :cond_4

    .line 391
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->isExistRemovableStorage(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 392
    sget-object v2, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    :cond_4
    if-nez v2, :cond_9

    .line 398
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->getNextStateFromVolume(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    move-result-object v2

    .line 401
    sget-object v4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->RECEIVE_STORAGE_EJECTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    if-ne p4, v4, :cond_6

    .line 402
    sget-object v4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 403
    sget-object v2, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_1

    .line 405
    :cond_5
    sget-object v2, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_SHARED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 410
    :cond_6
    :goto_1
    sget-object v4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    if-eq v2, v4, :cond_7

    sget-object v4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY_LOW:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    if-ne v2, v4, :cond_8

    .line 412
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->updateAvailableStorageSize(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;J)J

    move-result-wide v0

    .line 413
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->getNextStateFromRemain(J)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    move-result-object p2

    move-object v2, p2

    .line 417
    :cond_8
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p2, p1, v0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->setAvailableStorageSize(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;J)V

    .line 421
    :cond_9
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->setLastStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;)V

    .line 423
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mReadyStateLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 424
    :try_start_2
    iget-boolean p3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mIsApplicationForeground:Z

    if-eqz p3, :cond_a

    .line 425
    sget-object p3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->ACCESSIBLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    invoke-direct {p0, p1, p3, p4}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->changeReadyStateTo(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Z

    goto :goto_2

    .line 427
    :cond_a
    sget-object p3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->SUSPENDED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    invoke-direct {p0, p1, p3, p4}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->changeReadyStateTo(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Z

    .line 429
    :goto_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 431
    :try_start_3
    sget-object p2, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->RECEIVE_STORAGE_MOUNTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    if-ne p4, p2, :cond_b

    .line 432
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->calculateNextPollingInterval(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    move-result-object p2

    sget-object p3, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->PERIODIC_UPDATE:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->requestVolumeCheck(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    .line 435
    :cond_b
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 436
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    .line 429
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    :catchall_1
    move-exception p1

    .line 435
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 354
    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public updateStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V
    .locals 3

    .line 286
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->RECEIVE_STORAGE_MOUNTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    if-ne p2, v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mReadyStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_0
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->PREPARING:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    invoke-direct {p0, p1, v1, p2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->changeReadyStateTo(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Z

    .line 289
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    .line 292
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mSavingTaskInquiry:Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;

    if-eqz v2, :cond_1

    .line 293
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mSavingTaskInquiry:Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;->getReservedSize(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-string v2, "called before initializing."

    .line 297
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 299
    :goto_1
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->updateStateByVolumeInfo(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;JLcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 300
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->updateStorageStateByWriting(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    return-void
.end method

.method updateStorageStateByAction(Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageUpdaterMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->getAccessSemaphore()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    .line 241
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    .line 243
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->RECEIVE_STORAGE_MOUNTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.MEDIA_EJECT"

    .line 245
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 246
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->RECEIVE_STORAGE_EJECTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    goto :goto_0

    .line 248
    :cond_1
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->RECEIVE_OTHER_ACTION:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    .line 250
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->updateStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    .line 251
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->checkAndNotifyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Z)V

    .line 252
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "Failed to acquire of storage access permit."

    .line 255
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public declared-synchronized updateStorageStateByWriting(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V
    .locals 8

    monitor-enter p0

    .line 311
    :try_start_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateStorageStateByWriting StorageType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", reason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 315
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->getLastStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    move-result-object v3

    .line 316
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->isWritableCheckNeeded(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v4

    .line 317
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v5, :cond_1

    new-array v5, v2, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isWritable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    if-eqz v4, :cond_4

    .line 319
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->decideForceFsWritingCheck(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 321
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getPathFromType(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 323
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mWritableCheckResult:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->decideForceSdCardGrantedCheck(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Z

    move-result v1

    .line 326
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->getNextStateFromWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Z)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    move-result-object v1

    .line 328
    sget-object v4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    if-eq v1, v4, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, v3

    .line 332
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->setLastStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;)V

    .line 334
    :cond_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 336
    :try_start_2
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mReadyStateLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 337
    :try_start_3
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mIsApplicationForeground:Z

    if-eqz v1, :cond_5

    .line 338
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->COMPLETED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    invoke-direct {p0, p1, v1, p2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->changeReadyStateTo(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 339
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p2, p1, v2}, Lcom/sonyericsson/cameracommon/storage/StorageController;->checkAndNotifyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Z)V

    goto :goto_1

    .line 342
    :cond_5
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->SUSPENDED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    invoke-direct {p0, p1, v1, p2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->changeReadyStateTo(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Z

    .line 344
    :cond_6
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 346
    :try_start_4
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->getStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object p2

    .line 347
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->REMOVED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-eq p2, v0, :cond_7

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->CORRUPT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-eq p2, v0, :cond_7

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->UNAVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-eq p2, v0, :cond_7

    .line 349
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->updateDcfPath(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 351
    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 344
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_1
    move-exception p1

    .line 334
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    .line 310
    monitor-exit p0

    throw p1
.end method

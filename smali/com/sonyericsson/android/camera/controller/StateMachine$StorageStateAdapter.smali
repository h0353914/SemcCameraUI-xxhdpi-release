.class Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/storage/Storage$StorageStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageStateAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;
    }
.end annotation


# instance fields
.field private mOldStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->mOldStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V
    .locals 0

    .line 301
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;Z)V
    .locals 0

    .line 301
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->updateGestureShutterState(Z)V

    return-void
.end method

.method static synthetic access$6100(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;)V
    .locals 0

    .line 301
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->resume()V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->mOldStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    return-object p0
.end method

.method static synthetic access$902(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->mOldStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    return-object p1
.end method

.method private resume()V
    .locals 1

    .line 306
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->mOldStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    const/4 v0, 0x1

    .line 308
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->updateGestureShutterState(Z)V

    return-void
.end method

.method private updateGestureShutterState(Z)V
    .locals 0

    .line 335
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$300(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/GestureShutter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onStorageSizeChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;J)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onStorageStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;)V
    .locals 4

    monitor-enter p0

    .line 314
    :try_start_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", readyState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 318
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->ACCESSIBLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-eq p3, v0, :cond_1

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->COMPLETED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p3, v0, :cond_1

    .line 320
    monitor-exit p0

    return-void

    .line 323
    :cond_1
    :try_start_1
    new-instance p3, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    .line 326
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 313
    monitor-exit p0

    throw p1
.end method

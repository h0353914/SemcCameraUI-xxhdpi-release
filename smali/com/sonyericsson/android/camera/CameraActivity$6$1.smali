.class Lcom/sonyericsson/android/camera/CameraActivity$6$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/CameraActivity$6;->onStorageReadyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/CameraActivity$6;

.field final synthetic val$listener:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity$6;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 970
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$6$1;->this$1:Lcom/sonyericsson/android/camera/CameraActivity$6;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$6$1;->val$listener:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 973
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$6$1;->this$1:Lcom/sonyericsson/android/camera/CameraActivity$6;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity$6;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$6$1;->this$1:Lcom/sonyericsson/android/camera/CameraActivity$6;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/CameraActivity$6;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmBackgroundWorker(Lcom/sonyericsson/android/camera/CameraActivity;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/android/camera/CameraActivity$SetupAllTask;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity$6$1;->this$1:Lcom/sonyericsson/android/camera/CameraActivity$6;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/CameraActivity$6;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera/CameraActivity$SetupAllTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$SetupAllTask-IA;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fputmSetupAllTaskFuture(Lcom/sonyericsson/android/camera/CameraActivity;Ljava/util/concurrent/Future;)V

    .line 974
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$6$1;->this$1:Lcom/sonyericsson/android/camera/CameraActivity$6;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity$6;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmStorage(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$6$1;->val$listener:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;

    invoke-interface {v0, p0}, Lcom/sonyericsson/cameracommon/storage/Storage;->removeStorageReadyStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;)V

    return-void
.end method

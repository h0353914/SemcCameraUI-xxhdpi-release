.class Lcom/sonyericsson/android/camera/CameraActivity$6;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/CameraActivity;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    .line 957
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$6;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageReadyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;)V
    .locals 0

    .line 963
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$6;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmStorage(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/storage/Storage;->isStorageReadable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 964
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 965
    const-string p1, "onStorageReadyStateChanged: Storage can be readable, Got to setupAll"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 970
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/sonyericsson/android/camera/CameraActivity$6$1;

    invoke-direct {p2, p0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$6$1;-><init>(Lcom/sonyericsson/android/camera/CameraActivity$6;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

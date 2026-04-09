.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/storage/Storage$StorageStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageSizeChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;J)V
    .locals 0

    .line 505
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    const-string p1, "onAvailableSizeUpdated: "

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 507
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1$1;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1$1;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStorageStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;)V
    .locals 0

    return-void
.end method

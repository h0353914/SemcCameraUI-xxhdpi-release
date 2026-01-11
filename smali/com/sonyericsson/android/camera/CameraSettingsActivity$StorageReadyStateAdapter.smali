.class Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;
.super Ljava/lang/Object;
.source "CameraSettingsActivity.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageReadyStateAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V
    .locals 0

    .line 1090
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    return-void
.end method


# virtual methods
.method public onStorageReadyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;)V
    .locals 1

    .line 1094
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->COMPLETED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-ne p2, v0, :cond_0

    .line 1095
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->-$$Nest$fgetmMainHandler(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter$1;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

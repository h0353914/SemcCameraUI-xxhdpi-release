.class Lcom/sonyericsson/android/camera/CameraActivity$6;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/CameraActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 788
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$6;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared()V
    .locals 1

    .line 791
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PlatformCapability Prepared"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 792
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$6;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplication()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraApplication;->getUserSettingsLoader()Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;->load()V

    return-void
.end method

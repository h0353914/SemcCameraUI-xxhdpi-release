.class Lcom/sonyericsson/android/camera/CameraApplication$1;
.super Ljava/lang/Object;
.source "CameraApplication.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/CameraApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraApplication;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraApplication;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraApplication$1;->this$0:Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared()V
    .locals 1

    .line 94
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PlatformCapability Prepared"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 95
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraApplication$1;->this$0:Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraApplication;->-$$Nest$fgetmUserSettingsLoader(Lcom/sonyericsson/android/camera/CameraApplication;)Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->load()V

    return-void
.end method

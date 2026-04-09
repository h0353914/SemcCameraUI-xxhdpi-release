.class public abstract Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;
.super Ljava/lang/Object;
.source "CameraStatusPublisher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sonyericsson/cameracommon/status/CameraStatusValue;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ACTION_CAMERA_STATUS_UPDATE:Ljava/lang/String; = "com.sonymobile.cameracommon.action.CAMERA_STATUS_UPDATE"

.field private static final EXTRA_CAMERA_STATUS:Ljava/lang/String; = "CAMERA_STATUS"

.field private static final PACKAGE:Ljava/lang/String; = "com.sonymobile.cameracommon"

.field public static final TAG:Ljava/lang/String; = "CameraStatusPublisher"

.field private static volatile sCameraCommonVersion:I = -0x1


# instance fields
.field private final mContentValues:Landroid/content/ContentValues;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->mContentValues:Landroid/content/ContentValues;

    .line 54
    sget p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->sCameraCommonVersion:I

    if-gez p0, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->getCameraCommonVersion(Landroid/content/pm/PackageManager;)I

    move-result p0

    sput p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->sCameraCommonVersion:I

    :cond_0
    return-void
.end method

.method private static getCameraCommonVersion(Landroid/content/pm/PackageManager;)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.sonymobile.cameracommon"

    .line 116
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 118
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "com.sonymobile.cameracommon package doesn\'t exist."

    .line 121
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method private static publish(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2

    .line 90
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "### ### ### publish() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 92
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.cameracommon.action.CAMERA_STATUS_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sonymobile.cameracommon"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CAMERA_STATUS"

    .line 94
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 96
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 101
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_2

    const-string p1, "Fail to update the camera status."

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    :cond_2
    :goto_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_3

    const-string p0, "### ### ### publish() end"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected getCameraCommonVersion()I
    .locals 0

    .line 111
    sget p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->sCameraCommonVersion:I

    return p0
.end method

.method protected keyPrefix()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public publish()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->mContentValues:Landroid/content/ContentValues;

    invoke-static {v0, p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish(Landroid/content/Context;Landroid/content/ContentValues;)V

    return-void
.end method

.method public put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->getCameraCommonVersion()I

    move-result v0

    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/status/CameraStatusValue;->minRequiredVersion()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->keyPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusValue;->putInto(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 67
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### ### ### key/value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->keyPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/status/CameraStatusValue;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/status/CameraStatusValue;->getValueForDebug()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    .line 67
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public abstract putDefaultAll()Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher<",
            "TT;>;"
        }
    .end annotation
.end method

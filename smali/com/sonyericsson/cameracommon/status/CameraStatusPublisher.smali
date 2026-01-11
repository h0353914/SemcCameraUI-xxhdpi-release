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

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->mContentValues:Landroid/content/ContentValues;

    .line 56
    sget p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->sCameraCommonVersion:I

    if-gez p0, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->getCameraCommonVersion(Landroid/content/pm/PackageManager;)I

    move-result p0

    sput p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->sCameraCommonVersion:I

    :cond_0
    return-void
.end method

.method private static getCameraCommonVersion(Landroid/content/pm/PackageManager;)I
    .locals 3

    .line 111
    :try_start_0
    const-string v0, "com.sonymobile.cameracommon"

    const-wide/16 v1, 0x0

    .line 112
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v1

    .line 111
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 115
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 118
    :catch_0
    const-string p0, "com.sonymobile.cameracommon package doesn\'t exist."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private publish(Landroid/content/ContentValues;)V
    .locals 0

    .line 92
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const-string p0, "### ### ### publish() start"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 93
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->getInstance()Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->updateCameraStatus(Landroid/content/ContentValues;)V

    .line 94
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string p0, "### ### ### publish() end"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected getCameraCommonVersion()I
    .locals 0

    .line 102
    sget p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->sCameraCommonVersion:I

    return p0
.end method

.method protected keyPrefix()Ljava/lang/String;
    .locals 0

    .line 98
    const-string p0, ""

    return-object p0
.end method

.method public publish()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->mContentValues:Landroid/content/ContentValues;

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish(Landroid/content/ContentValues;)V

    return-void
.end method

.method public put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->getCameraCommonVersion()I

    move-result v0

    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/status/CameraStatusValue;->minRequiredVersion()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->keyPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusValue;->putInto(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 69
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "### ### ### key/value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->keyPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/status/CameraStatusValue;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 71
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/status/CameraStatusValue;->getValueForDebug()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

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

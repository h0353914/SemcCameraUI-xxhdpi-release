.class public final Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;
.super Ljava/lang/Object;
.source "CameraHiddenApiManager.java"


# static fields
.field private static final PACKAGE_NAME_SYSUI:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "CameraHiddenApiManager"


# instance fields
.field private mCallback:Lcom/sonymobile/camerahiddenapi/IScreenRecordingCallback;

.field private final mProjectionCallback:Landroid/media/projection/MediaProjectionManager$Callback;

.field private mWatcherCallbackRegistered:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;)Lcom/sonymobile/camerahiddenapi/IScreenRecordingCallback;
    .locals 0

    iget-object p0, p0, Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;->mCallback:Lcom/sonymobile/camerahiddenapi/IScreenRecordingCallback;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;->mWatcherCallbackRegistered:Z

    .line 29
    new-instance v0, Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager$1;-><init>(Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;)V

    iput-object v0, p0, Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;->mProjectionCallback:Landroid/media/projection/MediaProjectionManager$Callback;

    return-void
.end method


# virtual methods
.method public addMediaProjectionWatcherCallback(Landroid/content/Context;Lcom/sonymobile/camerahiddenapi/IScreenRecordingCallback;)V
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;->mWatcherCallbackRegistered:Z

    if-eqz v0, :cond_0

    return-void

    .line 23
    :cond_0
    iput-object p2, p0, Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;->mCallback:Lcom/sonymobile/camerahiddenapi/IScreenRecordingCallback;

    .line 24
    const-class p2, Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/projection/MediaProjectionManager;

    .line 25
    iget-object p2, p0, Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;->mProjectionCallback:Landroid/media/projection/MediaProjectionManager$Callback;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1, p2, v0}, Landroid/media/projection/MediaProjectionManager;->addCallback(Landroid/media/projection/MediaProjectionManager$Callback;Landroid/os/Handler;)V

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;->mWatcherCallbackRegistered:Z

    return-void
.end method

.method public getActiveProjectionInfoName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 58
    const-class p0, Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/projection/MediaProjectionManager;

    .line 59
    invoke-virtual {p0}, Landroid/media/projection/MediaProjectionManager;->getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p0}, Landroid/media/projection/MediaProjectionManager;->getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public removeMediaProjectionWatcherCallback(Landroid/content/Context;Lcom/sonymobile/camerahiddenapi/IScreenRecordingCallback;)V
    .locals 0

    const/4 p2, 0x0

    .line 48
    iput-object p2, p0, Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;->mCallback:Lcom/sonymobile/camerahiddenapi/IScreenRecordingCallback;

    .line 49
    iget-boolean p2, p0, Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;->mWatcherCallbackRegistered:Z

    if-nez p2, :cond_0

    return-void

    .line 53
    :cond_0
    const-class p2, Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/projection/MediaProjectionManager;

    .line 54
    iget-object p0, p0, Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;->mProjectionCallback:Landroid/media/projection/MediaProjectionManager$Callback;

    invoke-virtual {p1, p0}, Landroid/media/projection/MediaProjectionManager;->removeCallback(Landroid/media/projection/MediaProjectionManager$Callback;)V

    return-void
.end method

.class public final Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;
.super Ljava/lang/Object;
.source "XperiaXLoopsManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007*\u0002\t\u000c\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0011\u001a\u00020\u0012H\u0007J\u0008\u0010\u0013\u001a\u00020\u0012H\u0007J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0006H\u0002J\u0008\u0010\u0016\u001a\u00020\u0012H\u0002J\u0008\u0010\u0017\u001a\u00020\u0012H\u0002R\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0007R\u0010\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\nR\u0010\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;",
        "",
        "mContext",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "isConnected",
        "",
        "()Z",
        "mCallback",
        "com/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$mCallback$1",
        "Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$mCallback$1;",
        "mConnection",
        "com/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$mConnection$1",
        "Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$mConnection$1;",
        "mIsConnectionRequested",
        "mService",
        "Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;",
        "connect",
        "",
        "disconnect",
        "notifyShowLoopsByApps",
        "isShown",
        "registerCallback",
        "unregisterCallback",
        "Companion",
        "SemcCameraUI_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$Companion;

.field private static final LOOPS_SERVICE_CLASS_NAME:Ljava/lang/String;

.field private static final LOOPS_SERVICE_PACKAGE_NAME:Ljava/lang/String;

.field private static final TYPE_CAMERA:I


# instance fields
.field private final mCallback:Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$mCallback$1;

.field private final mConnection:Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$mConnection$1;

.field private final mContext:Landroid/content/Context;

.field private mIsConnectionRequested:Z

.field private mService:Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->Companion:Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$Companion;

    .line 27
    const-string v0, "com.sonymobile.xperiaxloops"

    sput-object v0, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->LOOPS_SERVICE_PACKAGE_NAME:Ljava/lang/String;

    .line 28
    const-string v0, "com.sonymobile.xperiaxloops.XperiaXLoopsService"

    sput-object v0, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->LOOPS_SERVICE_CLASS_NAME:Ljava/lang/String;

    const/4 v0, 0x2

    .line 31
    sput v0, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->TYPE_CAMERA:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->mContext:Landroid/content/Context;

    .line 43
    new-instance p1, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$mCallback$1;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$mCallback$1;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->mCallback:Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$mCallback$1;

    .line 54
    new-instance p1, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$mConnection$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$mConnection$1;-><init>(Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->mConnection:Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$mConnection$1;

    return-void
.end method

.method public static final synthetic access$getMContext$p(Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMIsConnectionRequested$p(Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->mIsConnectionRequested:Z

    return p0
.end method

.method public static final synthetic access$notifyShowLoopsByApps(Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->notifyShowLoopsByApps(Z)V

    return-void
.end method

.method public static final synthetic access$registerCallback(Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->registerCallback()V

    return-void
.end method

.method public static final synthetic access$setMService$p(Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->mService:Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;

    return-void
.end method

.method private final notifyShowLoopsByApps(Z)V
    .locals 2

    .line 141
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyShowLoopsByApps: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 143
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->mService:Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;

    if-eqz p0, :cond_1

    sget v0, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->TYPE_CAMERA:I

    invoke-interface {p0, p1, v0}, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;->notifyShowLoopsByApps(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 145
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final registerCallback()V
    .locals 2

    .line 115
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "registerCallback"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 117
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->mService:Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;

    if-eqz v0, :cond_1

    sget v1, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->TYPE_CAMERA:I

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->mCallback:Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$mCallback$1;

    check-cast p0, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsServiceCallback;

    invoke-interface {v0, v1, p0}, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;->registerCallback(ILcom/sonymobile/xperiaxloops/IXperiaXLoopsServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 119
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final unregisterCallback()V
    .locals 2

    .line 127
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "unregisterCallback"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 129
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->mService:Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;

    if-eqz v0, :cond_1

    sget v1, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->TYPE_CAMERA:I

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->mCallback:Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$mCallback$1;

    check-cast p0, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsServiceCallback;

    invoke-interface {v0, v1, p0}, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;->unregisterCallback(ILcom/sonymobile/xperiaxloops/IXperiaXLoopsServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 131
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final connect()V
    .locals 4

    .line 88
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "connect"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 89
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 90
    sget-object v1, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->LOOPS_SERVICE_PACKAGE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->LOOPS_SERVICE_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->mConnection:Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$mConnection$1;

    check-cast v2, Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 92
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->mIsConnectionRequested:Z

    return-void
.end method

.method public final disconnect()V
    .locals 3

    .line 101
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "disconnect"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 103
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->notifyShowLoopsByApps(Z)V

    .line 104
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->unregisterCallback()V

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->mConnection:Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$mConnection$1;

    check-cast v2, Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->mService:Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;

    .line 108
    :cond_1
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->mIsConnectionRequested:Z

    return-void
.end method

.method public final isConnected()Z
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->mService:Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

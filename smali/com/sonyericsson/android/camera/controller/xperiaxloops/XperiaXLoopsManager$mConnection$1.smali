.class public final Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$mConnection$1;
.super Ljava/lang/Object;
.source "XperiaXLoopsManager.kt"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$mConnection$1",
        "Landroid/content/ServiceConnection;",
        "onServiceConnected",
        "",
        "name",
        "Landroid/content/ComponentName;",
        "service",
        "Landroid/os/IBinder;",
        "onServiceDisconnected",
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


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$mConnection$1;->this$0:Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "service"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "onServiceConnected"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$mConnection$1;->this$0:Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->access$getMIsConnectionRequested$p(Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 58
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$mConnection$1;->this$0:Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;

    invoke-static {p2}, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->access$setMService$p(Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;)V

    .line 59
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$mConnection$1;->this$0:Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->access$registerCallback(Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;)V

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$mConnection$1;->this$0:Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->access$notifyShowLoopsByApps(Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;Z)V

    goto :goto_0

    .line 62
    :cond_1
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "Loops is already hidden."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 63
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$mConnection$1;->this$0:Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->access$getMContext$p(Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;)Landroid/content/Context;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Landroid/content/ServiceConnection;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 64
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$mConnection$1;->this$0:Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;->access$setMService$p(Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "onServiceDisConnected"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

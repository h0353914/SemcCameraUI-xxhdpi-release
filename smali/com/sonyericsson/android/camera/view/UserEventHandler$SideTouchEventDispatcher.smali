.class public Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;
.super Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;
.source "UserEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SideTouchEventDispatcher"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 400
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .locals 0

    .line 400
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;->attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method

.method protected reset()V
    .locals 0

    .line 404
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$1500(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method

.method public send(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 419
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 420
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 421
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SideTouchEventDispatcher#send()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 422
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$1600(Lcom/sonyericsson/android/camera/view/UserEventHandler;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_2
    const-string p0, "SideTouchEventDispatcher#send() event is rejected."

    .line 424
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic start()V
    .locals 0

    .line 400
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .line 400
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;->stop()V

    return-void
.end method

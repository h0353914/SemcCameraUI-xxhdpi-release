.class public Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;
.super Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;
.source "UserEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VirtualKeyEventDispatcher"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 443
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher-IA;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .locals 0

    .line 443
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;->attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method

.method public sendVirtualKeyEvent(Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;)Z
    .locals 1

    .line 446
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VirtualKeyEventDispatcher#sendVirtualKeyEvent()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 448
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mdispatchVirtualKeyEvent(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;)Z

    move-result p0

    return p0

    .line 450
    :cond_1
    const-string p0, "VirtualKeyEventDispatcher#sendVirtualKeyEvent() event is rejected."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic start()V
    .locals 0

    .line 443
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .line 443
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;->stop()V

    return-void
.end method

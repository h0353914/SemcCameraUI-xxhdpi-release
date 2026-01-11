.class public Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;
.super Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;
.source "UserEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZoomEventDispatcher"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 470
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher-IA;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .locals 0

    .line 470
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;->attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method

.method public bridge synthetic start()V
    .locals 0

    .line 470
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .line 470
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;->stop()V

    return-void
.end method

.method public zoomChangeEvent(F)Z
    .locals 2

    .line 483
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZoomEventDispatcher#zoomChangeEvent()"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 485
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;->CHANGE:Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mdispatchZoomEvent(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 487
    :cond_1
    const-string p0, "ZoomEventDispatcher#zoomChangeEvent() event is rejected."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public zoomEndEvent()Z
    .locals 2

    .line 493
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZoomEventDispatcher#zoomEndEvent()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 495
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;->END:Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mdispatchZoomEvent(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 497
    :cond_1
    const-string p0, "ZoomEventDispatcher#zoomEndEvent() event is rejected."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return v1
.end method

.method public zoomRatioDesignation(F)Z
    .locals 2

    .line 503
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZoomEventDispatcher#zoomRatioDesignation() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 505
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;->DESIGNATION:Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mdispatchZoomEvent(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 507
    :cond_1
    const-string p0, "ZoomEventDispatcher#zoomRatioDesignation() event is rejected."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public zoomStartEvent()Z
    .locals 2

    .line 473
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZoomEventDispatcher#zoomStartEvent()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 475
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;->START:Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mdispatchZoomEvent(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 477
    :cond_1
    const-string p0, "ZoomEventDispatcher#zoomStartEvent() event is rejected."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return v1
.end method

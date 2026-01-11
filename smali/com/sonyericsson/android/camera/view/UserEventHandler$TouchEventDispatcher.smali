.class public Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;
.super Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;
.source "UserEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchEventDispatcher"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 311
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher-IA;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .locals 0

    .line 311
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;->attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method

.method protected reset()V
    .locals 0

    .line 315
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mresetTouchEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method

.method public sendCancel(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V
    .locals 2

    .line 363
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TouchEventDispatcher#sendCancel() source:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mdispatchTouchCancel(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V

    goto :goto_0

    .line 368
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "TouchEventDispatcher#sendCancel() event is rejected. source:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 368
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendCaptureAreaScaleReady(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V
    .locals 2

    .line 376
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TouchEventDispatcher#sendCaptureAreaScaleReady() source:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 379
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mdispatchCaptureAreaScaleReady(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V

    goto :goto_0

    .line 381
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "TouchEventDispatcher#sendCaptureAreaScaleReady() event is rejected.source:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 381
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendCaptureAreaScaling(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;F)V
    .locals 2

    .line 387
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TouchEventDispatcher#sendCaptureAreaScaling() source:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 390
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mdispatchCaptureAreaScaling(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;F)V

    goto :goto_0

    .line 392
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "TouchEventDispatcher#sendCaptureAreaScaling() event is rejected. source:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 392
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendClick(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V
    .locals 2

    .line 341
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TouchEventDispatcher#sendClick() source:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 344
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mdispatchClick(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V

    goto :goto_0

    .line 346
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "TouchEventDispatcher#sendClick() event is rejected. source:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 346
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendLongClick(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V
    .locals 2

    .line 352
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TouchEventDispatcher#sendLongClick() source:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mdispatchLongClick(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V

    goto :goto_0

    .line 357
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "TouchEventDispatcher#sendLongClick() event is rejected. source:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 357
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendTouchDown(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V
    .locals 2

    .line 319
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TouchEventDispatcher#sendTouchDown() source:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mdispatchTouchDown(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V

    goto :goto_0

    .line 324
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "TouchEventDispatcher#sendTouchDown() event is rejected. source:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 324
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendTouchUp(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V
    .locals 2

    .line 330
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TouchEventDispatcher#sendTouchUp() source:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mdispatchTouchUp(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V

    goto :goto_0

    .line 335
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "TouchEventDispatcher#sendTouchUp() event is rejected. source:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 335
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic start()V
    .locals 0

    .line 311
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .line 311
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;->stop()V

    return-void
.end method

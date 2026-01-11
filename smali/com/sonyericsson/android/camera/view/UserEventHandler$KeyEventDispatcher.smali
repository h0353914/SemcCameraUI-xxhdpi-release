.class public Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;
.super Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;
.source "UserEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyEventDispatcher"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 262
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher-IA;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .locals 0

    .line 262
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;->attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method

.method protected reset()V
    .locals 0

    .line 266
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mresetKeyEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method

.method public sendKeyDown(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 270
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KeyEventDispatcher#sendKeyDown() event:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mdispatchKeyDown(Lcom/sonyericsson/android/camera/view/UserEventHandler;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 275
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "KeyEventDispatcher#sendKeyDown() event is rejected. event:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 275
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public sendKeyLongPress(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 294
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KeyEventDispatcher#sendKeyLongPress() event:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mdispatchKeyLongPress(Lcom/sonyericsson/android/camera/view/UserEventHandler;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 299
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "KeyEventDispatcher#sendKeyLongPress() event is rejected. event:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 299
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public sendKeyUp(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 282
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KeyEventDispatcher#sendKeyUp() event:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mdispatchKeyUp(Lcom/sonyericsson/android/camera/view/UserEventHandler;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 287
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "KeyEventDispatcher#sendKeyUp() event is rejected. event:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 287
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic start()V
    .locals 0

    .line 262
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .line 262
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;->stop()V

    return-void
.end method

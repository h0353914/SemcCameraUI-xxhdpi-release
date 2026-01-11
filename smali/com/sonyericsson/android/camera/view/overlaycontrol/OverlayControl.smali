.class public abstract Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;
.super Ljava/lang/Object;
.source "OverlayControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;
    }
.end annotation


# instance fields
.field private mIsAllowedToShow:Z

.field private mIsEnabled:Z

.field private mStateListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "init"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->mStateListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 2

    .line 46
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    .line 48
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->mIsEnabled:Z

    .line 49
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->isVisible()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->onVisibilityUpdated()V

    :cond_1
    return-void
.end method

.method public enable()V
    .locals 2

    .line 37
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    .line 39
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->mIsEnabled:Z

    .line 40
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->isVisible()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 41
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->onVisibilityUpdated()V

    :cond_1
    return-void
.end method

.method public hide()V
    .locals 2

    .line 64
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    .line 66
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->mIsAllowedToShow:Z

    .line 67
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->isVisible()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->onVisibilityUpdated()V

    :cond_1
    return-void
.end method

.method public isEnabled()Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->mIsEnabled:Z

    return p0
.end method

.method public isVisible()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->mIsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->mIsAllowedToShow:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected notifyValueUpdateEnd()V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->mStateListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;

    if-eqz p0, :cond_0

    .line 100
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;->onValueUpdateEnd()V

    :cond_0
    return-void
.end method

.method protected notifyValueUpdateStart()V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->mStateListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;

    if-eqz p0, :cond_0

    .line 94
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;->onValueUpdateStart()V

    :cond_0
    return-void
.end method

.method protected abstract onOrientationChanged(I)V
.end method

.method protected abstract onVisibilityUpdated()V
.end method

.method public abstract refresh()V
.end method

.method public abstract release()V
.end method

.method public setOrientation(I)V
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->onOrientationChanged(I)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 55
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    .line 57
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->mIsAllowedToShow:Z

    .line 58
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->isVisible()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->onVisibilityUpdated()V

    :cond_1
    return-void
.end method

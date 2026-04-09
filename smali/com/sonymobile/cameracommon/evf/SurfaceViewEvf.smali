.class public Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;
.super Ljava/lang/Object;
.source "SurfaceViewEvf.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/evf/Evf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf$SurfaceViewCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceViewEvf"


# instance fields
.field private mEvfRect:Landroid/graphics/Rect;

.field private mIsSurfaceAvailable:Z

.field private mLifeCycleCallback:Lcom/sonymobile/cameracommon/evf/Evf$LifeCycleCallback;

.field private mSurfaceSize:Landroid/util/Size;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mSurfaceViewCallback:Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf$SurfaceViewCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceView:Landroid/view/SurfaceView;

    .line 29
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mEvfRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    .line 30
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mIsSurfaceAvailable:Z

    .line 33
    new-instance v1, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf$SurfaceViewCallback;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf$SurfaceViewCallback;-><init>(Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf$1;)V

    iput-object v1, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceViewCallback:Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf$SurfaceViewCallback;

    .line 35
    iput-object v0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mLifeCycleCallback:Lcom/sonymobile/cameracommon/evf/Evf$LifeCycleCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->setSurfaceAvailability(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;Landroid/util/Size;)Landroid/util/Size;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceSize:Landroid/util/Size;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;)Lcom/sonymobile/cameracommon/evf/Evf$LifeCycleCallback;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mLifeCycleCallback:Lcom/sonymobile/cameracommon/evf/Evf$LifeCycleCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;)Landroid/view/SurfaceView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method private declared-synchronized setSurfaceAvailability(Z)V
    .locals 0

    monitor-enter p0

    .line 151
    :try_start_0
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mIsSurfaceAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 150
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public asSurface()Landroid/view/Surface;
    .locals 1

    .line 232
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "asSurface()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 233
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public asView()Landroid/view/View;
    .locals 1

    .line 65
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "asView()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 66
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method public declared-synchronized clear()V
    .locals 3

    monitor-enter p0

    .line 140
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mIsSurfaceAvailable:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 142
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    if-eqz v1, :cond_0

    const/high16 v2, -0x1000000

    .line 144
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 145
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 139
    monitor-exit p0

    throw v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 5

    .line 71
    iget-object v0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mEvfRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceView:Landroid/view/SurfaceView;

    .line 72
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceView:Landroid/view/SurfaceView;

    .line 73
    invoke-virtual {v2}, Landroid/view/SurfaceView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceView:Landroid/view/SurfaceView;

    .line 74
    invoke-virtual {v3}, Landroid/view/SurfaceView;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceView:Landroid/view/SurfaceView;

    .line 75
    invoke-virtual {v4}, Landroid/view/SurfaceView;->getBottom()I

    move-result v4

    .line 71
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 76
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRect() : Rect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mEvfRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 77
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mEvfRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getSurfaceSize()Landroid/util/Size;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceSize:Landroid/util/Size;

    return-object p0
.end method

.method public hide()V
    .locals 1

    .line 47
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "hide()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 49
    iget-object p0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceView:Landroid/view/SurfaceView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public isShown()Z
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 56
    iget-object p0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1

    .line 100
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onCreate() : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 103
    :cond_0
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceView:Landroid/view/SurfaceView;

    .line 104
    iget-object p1, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 105
    iget-object p1, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object p0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceViewCallback:Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf$SurfaceViewCallback;

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 107
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "onCreate() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 126
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onDestroy() : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v2, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceViewCallback:Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf$SurfaceViewCallback;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 130
    iput-object v1, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceView:Landroid/view/SurfaceView;

    .line 133
    :cond_1
    iput-object v1, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mLifeCycleCallback:Lcom/sonymobile/cameracommon/evf/Evf$LifeCycleCallback;

    .line 135
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "onDestroy() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 119
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "onPause() : E"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 121
    :cond_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "onPause() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 112
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "onResume() : E"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 114
    :cond_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "onResume() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public resize(II)V
    .locals 4

    .line 82
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resize() : Width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 87
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 88
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 90
    iget-object p0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setFixedSurfaceSize(II)V
    .locals 4

    .line 238
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFixedSurfaceSize(w:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", h:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 239
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    return-void
.end method

.method public setLifeCycleCallback(Lcom/sonymobile/cameracommon/evf/Evf$LifeCycleCallback;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mLifeCycleCallback:Lcom/sonymobile/cameracommon/evf/Evf$LifeCycleCallback;

    return-void
.end method

.method public show()V
    .locals 1

    .line 39
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "show()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 41
    iget-object p0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_1
    return-void
.end method

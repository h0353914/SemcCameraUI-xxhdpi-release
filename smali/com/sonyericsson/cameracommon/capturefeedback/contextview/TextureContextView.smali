.class public Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;
.super Landroid/view/TextureView;
.source "TextureContextView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;,
        Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$SetInvisibleTask;,
        Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;
    }
.end annotation


# static fields
.field private static final DRAW_INTERVAL_MILLIS:J = 0x21L

.field public static final TAG:Ljava/lang/String; = "TextureContextView"

.field private static final THREAD_NAME:Ljava/lang/String; = "ShutterFeedback"


# instance fields
.field private mAnimation:Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;

.field private final mAnimationElapsedTimeCount:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

.field private final mCanvas:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;

.field private final mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mIsAnimationRequested:Z

.field private mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final mSetInvisibleTask:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$SetInvisibleTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 62
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance p1, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$SetInvisibleTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$SetInvisibleTask;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$1;)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mSetInvisibleTask:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$SetInvisibleTask;

    .line 57
    new-instance p1, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$1;)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mCanvas:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;

    .line 63
    invoke-virtual {p0, p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 64
    new-instance p1, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mAnimationElapsedTimeCount:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    const-string p1, "ShutterFeedback"

    const/16 v0, 0xa

    .line 65
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildScheduledExecutor(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mCanvas:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mAnimation:Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mAnimationElapsedTimeCount:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$SetInvisibleTask;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mSetInvisibleTask:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$SetInvisibleTask;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method


# virtual methods
.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 7

    .line 70
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mIsAnimationRequested:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mIsAnimationRequested:Z

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;

    const/4 p1, 0x0

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$1;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x21

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    .line 115
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const-string p0, "release()"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public start(Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;)V
    .locals 7

    .line 97
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 98
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mAnimation:Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;

    .line 100
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mAnimationElapsedTimeCount:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->start()V

    const/4 p1, 0x0

    .line 101
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->setVisibility(I)V

    .line 102
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;

    const/4 p1, 0x0

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$1;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x21

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 109
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mIsAnimationRequested:Z

    :goto_0
    return-void
.end method

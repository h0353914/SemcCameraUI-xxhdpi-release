.class public Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;
.super Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;
.source "GLSurfaceContextView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;,
        Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$AnimationCanvas;,
        Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$ReleaseTask;,
        Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;
    }
.end annotation


# static fields
.field private static final ANIMATION_CANCEL_WAITING_DURATION:J = 0x64L

.field private static final CENTER_X_POS:F = 0.0f

.field private static final CENTER_Y_POS:F = 0.0f

.field private static final CENTER_Z_POS:F = 0.2f

.field private static final EYE_SIGHT_MATRIX:[F

.field private static final PARALLEL_PROJECTION_MATRIX:[F

.field private static final PERSPECTIVE_PROJECTION_MATRIX:[F

.field private static final ROOT_GM:[F

.field public static final TAG:Ljava/lang/String; = "GLSurfaceContextView"


# instance fields
.field private mAnimation:Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;

.field private final mAnimationCanvas:Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationCanvas;

.field private final mAnimationElapsedTimeCount:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

.field private mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mFlashFeedback:Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

.field private mIsFirstFrame:Z

.field private mOnFirstFrameDrawnListener:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback$OnFirstFrameDrawnListener;

.field private final mSetInvisibleTask:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;

.field private mSimpleFrameShader:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmFlashFeedback(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)Lcom/sonymobile/cameracommon/opengl/SimpleFrame;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mFlashFeedback:Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSimpleFrameShader(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)I
    .locals 0

    iget p0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSimpleFrameShader:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmFlashFeedback(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;Lcom/sonymobile/cameracommon/opengl/SimpleFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mFlashFeedback:Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateAllShaders(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->createAllShaders()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseAllShaders(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->releaseAllShaders()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetupDynamicConfig(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->setupDynamicConfig(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 14

    const/16 v0, 0x10

    .line 42
    new-array v1, v0, [F

    sput-object v1, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->EYE_SIGHT_MATRIX:[F

    .line 44
    new-array v12, v0, [F

    sput-object v12, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->PERSPECTIVE_PROJECTION_MATRIX:[F

    .line 46
    new-array v13, v0, [F

    sput-object v13, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->PARALLEL_PROJECTION_MATRIX:[F

    .line 48
    new-array v0, v0, [F

    sput-object v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->ROOT_GM:[F

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 74
    invoke-static/range {v1 .. v11}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    const/high16 v9, 0x43480000    # 200.0f

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v2, v13

    .line 81
    invoke-static/range {v2 .. v9}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    const/high16 v8, 0x42480000    # 50.0f

    const/high16 v9, 0x43160000    # 150.0f

    move-object v2, v12

    .line 91
    invoke-static/range {v2 .. v9}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mFlashFeedback:Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    const/4 p2, 0x0

    .line 62
    iput p2, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSimpleFrameShader:I

    .line 64
    new-instance v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask-IA;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSetInvisibleTask:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;

    .line 66
    new-instance v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$AnimationCanvas;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$AnimationCanvas;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$AnimationCanvas-IA;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mAnimationCanvas:Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationCanvas;

    .line 70
    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mIsFirstFrame:Z

    .line 104
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    const-string p1, "AnimationContextView()"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 105
    :cond_0
    new-instance p1, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mAnimationElapsedTimeCount:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    move-object v0, p0

    .line 106
    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->setEGLConfigChooser(IIIIII)V

    const/4 p1, 0x1

    .line 107
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->setZOrderOnTop(Z)V

    .line 108
    invoke-virtual {p0, p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 109
    invoke-virtual {p0, p2}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->setRenderMode(I)V

    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    const/4 p1, -0x2

    invoke-interface {p0, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method

.method private clearSurface()V
    .locals 0

    const/4 p0, 0x0

    .line 327
    invoke-static {p0, p0, p0, p0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p0, 0x4500

    .line 329
    invoke-static {p0}, Landroid/opengl/GLES20;->glClear(I)V

    return-void
.end method

.method private createAllShaders()V
    .locals 1

    .line 410
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "createAllShaders() : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 411
    :cond_0
    iget v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSimpleFrameShader:I

    if-eqz v0, :cond_1

    .line 412
    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->deleteShaderProgram(I)V

    .line 414
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createSimpleFrameShaderProgram(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSimpleFrameShader:I

    .line 415
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_2

    const-string p0, "createAllShaders() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private disableGlobalFunctions()Z
    .locals 0

    const/16 p0, 0xbe2

    .line 316
    invoke-static {p0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 p0, 0xb71

    .line 319
    invoke-static {p0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/4 p0, 0x1

    return p0
.end method

.method private doRender()V
    .locals 9

    .line 355
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 357
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->clearSurface()V

    .line 358
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mAnimationElapsedTimeCount:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->stop()V

    .line 360
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSetInvisibleTask:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->post(Ljava/lang/Runnable;)Z

    .line 361
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void

    .line 365
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->clearSurface()V

    .line 368
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mFlashFeedback:Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    if-nez v0, :cond_2

    return-void

    .line 373
    :cond_2
    sget-object v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->ROOT_GM:[F

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 374
    sget-object v5, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->EYE_SIGHT_MATRIX:[F

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v3, v0

    move-object v7, v0

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 375
    sget-object v5, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->PARALLEL_PROJECTION_MATRIX:[F

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 376
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mFlashFeedback:Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    invoke-virtual {v3, v0}, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->setGlobalMatrix([F)V

    .line 378
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mAnimation:Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    const/16 v4, 0x302

    .line 382
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 383
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mAnimationCanvas:Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationCanvas;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mAnimationElapsedTimeCount:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    .line 385
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->elapsedTimeMillis()J

    move-result-wide v6

    .line 383
    invoke-interface {v0, v5, v6, v7}, Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;->draw(Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationCanvas;J)Z

    move-result v0

    xor-int/2addr v3, v0

    const/16 v0, 0x303

    .line 386
    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 392
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_5

    .line 394
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->clearSurface()V

    .line 395
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    .line 396
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mAnimationElapsedTimeCount:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->stop()V

    .line 397
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSetInvisibleTask:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->post(Ljava/lang/Runnable;)Z

    .line 398
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_4
    return-void

    :cond_5
    if-eqz v3, :cond_6

    .line 404
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mAnimationElapsedTimeCount:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->stop()V

    .line 405
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSetInvisibleTask:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method

.method private enableGlobalFunctions()Z
    .locals 1

    const/16 p0, 0xbe2

    .line 304
    invoke-static {p0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p0, 0x302

    const/16 v0, 0x303

    .line 305
    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/16 p0, 0xb71

    .line 308
    invoke-static {p0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public static final preload()V
    .locals 0

    return-void
.end method

.method private releaseAllShaders()V
    .locals 1

    .line 419
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "releaseAllShaders() : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 420
    :cond_0
    iget v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSimpleFrameShader:I

    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->deleteShaderProgram(I)V

    const/4 v0, 0x0

    .line 421
    iput v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSimpleFrameShader:I

    .line 422
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string p0, "releaseAllShaders() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private render()V
    .locals 1

    .line 284
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->enableGlobalFunctions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    const-string p0, "render():[Enable functions failed.]"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void

    .line 289
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->doRender()V

    .line 291
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->disableGlobalFunctions()Z

    move-result p0

    if-nez p0, :cond_1

    .line 292
    const-string p0, "render():[Disable functions failed.]"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private setupDynamicConfig(II)V
    .locals 0

    const/4 p0, 0x0

    if-ge p2, p1, :cond_0

    sub-int p2, p1, p2

    .line 248
    div-int/lit8 p2, p2, 0x2

    mul-int/lit8 p2, p2, -0x1

    .line 249
    invoke-static {p0, p2, p1, p1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    goto :goto_0

    :cond_0
    sub-int p1, p2, p1

    .line 271
    div-int/lit8 p1, p1, 0x2

    mul-int/lit8 p1, p1, -0x1

    .line 272
    invoke-static {p1, p0, p2, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->render()V

    .line 146
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mIsFirstFrame:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 147
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mIsFirstFrame:Z

    .line 149
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mOnFirstFrameDrawnListener:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback$OnFirstFrameDrawnListener;

    if-eqz p0, :cond_0

    .line 150
    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback$OnFirstFrameDrawnListener;->onFirstFrameDrawn()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 5

    .line 337
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mAnimation:Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_0

    .line 338
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 340
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "onPause() : timed-out"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 345
    :catch_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 346
    const-string v0, "onPause() : mCountDownLatch.await() interrupted"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 350
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->onPause()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    .line 130
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onSurfaceChanged() : width = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", height = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->setupRelatedToSurfaceSize()V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 2

    .line 178
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "release()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 179
    :cond_0
    new-instance v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$ReleaseTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$ReleaseTask;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$ReleaseTask-IA;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setOnFirstFrameDrawnListener(Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback$OnFirstFrameDrawnListener;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mOnFirstFrameDrawnListener:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback$OnFirstFrameDrawnListener;

    return-void
.end method

.method public setupRelatedToSurfaceSize()V
    .locals 2

    .line 205
    new-instance v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask-IA;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start(Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;)V
    .locals 1

    .line 157
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "start()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSetInvisibleTask:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 160
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mAnimation:Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;

    .line 161
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mAnimationElapsedTimeCount:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->start()V

    const/4 p1, 0x0

    .line 162
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->setVisibility(I)V

    const/4 p1, 0x1

    .line 163
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->setRenderMode(I)V

    .line 164
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mIsFirstFrame:Z

    .line 165
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->requestRender()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 170
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "surfaceDestroyed() : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->release()V

    .line 172
    invoke-super {p0, p1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 173
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string/jumbo p0, "surfaceDestroyed() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

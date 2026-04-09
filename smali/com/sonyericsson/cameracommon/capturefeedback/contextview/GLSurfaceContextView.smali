.class public Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;
.super Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;
.source "GLSurfaceContextView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$AnimationCanvas;,
        Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;,
        Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;,
        Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$ReleaseTask;
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

.field private final mSetInvisibleTask:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;

.field private mSimpleFrameShader:I


# direct methods
.method static constructor <clinit>()V
    .locals 20

    const/16 v0, 0x10

    .line 42
    new-array v1, v0, [F

    sput-object v1, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->EYE_SIGHT_MATRIX:[F

    .line 44
    new-array v1, v0, [F

    sput-object v1, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->PERSPECTIVE_PROJECTION_MATRIX:[F

    .line 46
    new-array v1, v0, [F

    sput-object v1, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->PARALLEL_PROJECTION_MATRIX:[F

    .line 48
    new-array v0, v0, [F

    sput-object v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->ROOT_GM:[F

    .line 72
    sget-object v1, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->EYE_SIGHT_MATRIX:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 79
    sget-object v12, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->PARALLEL_PROJECTION_MATRIX:[F

    const/4 v13, 0x0

    const/high16 v14, -0x40800000    # -1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, -0x40800000    # -1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/high16 v19, 0x43480000    # 200.0f

    invoke-static/range {v12 .. v19}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 89
    sget-object v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->PERSPECTIVE_PROJECTION_MATRIX:[F

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x42480000    # 50.0f

    const/high16 v7, 0x43160000    # 150.0f

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mFlashFeedback:Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    const/4 p2, 0x0

    .line 62
    iput p2, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSimpleFrameShader:I

    .line 64
    new-instance v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSetInvisibleTask:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;

    .line 66
    new-instance v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$AnimationCanvas;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$AnimationCanvas;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mAnimationCanvas:Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationCanvas;

    .line 102
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    const-string p1, "AnimationContextView()"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 103
    :cond_0
    new-instance p1, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mAnimationElapsedTimeCount:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    .line 104
    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->setEGLConfigChooser(IIIIII)V

    const/4 p1, 0x1

    .line 105
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->setZOrderOnTop(Z)V

    .line 106
    invoke-virtual {p0, p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 107
    invoke-virtual {p0, p2}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->setRenderMode(I)V

    .line 108
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    const/4 p1, -0x2

    invoke-interface {p0, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)Lcom/sonymobile/cameracommon/opengl/SimpleFrame;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mFlashFeedback:Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    return-object p0
.end method

.method static synthetic access$302(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;Lcom/sonymobile/cameracommon/opengl/SimpleFrame;)Lcom/sonymobile/cameracommon/opengl/SimpleFrame;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mFlashFeedback:Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->releaseAllShaders()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->setupDynamicConfig(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->createAllShaders()V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSimpleFrameShader:I

    return p0
.end method

.method private clearSurface()V
    .locals 0

    const/4 p0, 0x0

    .line 308
    invoke-static {p0, p0, p0, p0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p0, 0x4500

    .line 310
    invoke-static {p0}, Landroid/opengl/GLES20;->glClear(I)V

    return-void
.end method

.method private createAllShaders()V
    .locals 1

    .line 391
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "createAllShaders() : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 392
    :cond_0
    iget v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSimpleFrameShader:I

    if-eqz v0, :cond_1

    .line 393
    iget v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSimpleFrameShader:I

    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->deleteShaderProgram(I)V

    .line 395
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createSimpleFrameShaderProgram(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSimpleFrameShader:I

    .line 396
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

    .line 297
    invoke-static {p0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 p0, 0xb71

    .line 300
    invoke-static {p0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/4 p0, 0x1

    return p0
.end method

.method private doRender()V
    .locals 17

    move-object/from16 v0, p0

    .line 336
    iget-object v1, v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    .line 338
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->clearSurface()V

    .line 339
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 340
    iget-object v2, v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mAnimationElapsedTimeCount:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->stop()V

    .line 341
    iget-object v2, v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSetInvisibleTask:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->post(Ljava/lang/Runnable;)Z

    .line 342
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void

    .line 346
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->clearSurface()V

    .line 349
    iget-object v1, v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mFlashFeedback:Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    if-nez v1, :cond_2

    return-void

    .line 354
    :cond_2
    sget-object v1, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->ROOT_GM:[F

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 355
    sget-object v5, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->ROOT_GM:[F

    const/4 v6, 0x0

    sget-object v7, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->EYE_SIGHT_MATRIX:[F

    const/4 v8, 0x0

    sget-object v9, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->ROOT_GM:[F

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 356
    sget-object v11, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->ROOT_GM:[F

    const/4 v12, 0x0

    sget-object v13, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->PARALLEL_PROJECTION_MATRIX:[F

    const/4 v14, 0x0

    sget-object v15, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->ROOT_GM:[F

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 357
    iget-object v1, v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mFlashFeedback:Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    sget-object v4, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->ROOT_GM:[F

    invoke-virtual {v1, v4}, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->setGlobalMatrix([F)V

    .line 359
    iget-object v1, v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mAnimation:Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    const/16 v5, 0x302

    .line 363
    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 364
    iget-object v6, v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mAnimationCanvas:Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationCanvas;

    iget-object v7, v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mAnimationElapsedTimeCount:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    .line 366
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->elapsedTimeMillis()J

    move-result-wide v7

    .line 364
    invoke-interface {v1, v6, v7, v8}, Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;->draw(Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationCanvas;J)Z

    move-result v1

    xor-int/2addr v4, v1

    const/16 v1, 0x303

    .line 367
    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 373
    :cond_3
    iget-object v1, v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_5

    .line 375
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->clearSurface()V

    .line 376
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 377
    iget-object v2, v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mAnimationElapsedTimeCount:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->stop()V

    .line 378
    iget-object v2, v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSetInvisibleTask:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->post(Ljava/lang/Runnable;)Z

    .line 379
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_4
    return-void

    :cond_5
    if-eqz v4, :cond_6

    .line 385
    iget-object v1, v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mAnimationElapsedTimeCount:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->stop()V

    .line 386
    iget-object v1, v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSetInvisibleTask:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method

.method private enableGlobalFunctions()Z
    .locals 1

    const/16 p0, 0xbe2

    .line 285
    invoke-static {p0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p0, 0x302

    const/16 v0, 0x303

    .line 286
    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/16 p0, 0xb71

    .line 289
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

    .line 400
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "releaseAllShaders() : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 401
    :cond_0
    iget v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSimpleFrameShader:I

    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->deleteShaderProgram(I)V

    const/4 v0, 0x0

    .line 402
    iput v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSimpleFrameShader:I

    .line 403
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

    .line 265
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->enableGlobalFunctions()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "render():[Enable functions failed.]"

    .line 266
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void

    .line 270
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->doRender()V

    .line 272
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->disableGlobalFunctions()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "render():[Disable functions failed.]"

    .line 273
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void

    :cond_1
    return-void
.end method

.method private setupDynamicConfig(II)V
    .locals 1

    const/4 p0, -0x1

    const/4 v0, 0x0

    if-ge p2, p1, :cond_0

    sub-int p2, p1, p2

    .line 229
    div-int/lit8 p2, p2, 0x2

    mul-int/2addr p0, p2

    .line 230
    invoke-static {v0, p0, p1, p1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    goto :goto_0

    :cond_0
    sub-int p1, p2, p1

    .line 252
    div-int/lit8 p1, p1, 0x2

    mul-int/2addr p0, p1

    .line 253
    invoke-static {p0, v0, p2, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->render()V

    return-void
.end method

.method public onPause()V
    .locals 4

    .line 318
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mAnimation:Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_0

    .line 319
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x64

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onPause() : timed-out"

    .line 323
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 326
    :catch_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onPause() : mCountDownLatch.await() interrupted"

    .line 327
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 331
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->onPause()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3

    .line 128
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceChanged() : width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 130
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

    .line 166
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "release()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 167
    :cond_0
    new-instance v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$ReleaseTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$ReleaseTask;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setupRelatedToSurfaceSize()V
    .locals 2

    .line 186
    new-instance v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start(Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;)V
    .locals 1

    .line 147
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "start()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSetInvisibleTask:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 150
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mAnimation:Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;

    .line 151
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mAnimationElapsedTimeCount:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->start()V

    const/4 p1, 0x0

    .line 152
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->setVisibility(I)V

    const/4 p1, 0x1

    .line 153
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->setRenderMode(I)V

    .line 154
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->requestRender()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 159
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "surfaceDestroyed() : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->release()V

    .line 161
    invoke-super {p0, p1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 162
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string p0, "surfaceDestroyed() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

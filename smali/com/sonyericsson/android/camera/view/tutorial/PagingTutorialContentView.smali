.class public Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;
.super Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;
.source "PagingTutorialContentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$SideSenseTutorialContent;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PredictiveLaunchTutorialContent;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$VideoFusionTutorialContent;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ManualFusionTutorialContent;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$HandShutterTutorialContent;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$EyeGuideTutorialContent;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$DualCameraTutorialContent;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$SuperSlowMoreOptionsTutorialContent;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$SuperSlowTutorialContent;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$StandardSlowTutorialContent;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$OneShotSlowTutorialContent;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PageContentsAdapter;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;
    }
.end annotation


# static fields
.field private static final REVERSE_DEGREE:F = 180.0f

.field private static final TAG:Ljava/lang/String; = "PagingTutorialContentView"

.field private static final TRACE:Z = false

.field private static final VIDEO_ASPECT_RATIO_LANDSCAPE:D = 0.75

.field private static final VIDEO_ASPECT_RATIO_PORTRAIT:D = 0.816


# instance fields
.field private mIcon:Landroid/widget/ImageView;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNavigator:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

.field mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private final mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mVideo:Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;-><init>(Landroid/content/Context;)V

    .line 216
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 456
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$4;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$4;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 216
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 456
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$4;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$4;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 216
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 456
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$4;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$4;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getContent()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroid/widget/ImageView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroid/media/MediaPlayer;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mIcon:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mVideo:Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mVideo:Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->prepareTutorialVideoView(Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;I)Landroid/view/TextureView$SurfaceTextureListener;
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->createSurfaceTextureListener(I)Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->clearMediaPlayer()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method static synthetic access$602(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->createMediaPlayer(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->resume()V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->suspend()V

    return-void
.end method

.method private clearMediaPlayer()V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 428
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 429
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 430
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method private createMediaPlayer(I)V
    .locals 2

    .line 396
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->clearMediaPlayer()V

    .line 399
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getContent()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mMediaContentsResourceId:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;

    .line 401
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;->getId()I

    move-result p1

    invoke-static {v0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 402
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mVideo:Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 403
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 402
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->setVideoAspectRatio(F)V

    .line 405
    new-instance p1, Landroid/view/Surface;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 406
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 407
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 408
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 409
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$3;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method private createSurfaceTextureListener(I)Landroid/view/TextureView$SurfaceTextureListener;
    .locals 1

    .line 327
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$2;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$2;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;I)V

    return-object v0
.end method

.method private getContent()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;
    .locals 0

    .line 529
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    check-cast p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;

    return-object p0
.end method

.method private prepareTutorialVideoView(Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;)V
    .locals 6

    .line 361
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 362
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getContent()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;

    move-result-object p0

    .line 365
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 368
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v1, 0x3fea1cac083126e9L    # 0.816

    goto :goto_0

    :cond_0
    const-wide/high16 v1, 0x3fe8000000000000L    # 0.75

    .line 373
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->isPortrait()Z

    move-result p0

    if-eqz p0, :cond_1

    int-to-double v3, v0

    mul-double/2addr v3, v1

    double-to-int p0, v3

    move v5, v0

    move v0, p0

    move p0, v5

    goto :goto_1

    :cond_1
    int-to-double v3, v0

    mul-double/2addr v3, v1

    double-to-int p0, v3

    .line 381
    :goto_1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 383
    iput p0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 384
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 386
    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private resume()V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 440
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method private suspend()V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method private static trace(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 62
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .line 210
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->onDetachedFromWindow()V

    .line 213
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->clearOnPageChangeListeners()V

    return-void
.end method

.method protected onUpdateViewContent()V
    .locals 6

    .line 165
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getContent()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0901aa

    .line 171
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mPager:Landroid/support/v4/view/ViewPager;

    .line 172
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;

    new-instance v3, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PageContentsAdapter;

    invoke-direct {v3, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PageContentsAdapter;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;)V

    invoke-direct {v2, v3}, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;-><init>(Landroid/support/v4/view/PagerAdapter;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const v1, 0x7f0901a9

    .line 174
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 176
    sget-object v2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$5;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$PagingTutorialContentView$TutorialNavigatorType:[I

    iget-object v3, v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mNavigatorType:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f0c0063

    invoke-static {v2, v5, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mNavigator:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f0c0060

    invoke-static {v2, v5, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mNavigator:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    .line 188
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mNavigator:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 190
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mNavigator:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    new-instance v2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->setViewController(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;)V

    .line 191
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mNavigator:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mPageResources:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->setPageSize(I)V

    .line 194
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 196
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mNavigator:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->setRotationY(F)V

    .line 200
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mNavigator:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    iget v2, v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mPageIndex:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->onPageSelected(I)V

    .line 201
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mPager:Landroid/support/v4/view/ViewPager;

    iget v0, v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mPageIndex:I

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 204
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mNavigator:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.class public Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;
.super Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;
.source "PagingTutorialContentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PageContentsAdapter;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ValueArrayAdapter;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureListContent;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;
    }
.end annotation


# static fields
.field private static final REVERSE_DEGREE:F = 180.0f

.field private static final TAG:Ljava/lang/String; = "PagingTutorialContentView"

.field private static final TRACE:Z = false

.field private static final VIDEO_ASPECT_RATIO_PORTRAIT:D = 0.816


# instance fields
.field private mIcon:Landroid/widget/ImageView;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNavigator:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

.field mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private final mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mPager:Landroidx/viewpager/widget/ViewPager;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mVideo:Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIcon(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMediaPlayer(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPager(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurfaceTexture(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideo(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mVideo:Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIcon(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mIcon:Landroid/widget/ImageView;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSurfaceTexture(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVideo(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mVideo:Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearMediaPlayer(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->clearMediaPlayer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateMediaPlayer(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->createMediaPlayer(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateSurfaceTextureListener(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;I)Landroid/view/TextureView$SurfaceTextureListener;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->createSurfaceTextureListener(I)Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetContent(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getContent()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mprepareTutorialVideoView(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->prepareTutorialVideoView(Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresume(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->resume()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msuspend(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->suspend()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 158
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;-><init>(Landroid/content/Context;)V

    .line 254
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 490
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$4;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$4;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 166
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 254
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 490
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$4;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$4;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 162
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 254
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 490
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$4;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$4;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method private clearMediaPlayer()V
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 462
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 463
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 464
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method private createMediaPlayer(I)V
    .locals 2

    .line 430
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->clearMediaPlayer()V

    .line 433
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getContent()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mMediaContentsResourceId:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;

    .line 435
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;->getId()I

    move-result p1

    invoke-static {v0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 436
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mVideo:Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;

    .line 437
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 436
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->setVideoAspectRatio(F)V

    .line 439
    new-instance p1, Landroid/view/Surface;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 440
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 441
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 442
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 443
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$3;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method private createSurfaceTextureListener(I)Landroid/view/TextureView$SurfaceTextureListener;
    .locals 1

    .line 365
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$2;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$2;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;I)V

    return-object v0
.end method

.method private getContent()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;
    .locals 0

    .line 563
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    check-cast p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;

    return-object p0
.end method

.method private prepareTutorialVideoView(Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;)V
    .locals 4

    .line 402
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getContent()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->isPortrait()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 406
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 409
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    .line 410
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x3fea1cac083126e9L    # 0.816

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 415
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 417
    iput p0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 418
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 420
    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private resume()V
    .locals 0

    .line 473
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p0, :cond_0

    .line 474
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method private suspend()V
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method private static trace(Ljava/lang/String;)V
    .locals 0

    .line 73
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .line 248
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->onDetachedFromWindow()V

    .line 251
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->clearOnPageChangeListeners()V

    return-void
.end method

.method protected onUpdateViewContent()V
    .locals 12

    .line 171
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getContent()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f090215

    .line 177
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 178
    new-instance v2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PageContentsAdapter;

    invoke-direct {v2, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PageContentsAdapter;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const v1, 0x7f090214

    .line 180
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 182
    sget-object v2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$5;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$PagingTutorialContentView$TutorialNavigatorType:[I

    iget-object v3, v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mNavigatorType:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_4

    const/4 v5, 0x2

    const v6, 0x7f0c0047

    if-eq v2, v5, :cond_2

    .line 214
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mTutorialTypes:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mTutorialTypes:Ljava/util/List;

    sget-object v5, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->TRIPLE_CAMERA:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 215
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mNavigator:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    .line 218
    move-object v4, v2

    check-cast v4, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;

    const v4, 0x7f0f02f2

    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->changeGotItButtonMessage(I)V

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f0c0079

    invoke-static {v2, v5, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mNavigator:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v5, 0x10102eb

    filled-new-array {v5}, [I

    move-result-object v5

    .line 189
    invoke-virtual {v2, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 190
    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    .line 197
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v8, "dimen"

    const-string v9, "android"

    .line 198
    const-string/jumbo v10, "status_bar_height"

    invoke-virtual {v5, v10, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_3

    .line 200
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 203
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 204
    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v11, v2

    add-int/2addr v11, v7

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 206
    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mNavigator:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    goto :goto_0

    .line 184
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f0c0076

    invoke-static {v2, v5, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mNavigator:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    .line 226
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mNavigator:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 228
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mNavigator:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    new-instance v2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->setViewController(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;)V

    .line 229
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mNavigator:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mPageResources:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->setPageSize(I)V

    .line 232
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v3, :cond_5

    .line 234
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mNavigator:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->setRotationY(F)V

    .line 238
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mNavigator:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    iget v2, v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mPageIndex:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->onPageSelected(I)V

    .line 239
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mPager:Landroidx/viewpager/widget/ViewPager;

    iget v0, v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mPageIndex:I

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mNavigator:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mPager:Landroidx/viewpager/widget/ViewPager;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

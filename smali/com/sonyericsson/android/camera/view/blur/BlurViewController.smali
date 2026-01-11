.class public Lcom/sonyericsson/android/camera/view/blur/BlurViewController;
.super Ljava/lang/Object;
.source "BlurViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/blur/BlurViewController$AnimationCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BlurViewController"


# instance fields
.field private mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

.field private mBlurBackgroundView:Lcom/sonyericsson/android/camera/view/blur/BlurBackgroundView;

.field private mBlurImageController:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

.field private mBlurView:Lcom/sonyericsson/android/camera/view/blur/BlurView;

.field private mBlurViewContainer:Landroid/view/View;

.field private mFadeInAnimation:Landroid/view/animation/Animation;

.field private final mGetFrameTask:Ljava/lang/Runnable;

.field private mHideBlurViewRunnable:Ljava/lang/Runnable;

.field private mImageCallback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;

.field private mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

.field protected mIsAnimationEnd:Z

.field private mIsFirstFrame:Z

.field private mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/view/blur/BlurViewController;)Lcom/sonyericsson/android/camera/CameraActivity;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBlurImageController(Lcom/sonyericsson/android/camera/view/blur/BlurViewController;)Lcom/sonyericsson/android/camera/view/blur/BlurImageController;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurImageController:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHideBlurViewRunnable(Lcom/sonyericsson/android/camera/view/blur/BlurViewController;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mHideBlurViewRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImageCallback(Lcom/sonyericsson/android/camera/view/blur/BlurViewController;)Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mImageCallback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImageRetriever(Lcom/sonyericsson/android/camera/view/blur/BlurViewController;)Lcom/sonyericsson/android/camera/device/ImageRetriever;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFirstFrame(Lcom/sonyericsson/android/camera/view/blur/BlurViewController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mIsFirstFrame:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWorker(Lcom/sonyericsson/android/camera/view/blur/BlurViewController;)Lcom/sonyericsson/android/camera/util/BackgroundWorker;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsFirstFrame(Lcom/sonyericsson/android/camera/view/blur/BlurViewController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mIsFirstFrame:Z

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mIsAnimationEnd:Z

    .line 38
    new-instance v0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/blur/BlurViewController$1;-><init>(Lcom/sonyericsson/android/camera/view/blur/BlurViewController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mGetFrameTask:Ljava/lang/Runnable;

    .line 94
    new-instance v0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/blur/BlurViewController$2;-><init>(Lcom/sonyericsson/android/camera/view/blur/BlurViewController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mImageCallback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;

    .line 111
    new-instance v0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/blur/BlurViewController$3;-><init>(Lcom/sonyericsson/android/camera/view/blur/BlurViewController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mHideBlurViewRunnable:Ljava/lang/Runnable;

    .line 58
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 59
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getStreamingImageRetriever()Lcom/sonyericsson/android/camera/device/ImageRetriever;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    .line 60
    new-instance p1, Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    const-string v0, "BlurViewController"

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    .line 61
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->init()V

    return-void
.end method

.method private cancelFadeInAnimation()V
    .locals 2

    .line 189
    const-string v0, "BlurViewController"

    const-string v1, "cancelFadeInAnimation "

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/BlurLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mFadeInAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mIsAnimationEnd:Z

    if-nez p0, :cond_0

    .line 191
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_0
    return-void
.end method

.method private getPreviewImage()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mGetFrameTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private init()V
    .locals 3

    .line 65
    const-string v0, "init"

    const-string v1, "BlurViewController"

    invoke-static {v1, v0}, Lcom/sonyericsson/cameracommon/utility/BlurLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurViewContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 67
    const-string p0, "Already init, return"

    invoke-static {v1, p0}, Lcom/sonyericsson/cameracommon/utility/BlurLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0029

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurViewContainer:Landroid/view/View;

    const v1, 0x7f0900fc

    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/blur/BlurView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurView:Lcom/sonyericsson/android/camera/view/blur/BlurView;

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurViewContainer:Landroid/view/View;

    const v1, 0x7f0900fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/blur/BlurBackgroundView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurBackgroundView:Lcom/sonyericsson/android/camera/view/blur/BlurBackgroundView;

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurViewContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/16 v1, 0x438

    const/16 v2, 0x780

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 76
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurViewContainer:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    new-instance v0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurImageController:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    return-void
.end method

.method private showFadeInAnimation()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurView:Lcom/sonyericsson/android/camera/view/blur/BlurView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    new-instance v2, Lcom/sonyericsson/android/camera/view/blur/BlurViewController$4;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/view/blur/BlurViewController$4;-><init>(Lcom/sonyericsson/android/camera/view/blur/BlurViewController;)V

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->startShowAnimation(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/blur/BlurViewController$AnimationCallback;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mFadeInAnimation:Landroid/view/animation/Animation;

    .line 185
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurView:Lcom/sonyericsson/android/camera/view/blur/BlurView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->setVisibility(I)V

    return-void
.end method

.method private updateBlurViewContainerLayout(I)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurViewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x438

    const/16 v3, 0x780

    if-ne p1, v1, :cond_0

    .line 150
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 151
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 153
    :cond_0
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 154
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 156
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurViewContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private updateView()V
    .locals 3

    .line 161
    const-string v0, "BlurViewController"

    const-string/jumbo v1, "updateView"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/BlurLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 164
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->updateBlurViewContainerLayout(I)Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_0

    .line 166
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurView:Lcom/sonyericsson/android/camera/view/blur/BlurView;

    invoke-virtual {v2, v0, v1}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->updateLayout(Landroid/graphics/Rect;I)V

    .line 167
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurBackgroundView:Lcom/sonyericsson/android/camera/view/blur/BlurBackgroundView;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/blur/BlurBackgroundView;->updateLayout(Landroid/graphics/Rect;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 212
    const-string v0, "BlurViewController"

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/BlurLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->hideBlurView()V

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurImageController:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->recycleAll()V

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mGetFrameTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hideBlurView()V
    .locals 2

    .line 199
    const-string v0, "BlurViewController"

    const-string v1, "hideBlurView"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/BlurLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurImageController:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->setBlurViewShowing(Z)V

    .line 201
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->cancelFadeInAnimation()V

    .line 202
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurViewContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurView:Lcom/sonyericsson/android/camera/view/blur/BlurView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurView:Lcom/sonyericsson/android/camera/view/blur/BlurView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 205
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurImageController:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->resumeThread()V

    return-void
.end method

.method public showBlurView()Z
    .locals 5

    .line 122
    const-string v0, "BlurViewController"

    const-string/jumbo v1, "showBlurView"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/BlurLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurImageController:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->isFirstBlurBitmapReady()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurImageController:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->setBlurViewShowing(Z)V

    .line 125
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurImageController:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->triggerThreadPause()V

    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->updateView()V

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurImageController:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurView:Lcom/sonyericsson/android/camera/view/blur/BlurView;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->getAspect()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->getBlurImage(I)Lcom/sonyericsson/android/camera/view/blur/BlurImage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurView:Lcom/sonyericsson/android/camera/view/blur/BlurView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/blur/BlurImage;->getBlurBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 130
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurBackgroundView:Lcom/sonyericsson/android/camera/view/blur/BlurBackgroundView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/blur/BlurImage;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sonyericsson/android/camera/view/blur/BlurBackgroundView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurViewContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->showFadeInAnimation()V

    return v2

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurImageController:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->setFirstBlurBitmapReady(Z)V

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurImageController:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->setBlurViewShowing(Z)V

    .line 137
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurImageController:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->resumeThread()V

    return v1

    .line 142
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurImageController:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->setBlurViewShowing(Z)V

    return v1
.end method

.method public startBlur()V
    .locals 2

    .line 81
    const-string v0, "BlurViewController"

    const-string/jumbo v1, "startBlur"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/BlurLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mIsFirstFrame:Z

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mBlurImageController:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->startBlurThread()V

    .line 84
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->getPreviewImage()V

    return-void
.end method

.class public Lcom/sonyericsson/android/camera/view/InstantViewer;
.super Landroid/widget/FrameLayout;
.source "InstantViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_FAST_VIEW_MODE_LAUNCHED:Ljava/lang/String; = "com.sonyericsson.album.intent.action.FAST_VIEW_MODE_LAUNCHED"

.field public static final TAG:Ljava/lang/String; = "InstantViewer"


# instance fields
.field private mAlbumBmp:Landroid/graphics/Bitmap;

.field private mAlbumNotifyReceiver:Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;

.field private mAlbumPreloader:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

.field private mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

.field private mIsOpened:Z

.field protected mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

.field private mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

.field private mOrientedPictureSize:Landroid/graphics/Rect;

.field protected mPictureImage:Landroid/widget/ImageView;

.field private mRequestId:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 60
    iput p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mRequestId:I

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mIsOpened:Z

    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 68
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumBmp:Landroid/graphics/Bitmap;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mOrientedPictureSize:Landroid/graphics/Rect;

    .line 75
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumNotifyReceiver:Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;

    .line 84
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/CameraActivity;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 60
    iput p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mRequestId:I

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mIsOpened:Z

    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 68
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumBmp:Landroid/graphics/Bitmap;

    .line 72
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mOrientedPictureSize:Landroid/graphics/Rect;

    .line 75
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumNotifyReceiver:Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;

    .line 95
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/CameraActivity;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 60
    iput p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mRequestId:I

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mIsOpened:Z

    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 68
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumBmp:Landroid/graphics/Bitmap;

    .line 72
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mOrientedPictureSize:Landroid/graphics/Rect;

    .line 75
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumNotifyReceiver:Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;

    .line 107
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/CameraActivity;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    return-void
.end method

.method private backToViewFinder()V
    .locals 0

    .line 536
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->hide()V

    return-void
.end method

.method private hideScreen()V
    .locals 4

    .line 451
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hide: visibility: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 453
    :cond_0
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/InstantViewer;->setVisible(Z)V

    return-void
.end method

.method public static launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ZLcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;)V
    .locals 7

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    .line 181
    invoke-static/range {v0 .. v6}, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher;->launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZZLcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;)V

    return-void
.end method

.method public static launchAlbumSecure(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;[J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;",
            "[J)V"
        }
    .end annotation

    .line 197
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher;->launchAlbumSecure(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;[J)V

    return-void
.end method

.method private registerAlbumNotifyReceiver()V
    .locals 3

    .line 555
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumNotifyReceiver:Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;

    if-eqz v0, :cond_0

    .line 556
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->unregisterAlbumNotifyReceiver()V

    .line 560
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string v0, "register AlbumNotifyReceiver"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    if-eqz v0, :cond_2

    .line 562
    new-instance v0, Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;-><init>(Lcom/sonyericsson/android/camera/view/InstantViewer;Lcom/sonyericsson/android/camera/view/InstantViewer$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumNotifyReceiver:Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;

    .line 563
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumNotifyReceiver:Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sonyericsson.album.intent.action.FAST_VIEW_MODE_LAUNCHED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    return-void
.end method

.method private setVisible(Z)V
    .locals 4

    .line 457
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVisible: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    .line 465
    :goto_0
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/InstantViewer;->setVisibility(I)V

    return-void
.end method

.method private setup(Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    return-void
.end method

.method private setupScreen(Landroid/app/Activity;Landroid/net/Uri;[BLjava/lang/String;Ljava/lang/String;IIZLandroid/graphics/Bitmap;)Z
    .locals 5

    .line 388
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupScreen() uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", picture imageData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const-string v4, "null"

    goto :goto_0

    .line 389
    :cond_0
    invoke-static {p3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", picture videoPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", picture mime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", reviewOrientation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, ", pictureOrientation: "

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, " ,isFront:"

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p6, " ,dispBmp:"

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    aput-object p6, v0, v1

    .line 388
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    const/4 p6, 0x0

    if-eqz p9, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 403
    new-instance p3, Lcom/sonyericsson/cameracommon/storage/ImageLoader;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4, p2, p7}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    invoke-virtual {p3}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->load()Landroid/graphics/Bitmap;

    move-result-object p9

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    .line 405
    new-instance p4, Lcom/sonyericsson/cameracommon/storage/ImageLoader;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->getContext()Landroid/content/Context;

    move-result-object p6

    invoke-direct {p4, p6, p3, p7}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;-><init>(Landroid/content/Context;[BI)V

    invoke-virtual {p4}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->load()Landroid/graphics/Bitmap;

    move-result-object p9

    goto :goto_1

    :cond_4
    if-eqz p4, :cond_6

    const-string p3, "video/mp4"

    .line 406
    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    const-string p3, "video/3gpp"

    .line 407
    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 408
    :cond_5
    invoke-static {p4}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailFactory;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p9

    goto :goto_1

    :cond_6
    move-object p9, p6

    :goto_1
    if-nez p9, :cond_7

    const-string p0, "Cannot create the image."

    .line 412
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v1

    .line 416
    :cond_7
    invoke-virtual {p9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p3, p4

    .line 417
    invoke-static {p1, p3}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceRect(Landroid/content/Context;F)Landroid/graphics/Rect;

    move-result-object p1

    .line 418
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mOrientedPictureSize:Landroid/graphics/Rect;

    const-string p1, "image/jpeg"

    .line 422
    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 423
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mOrientedPictureSize:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 424
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mOrientedPictureSize:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    goto :goto_2

    .line 426
    :cond_8
    invoke-virtual {p9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 427
    invoke-virtual {p9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    .line 430
    :goto_2
    invoke-static {p9, p1, p3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 435
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mPictureImage:Landroid/widget/ImageView;

    sget-object p4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 436
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mPictureImage:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 439
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mUri:Landroid/net/Uri;

    return v2
.end method

.method private showScreen()V
    .locals 5

    .line 445
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show: visibility: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 447
    :cond_0
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/InstantViewer;->setVisible(Z)V

    return-void
.end method

.method private unregisterAlbumNotifyReceiver()V
    .locals 2

    .line 569
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumNotifyReceiver:Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;

    if-eqz v0, :cond_2

    .line 571
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "unregister AlbumNotifyReceiver"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    if-eqz v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumNotifyReceiver:Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    const/4 v0, 0x0

    .line 575
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumNotifyReceiver:Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;

    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mUri:Landroid/net/Uri;

    const/4 v1, -0x1

    .line 163
    iput v1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mRequestId:I

    .line 165
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 167
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumBmp:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public clearScreen()V
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mPictureImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 526
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 528
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumBmp:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public createAlbumPreloader()V
    .locals 2

    .line 600
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumPreloader:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

    if-nez v0, :cond_0

    .line 601
    new-instance v0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumPreloader:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

    .line 602
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumPreloader:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->prewarmAlbum()V

    :cond_0
    return-void
.end method

.method public getRequestId()I
    .locals 0

    .line 155
    iget p0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mRequestId:I

    return p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public hide()V
    .locals 3

    .line 330
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "hide()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 332
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getRequestedOrientation()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    .line 334
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v0, v2, :cond_1

    .line 336
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setRequestedOrientation(I)V

    .line 345
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->clearFocus()V

    .line 346
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->hideScreen()V

    .line 347
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->clearScreen()V

    .line 348
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mIsOpened:Z

    .line 350
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    if-eqz v0, :cond_3

    .line 351
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;->onReviewWindowClose()V

    .line 354
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->unregisterAlbumNotifyReceiver()V

    return-void
.end method

.method public isAlbumBitmapSetting()Z
    .locals 0

    .line 382
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumBmp:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOpened()Z
    .locals 0

    .line 545
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mIsOpened:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 203
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onAttachedToWindow."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 204
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/high16 v0, -0x1000000

    .line 208
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->setBackgroundColor(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 213
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onDetachedFromWindow."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    .line 217
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 124
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onFinishInflate."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 125
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090029

    .line 128
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mPictureImage:Landroid/widget/ImageView;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 470
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 473
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCode(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object p1

    .line 475
    sget-object v0, Lcom/sonyericsson/android/camera/view/InstantViewer$1;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    return v2

    :pswitch_0
    return v2

    .line 483
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 484
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->backToViewFinder()V

    :cond_1
    :pswitch_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 505
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    new-array p2, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v0

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/16 p2, 0x52

    if-eq p1, p2, :cond_1

    return v0

    .line 511
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->backToViewFinder()V

    return v1
.end method

.method public open(Landroid/net/Uri;Ljava/lang/String;IIZLcom/sonyericsson/cameracommon/review/ReviewWindowListener;I)Z
    .locals 13

    move-object v10, p0

    .line 234
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_0

    new-array v0, v12, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open() 1 mimetype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, p2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v5, p2

    :goto_0
    move-object/from16 v0, p6

    .line 237
    iput-object v0, v10, Lcom/sonyericsson/android/camera/view/InstantViewer;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    move/from16 v0, p7

    .line 239
    iput v0, v10, Lcom/sonyericsson/android/camera/view/InstantViewer;->mRequestId:I

    if-eqz p1, :cond_1

    .line 243
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 244
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->EXTENDED_PHOTO_STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 248
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->EXTENDED_PHOTO_STORAGE_URI:Landroid/net/Uri;

    .line 249
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->STANDARD_PHOTO_STORAGE_URI:Landroid/net/Uri;

    .line 250
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 248
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, p1

    .line 253
    :goto_2
    iget-object v1, v10, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v9, v10, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumBmp:Landroid/graphics/Bitmap;

    move-object v0, v10

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/android/camera/view/InstantViewer;->setupScreen(Landroid/app/Activity;Landroid/net/Uri;[BLjava/lang/String;Ljava/lang/String;IIZLandroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 255
    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/view/InstantViewer;->show()V

    .line 256
    iget-object v0, v10, Lcom/sonyericsson/android/camera/view/InstantViewer;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    if-eqz v0, :cond_3

    .line 257
    iget-object v0, v10, Lcom/sonyericsson/android/camera/view/InstantViewer;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;->onReviewWindowOpen()V

    :cond_3
    return v12

    :cond_4
    return v11
.end method

.method public open([BLjava/lang/String;Ljava/lang/String;IIZLcom/sonyericsson/cameracommon/review/ReviewWindowListener;I)Z
    .locals 13

    move-object v10, p0

    .line 280
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_0

    new-array v0, v12, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open() 2 mimetype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v5, p3

    :goto_0
    move-object/from16 v0, p7

    .line 282
    iput-object v0, v10, Lcom/sonyericsson/android/camera/view/InstantViewer;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    move/from16 v0, p8

    .line 284
    iput v0, v10, Lcom/sonyericsson/android/camera/view/InstantViewer;->mRequestId:I

    .line 286
    iget-object v1, v10, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const/4 v2, 0x0

    iget-object v9, v10, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumBmp:Landroid/graphics/Bitmap;

    move-object v0, v10

    move-object v3, p1

    move-object v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/android/camera/view/InstantViewer;->setupScreen(Landroid/app/Activity;Landroid/net/Uri;[BLjava/lang/String;Ljava/lang/String;IIZLandroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/view/InstantViewer;->show()V

    .line 289
    iget-object v0, v10, Lcom/sonyericsson/android/camera/view/InstantViewer;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, v10, Lcom/sonyericsson/android/camera/view/InstantViewer;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;->onReviewWindowOpen()V

    :cond_1
    return v12

    :cond_2
    return v11
.end method

.method public prepareBitmap(Landroid/net/Uri;)V
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumPreloader:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

    if-eqz v0, :cond_0

    .line 610
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumPreloader:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->prepareBitmap(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public releaseAlbumPreloader()V
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumPreloader:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumPreloader:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->release()V

    const/4 v0, 0x0

    .line 622
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumPreloader:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

    :cond_0
    return-void
.end method

.method public setAlbumBitmap(Landroid/net/Uri;)Z
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 365
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumBmp:Landroid/graphics/Bitmap;

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumPreloader:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumPreloader:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->getBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumBmp:Landroid/graphics/Bitmap;

    .line 374
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumBmp:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public setUiOrientation(I)V
    .locals 3

    .line 550
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUiOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public setup(Lcom/sonyericsson/android/camera/setting/UserSettings;)V
    .locals 1

    .line 115
    new-instance v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    invoke-direct {v0, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;-><init>(Lcom/sonyericsson/android/camera/setting/UserSettings;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->setup(Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;)V

    return-void
.end method

.method public show()V
    .locals 4

    .line 301
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "show()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x2

    .line 304
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 305
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 307
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLayoutOrientation()Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    move-result-object v0

    .line 308
    sget-object v2, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ReverseLandscape:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    const/4 v3, 0x1

    if-ne v2, v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/CameraActivity;->setRequestedOrientation(I)V

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setRequestedOrientation(I)V

    .line 315
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mIsOpened:Z

    .line 317
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->showScreen()V

    .line 318
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->requestFocus()Z

    .line 320
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setViewerLaunched()V

    .line 323
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->registerAlbumNotifyReceiver()V

    return-void
.end method

.class public Lcom/sonyericsson/android/camera/view/blur/BlurImageController;
.super Ljava/lang/Object;
.source "BlurImageController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/blur/BlurImageController$PreviewData;,
        Lcom/sonyericsson/android/camera/view/blur/BlurImageController$BlurImageThread;
    }
.end annotation


# static fields
.field private static final IMAGE_QUALITY:I = 0x5a

.field private static final RADIUS:I = 0x28

.field private static final SAMPLE_SIZE:I = 0x4

.field private static final SAMPLE_SIZE_MMS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BlurImageController"

.field private static mOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field private mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

.field private mBlurImage:Lcom/sonyericsson/android/camera/view/blur/BlurImage;

.field private mBlurImageLock:Ljava/lang/Object;

.field private mBlurImageThread:Ljava/lang/Thread;

.field private mCurrentAspect:I

.field private mIsBlurViewShowing:Z

.field private mIsFirstBlurBitmapReady:Z

.field private mIsProcessing:Z

.field private volatile mNeedPause:Z

.field private mObject:Ljava/lang/Object;

.field private mPreviewData:Lcom/sonyericsson/android/camera/view/blur/BlurImageController$PreviewData;

.field private mRunning:Z

.field private mStackBlurManager:Lcom/sonyericsson/android/camera/view/blur/StackBlurManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsProcessing(Lcom/sonyericsson/android/camera/view/blur/BlurImageController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mIsProcessing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewData(Lcom/sonyericsson/android/camera/view/blur/BlurImageController;)Lcom/sonyericsson/android/camera/view/blur/BlurImageController$PreviewData;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mPreviewData:Lcom/sonyericsson/android/camera/view/blur/BlurImageController$PreviewData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRunning(Lcom/sonyericsson/android/camera/view/blur/BlurImageController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mRunning:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsProcessing(Lcom/sonyericsson/android/camera/view/blur/BlurImageController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mIsProcessing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgenerateBlurImage(Lcom/sonyericsson/android/camera/view/blur/BlurImageController;)[Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->generateBlurImage()[Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misBlurViewShowing(Lcom/sonyericsson/android/camera/view/blur/BlurImageController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->isBlurViewShowing()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mpauseThread(Lcom/sonyericsson/android/camera/view/blur/BlurImageController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->pauseThread()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrecycleBitmap(Lcom/sonyericsson/android/camera/view/blur/BlurImageController;[Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->recycleBitmap([Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetBlurImageData(Lcom/sonyericsson/android/camera/view/blur/BlurImageController;[Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->setBlurImageData([Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mOptions:Landroid/graphics/BitmapFactory$Options;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mObject:Ljava/lang/Object;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mBlurImageLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$PreviewData;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$PreviewData;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mPreviewData:Lcom/sonyericsson/android/camera/view/blur/BlurImageController$PreviewData;

    const/16 v0, 0xb1

    .line 53
    iput v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mCurrentAspect:I

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mIsBlurViewShowing:Z

    .line 70
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 71
    new-instance p1, Lcom/sonyericsson/android/camera/view/blur/StackBlurManager;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/blur/StackBlurManager;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mStackBlurManager:Lcom/sonyericsson/android/camera/view/blur/StackBlurManager;

    .line 72
    new-instance p1, Lcom/sonyericsson/android/camera/view/blur/BlurImage;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/blur/BlurImage;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mBlurImage:Lcom/sonyericsson/android/camera/view/blur/BlurImage;

    return-void
.end method

.method private clearTrigger()V
    .locals 1

    const/4 v0, 0x0

    .line 216
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mNeedPause:Z

    return-void
.end method

.method public static convertBmp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 313
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 314
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 316
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 317
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    move-object v0, p0

    .line 318
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 319
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 320
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-object v0
.end method

.method private generateBlurImage()[Landroid/graphics/Bitmap;
    .locals 4

    .line 223
    const-string v0, "generateBlurImage"

    const-string v1, "BlurImageController"

    invoke-static {v1, v0}, Lcom/sonyericsson/cameracommon/utility/BlurLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 224
    new-array v0, v0, [Landroid/graphics/Bitmap;

    .line 226
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 227
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mPreviewData:Lcom/sonyericsson/android/camera/view/blur/BlurImageController$PreviewData;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$PreviewData;->getData()[B

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->yuv420spToBitmap([BLandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 228
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->getBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 231
    const-string v0, "generateBlurImage failed"

    invoke-static {v1, v0}, Lcom/sonyericsson/cameracommon/utility/BlurLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getAspect()I
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/2addr v1, v0

    iput v1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mCurrentAspect:I

    .line 127
    :cond_0
    iget p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mCurrentAspect:I

    return p0
.end method

.method private getBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .line 238
    const-string v0, "BlurImageController"

    const-string v1, "getBlurBitmap"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/BlurLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mStackBlurManager:Lcom/sonyericsson/android/camera/view/blur/StackBlurManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/blur/StackBlurManager;->setOriginBitmap(Landroid/graphics/Bitmap;)V

    .line 240
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mStackBlurManager:Lcom/sonyericsson/android/camera/view/blur/StackBlurManager;

    const/16 p1, 0x28

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/blur/StackBlurManager;->process(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private isBlurViewShowing()Z
    .locals 1

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mIsBlurViewShowing:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 66
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private pauseThread()V
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mNeedPause:Z

    if-eqz v1, :cond_0

    .line 177
    const-string v1, "BlurImageController"

    const-string v2, "pauseThread"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/BlurLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 181
    :try_start_2
    const-string v2, "BlurImageController"

    const-string v3, "pauseThread failed"

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/BlurLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 185
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private recycleBitmap([Landroid/graphics/Bitmap;)V
    .locals 3

    .line 167
    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setBlurImageData([Landroid/graphics/Bitmap;I)V
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mBlurImageLock:Ljava/lang/Object;

    monitor-enter v0

    .line 248
    :try_start_0
    const-string v1, "BlurImageController"

    const-string v2, "setBlurImageData"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/BlurLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mBlurImage:Lcom/sonyericsson/android/camera/view/blur/BlurImage;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/blur/BlurImage;->recycle()V

    .line 250
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mBlurImage:Lcom/sonyericsson/android/camera/view/blur/BlurImage;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/blur/BlurImage;->setPreviewBitmap(Landroid/graphics/Bitmap;)V

    .line 251
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mBlurImage:Lcom/sonyericsson/android/camera/view/blur/BlurImage;

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/view/blur/BlurImage;->setBlurBitmap(Landroid/graphics/Bitmap;)V

    .line 252
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mBlurImage:Lcom/sonyericsson/android/camera/view/blur/BlurImage;

    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/blur/BlurImage;->setAspect(I)V

    .line 253
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static yuv420spToBitmap([BLandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 7

    .line 286
    new-instance v6, Landroid/graphics/YuvImage;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 287
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v5, 0x0

    const/16 v2, 0x11

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 288
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x5a

    .line 289
    invoke-virtual {v6, p1, v0, p0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 290
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 291
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 292
    sget-object p1, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput v1, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 294
    :cond_0
    sget-object p1, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x4

    iput v1, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 296
    :goto_0
    array-length p1, v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 299
    :try_start_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 301
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 303
    :goto_1
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->convertBmp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getBlurImage(I)Lcom/sonyericsson/android/camera/view/blur/BlurImage;
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mBlurImageLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_0
    const-string v1, "BlurImageController"

    const-string v2, "getBlurImage"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/BlurLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mBlurImage:Lcom/sonyericsson/android/camera/view/blur/BlurImage;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/view/blur/BlurImage;->isValid(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 263
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mBlurImage:Lcom/sonyericsson/android/camera/view/blur/BlurImage;

    monitor-exit v0

    return-object p0

    .line 265
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    .line 266
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isFirstBlurBitmapReady()Z
    .locals 1

    .line 161
    monitor-enter p0

    .line 162
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mIsFirstBlurBitmapReady:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 163
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public recycleAll()V
    .locals 0

    .line 274
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->stopThread()V

    .line 275
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mBlurImage:Lcom/sonyericsson/android/camera/view/blur/BlurImage;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/blur/BlurImage;->recycle()V

    return-void
.end method

.method public resumeThread()V
    .locals 2

    .line 192
    const-string v0, "BlurImageController"

    const-string v1, "resumeThread"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/BlurLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->clearTrigger()V

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mObject:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 196
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setBlurViewShowing(Z)V
    .locals 0

    .line 58
    monitor-enter p0

    .line 59
    :try_start_0
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mIsBlurViewShowing:Z

    .line 60
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setData([B)V
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mIsProcessing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mIsProcessing:Z

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mPreviewData:Lcom/sonyericsson/android/camera/view/blur/BlurImageController$PreviewData;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$PreviewData;->setData([B)Lcom/sonyericsson/android/camera/view/blur/BlurImageController$PreviewData;

    move-result-object p1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->getAspect()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$PreviewData;->setAspect(I)Lcom/sonyericsson/android/camera/view/blur/BlurImageController$PreviewData;

    :cond_0
    return-void
.end method

.method public setFirstBlurBitmapReady(Z)V
    .locals 0

    .line 155
    monitor-enter p0

    .line 156
    :try_start_0
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mIsFirstBlurBitmapReady:Z

    .line 157
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startBlurThread()V
    .locals 2

    .line 79
    const-string v0, "BlurImageController"

    const-string/jumbo v1, "startBlurThread"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/BlurLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mRunning:Z

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->setFirstBlurBitmapReady(Z)V

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mBlurImageThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$BlurImageThread;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$BlurImageThread;-><init>(Lcom/sonyericsson/android/camera/view/blur/BlurImageController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mBlurImageThread:Ljava/lang/Thread;

    .line 84
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public stopThread()V
    .locals 1

    .line 203
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->clearTrigger()V

    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mRunning:Z

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mBlurImageThread:Ljava/lang/Thread;

    return-void
.end method

.method public triggerThreadPause()V
    .locals 1

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mNeedPause:Z

    return-void
.end method

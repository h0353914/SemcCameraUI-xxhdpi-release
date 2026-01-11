.class public Lcom/sonyericsson/android/camera/view/blur/BlurImage;
.super Ljava/lang/Object;
.source "BlurImage.java"


# instance fields
.field private mAspect:I

.field private mBitmapArray:[Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 17
    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImage;->mBitmapArray:[Landroid/graphics/Bitmap;

    const/16 v0, 0xb1

    .line 18
    iput v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImage;->mAspect:I

    return-void
.end method


# virtual methods
.method public getBlurBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 30
    monitor-enter p0

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImage;->mBitmapArray:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 32
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 45
    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImage;->mBitmapArray:[Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 47
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isValid(I)Z
    .locals 2

    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImage;->mBitmapArray:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImage;->mAspect:I

    if-ne p1, v0, :cond_0

    .line 75
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 77
    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 78
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public recycle()V
    .locals 5

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImage;->mBitmapArray:[Landroid/graphics/Bitmap;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 62
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 63
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAspect(I)V
    .locals 0

    .line 21
    monitor-enter p0

    .line 22
    :try_start_0
    iput p1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImage;->mAspect:I

    .line 23
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setBlurBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 39
    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImage;->mBitmapArray:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 41
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setPreviewBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 51
    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImage;->mBitmapArray:[Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 53
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.class Lcom/sonyericsson/android/camera/view/blur/BlurImageController$PreviewData;
.super Ljava/lang/Object;
.source "BlurImageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/blur/BlurImageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PreviewData"
.end annotation


# instance fields
.field private mAspect:I

.field private mData:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAspect()I
    .locals 0

    .line 111
    iget p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$PreviewData;->mAspect:I

    return p0
.end method

.method public getData()[B
    .locals 1

    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$PreviewData;->mData:[B

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 107
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAspect(I)Lcom/sonyericsson/android/camera/view/blur/BlurImageController$PreviewData;
    .locals 0

    .line 100
    iput p1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$PreviewData;->mAspect:I

    return-object p0
.end method

.method public setData([B)Lcom/sonyericsson/android/camera/view/blur/BlurImageController$PreviewData;
    .locals 0

    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$PreviewData;->mData:[B

    .line 95
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.class public Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;
.super Ljava/lang/Object;
.source "CommonPlatformDependencyResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$OptimalPreviewSizeComparator;
    }
.end annotation


# static fields
.field public static final ASPECT_TOLERANCE:D = 0.05

.field public static final TAG:Ljava/lang/String; = "CommonPlatformDependencyResolver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static equalsRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4

    .line 135
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-double v2, p0

    div-double/2addr v0, v2

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-double v2, p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-double p0, p0

    div-double/2addr v2, p0

    sub-double/2addr v0, v2

    .line 138
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v0, 0x3fa999999999999aL    # 0.05

    cmpg-double p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getOptimalPreviewRect(Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$OptimalPreviewSizeComparator;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$OptimalPreviewSizeComparator;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .line 90
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "E: captureSize:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;->toString(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", preferredPreviewSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    invoke-static {p2}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;->toString(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 97
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 98
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "previewSize:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;->toString(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 101
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 104
    invoke-static {v1, p1}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;->equalsRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_3

    goto :goto_1

    .line 109
    :cond_3
    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$OptimalPreviewSizeComparator;->compare(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    if-gez v2, :cond_1

    :goto_1
    move-object v0, v1

    goto :goto_0

    .line 116
    :cond_4
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "X: result:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;->toString(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method public static getOptimalStillPreviewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$OptimalPreviewSizeComparator;

    invoke-direct {v0, p1}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$OptimalPreviewSizeComparator;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v0, p0, p1, p2}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;->getOptimalPreviewRect(Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$OptimalPreviewSizeComparator;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static getOptimalVideoPreviewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$OptimalPreviewSizeComparator;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$OptimalPreviewSizeComparator;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v0, p0, p1, p2}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;->getOptimalPreviewRect(Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$OptimalPreviewSizeComparator;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method protected static toString(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    .line 127
    const-string p0, "null"

    return-object p0

    .line 129
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 129
    const-string v1, "(%d,%d,%d,%d)"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

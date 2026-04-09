.class public Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;
.super Ljava/lang/Object;
.source "LayoutOrientationResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "LayoutOrientationResolver"

.field private static final sInstance:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;


# instance fields
.field private mLayoutOrientation:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->sInstance:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->mLayoutOrientation:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    return-void
.end method

.method public static getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;
    .locals 1

    .line 42
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->sInstance:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    return-object v0
.end method


# virtual methods
.method public getConfigurationOrientation()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->mLayoutOrientation:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    return-object p0
.end method

.method public getPointAccordingToLayoutOrientation(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 1

    if-nez p1, :cond_0

    return-object p1

    .line 107
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->mLayoutOrientation:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    sget-object v0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne p0, v0, :cond_1

    .line 108
    new-instance p0, Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->y:I

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    .line 110
    :cond_1
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, p1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    :goto_0
    return-object p0
.end method

.method public getRectAccordingToLayoutOrientation(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 68
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->mLayoutOrientation:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    sget-object v0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne p0, v0, :cond_1

    .line 69
    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 71
    :cond_1
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    return-object p0
.end method

.method public getSizeAccordingToLayoutOrientation(Landroid/util/Size;)Landroid/util/Size;
    .locals 1

    .line 85
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->mLayoutOrientation:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    sget-object v0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne p0, v0, :cond_0

    .line 86
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p0

    .line 87
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    .line 90
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    .line 92
    :goto_0
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p0, p1}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

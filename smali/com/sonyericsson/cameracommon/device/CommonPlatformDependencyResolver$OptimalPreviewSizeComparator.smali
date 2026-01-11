.class Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$OptimalPreviewSizeComparator;
.super Ljava/lang/Object;
.source "CommonPlatformDependencyResolver.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OptimalPreviewSizeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# instance fields
.field private final mTarget:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$OptimalPreviewSizeComparator;->mTarget:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public compare(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$OptimalPreviewSizeComparator;->mTarget:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 155
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$OptimalPreviewSizeComparator;->mTarget:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr p2, p0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 141
    check-cast p1, Landroid/graphics/Rect;

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$OptimalPreviewSizeComparator;->compare(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p0

    return p0
.end method

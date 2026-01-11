.class public Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;
.super Ljava/lang/Object;
.source "GDepth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/xmp/GDepth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DepthMap"
.end annotation


# instance fields
.field public buffer:[B

.field public height:I

.field public roi:Landroid/graphics/Rect;

.field public width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput p1, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;->width:I

    .line 275
    iput p2, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;->height:I

    return-void
.end method

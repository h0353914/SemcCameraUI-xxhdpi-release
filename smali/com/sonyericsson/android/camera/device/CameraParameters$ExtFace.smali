.class public Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;
.super Ljava/lang/Object;
.source "CameraParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtFace"
.end annotation


# instance fields
.field public id:I

.field public rect:Landroid/graphics/Rect;

.field public smileScore:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 962
    iput v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->id:I

    return-void
.end method

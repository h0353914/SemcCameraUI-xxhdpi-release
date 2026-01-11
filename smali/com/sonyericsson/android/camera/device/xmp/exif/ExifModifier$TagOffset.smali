.class Lcom/sonyericsson/android/camera/device/xmp/exif/ExifModifier$TagOffset;
.super Ljava/lang/Object;
.source "ExifModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/xmp/exif/ExifModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TagOffset"
.end annotation


# instance fields
.field final mOffset:I

.field final mTag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;I)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifModifier$TagOffset;->mTag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    .line 43
    iput p2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifModifier$TagOffset;->mOffset:I

    return-void
.end method

.class Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$IfdEvent;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IfdEvent"
.end annotation


# instance fields
.field ifd:I

.field isRequested:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    .line 892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    iput p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$IfdEvent;->ifd:I

    .line 894
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$IfdEvent;->isRequested:Z

    return-void
.end method

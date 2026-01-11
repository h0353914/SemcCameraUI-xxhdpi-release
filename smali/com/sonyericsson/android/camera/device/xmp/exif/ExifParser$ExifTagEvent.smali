.class Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ExifTagEvent;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifTagEvent"
.end annotation


# instance fields
.field isRequested:Z

.field tag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;Z)V
    .locals 0

    .line 902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 903
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ExifTagEvent;->tag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    .line 904
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ExifTagEvent;->isRequested:Z

    return-void
.end method

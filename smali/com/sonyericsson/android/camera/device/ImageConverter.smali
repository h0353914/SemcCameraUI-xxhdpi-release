.class Lcom/sonyericsson/android/camera/device/ImageConverter;
.super Ljava/lang/Object;
.source "ImageConverter.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "image_converter"

    .line 18
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native convertFromYuv420_888ToNv21([BIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)V
.end method

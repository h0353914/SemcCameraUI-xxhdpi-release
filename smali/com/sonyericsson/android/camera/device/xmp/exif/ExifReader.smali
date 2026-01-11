.class Lcom/sonyericsson/android/camera/device/xmp/exif/ExifReader;
.super Ljava/lang/Object;
.source "ExifReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifReader"


# instance fields
.field private final mInterface:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifReader;->mInterface:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;

    return-void
.end method


# virtual methods
.method protected read(Ljava/io/InputStream;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifReader;->mInterface:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;

    move-result-object p0

    .line 47
    new-instance p1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    .line 50
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->next()I

    move-result v0

    :goto_0
    const/4 v1, 0x5

    if-eq v0, v1, :cond_9

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    .line 52
    const-string v2, "ExifReader"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->getStripSize()I

    move-result v0

    new-array v1, v0, [B

    .line 81
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->read([B)I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->getStripIndex()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->setStripBytes(I[B)V

    goto :goto_1

    .line 84
    :cond_1
    const-string v0, "Failed to read the strip bytes"

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->getCompressedImageSize()I

    move-result v0

    new-array v1, v0, [B

    .line 73
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->read([B)I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 74
    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->setCompressedThumbnail([B)V

    goto :goto_1

    .line 76
    :cond_3
    const-string v0, "Failed to read the compressed thumbnail"

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    goto :goto_1

    .line 65
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->getTag()Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getDataType()S

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_5

    .line 67
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readFullTagValue(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)V

    .line 69
    :cond_5
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getIfd()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getIfdData(I)Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->setTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    goto :goto_1

    .line 57
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->getTag()Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->hasValue()Z

    move-result v1

    if-nez v1, :cond_7

    .line 59
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->registerForTagValue(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)V

    goto :goto_1

    .line 61
    :cond_7
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getIfd()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getIfdData(I)Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->setTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    goto :goto_1

    .line 54
    :cond_8
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->getCurrentIfd()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->addIfdData(Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;)V

    .line 88
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->next()I

    move-result v0

    goto/16 :goto_0

    :cond_9
    return-object p1
.end method

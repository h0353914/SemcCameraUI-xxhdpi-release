.class Lcom/sonyericsson/android/camera/device/xmp/exif/ByteBufferInputStream;
.super Ljava/io/InputStream;
.source "ByteBufferInputStream.java"


# instance fields
.field private mBuf:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ByteBufferInputStream;->mBuf:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public read()I
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ByteBufferInputStream;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ByteBufferInputStream;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public read([BII)I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ByteBufferInputStream;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ByteBufferInputStream;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 45
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ByteBufferInputStream;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p3
.end method

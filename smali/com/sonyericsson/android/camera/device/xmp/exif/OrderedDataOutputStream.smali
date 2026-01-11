.class public Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;
.super Ljava/io/FilterOutputStream;
.source "OrderedDataOutputStream.java"


# instance fields
.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private mSize:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x4

    .line 26
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->mSize:I

    return-void
.end method


# virtual methods
.method public setByteOrder(Ljava/nio/ByteOrder;)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public size()I
    .locals 0

    .line 61
    iget p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->mSize:I

    return p0
.end method

.method public writeInt(I)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 48
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 49
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 50
    iget p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->mSize:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->mSize:I

    return-object p0
.end method

.method public writeRational(Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;->getNumerator()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeInt(I)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    .line 56
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;->getDenominator()J

    move-result-wide v0

    long-to-int p1, v0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeInt(I)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    return-object p0
.end method

.method public writeShort(S)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 40
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 41
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 42
    iget p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->mSize:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->mSize:I

    return-object p0
.end method

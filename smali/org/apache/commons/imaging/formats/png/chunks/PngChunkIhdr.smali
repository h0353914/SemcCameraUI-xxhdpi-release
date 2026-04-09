.class public Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;
.super Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;
.source "PngChunkIhdr.java"


# instance fields
.field public final bitDepth:I

.field public final compressionMethod:I

.field public final filterMethod:I

.field public final height:I

.field public final interlaceMethod:Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

.field public final pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

.field public final width:I


# direct methods
.method public constructor <init>(III[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;-><init>(III[B)V

    .line 40
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p2, "Width"

    const-string p3, "Not a Valid Png File: IHDR Corrupt"

    .line 41
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p4

    invoke-static {p2, p1, p3, p4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result p2

    iput p2, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->width:I

    const-string p2, "Height"

    const-string p3, "Not a Valid Png File: IHDR Corrupt"

    .line 42
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p4

    invoke-static {p2, p1, p3, p4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result p2

    iput p2, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->height:I

    const-string p2, "BitDepth"

    const-string p3, "Not a Valid Png File: IHDR Corrupt"

    .line 43
    invoke-static {p2, p1, p3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p2

    iput p2, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->bitDepth:I

    const-string p2, "ColorType"

    const-string p3, "Not a Valid Png File: IHDR Corrupt"

    .line 44
    invoke-static {p2, p1, p3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p2

    .line 45
    invoke-static {p2}, Lorg/apache/commons/imaging/formats/png/PngColorType;->getColorType(I)Lorg/apache/commons/imaging/formats/png/PngColorType;

    move-result-object p3

    iput-object p3, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

    .line 46
    iget-object p3, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

    if-nez p3, :cond_0

    .line 47
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PNG: unknown color type: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const-string p2, "CompressionMethod"

    const-string p3, "Not a Valid Png File: IHDR Corrupt"

    .line 49
    invoke-static {p2, p1, p3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p2

    iput p2, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->compressionMethod:I

    const-string p2, "FilterMethod"

    const-string p3, "Not a Valid Png File: IHDR Corrupt"

    .line 50
    invoke-static {p2, p1, p3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p2

    iput p2, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->filterMethod:I

    const-string p2, "InterlaceMethod"

    const-string p3, "Not a Valid Png File: IHDR Corrupt"

    .line 51
    invoke-static {p2, p1, p3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p1

    if-gez p1, :cond_1

    .line 52
    invoke-static {}, Lorg/apache/commons/imaging/formats/png/InterlaceMethod;->values()[Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    move-result-object p2

    array-length p2, p2

    if-lt p1, p2, :cond_1

    .line 53
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PNG: unknown interlace method: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 55
    :cond_1
    invoke-static {}, Lorg/apache/commons/imaging/formats/png/InterlaceMethod;->values()[Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    move-result-object p2

    aget-object p1, p2, p1

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->interlaceMethod:Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    return-void
.end method

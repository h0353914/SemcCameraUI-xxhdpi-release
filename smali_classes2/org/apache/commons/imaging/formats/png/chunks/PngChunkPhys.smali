.class public Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;
.super Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;
.source "PngChunkPhys.java"


# instance fields
.field public final pixelsPerUnitXAxis:I

.field public final pixelsPerUnitYAxis:I

.field public final unitSpecifier:I


# direct methods
.method public constructor <init>(III[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;-><init>(III[B)V

    .line 32
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 34
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    const-string p3, "PixelsPerUnitXAxis"

    const-string p4, "Not a Valid Png File: pHYs Corrupt"

    invoke-static {p3, p1, p4, p2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result p2

    iput p2, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;->pixelsPerUnitXAxis:I

    .line 35
    const-string p2, "PixelsPerUnitYAxis"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-static {p2, p1, p4, p3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result p2

    iput p2, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;->pixelsPerUnitYAxis:I

    .line 36
    const-string p2, "Unit specifier"

    invoke-static {p2, p1, p4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;->unitSpecifier:I

    return-void
.end method

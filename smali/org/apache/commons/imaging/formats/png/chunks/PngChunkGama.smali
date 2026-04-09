.class public Lorg/apache/commons/imaging/formats/png/chunks/PngChunkGama;
.super Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;
.source "PngChunkGama.java"


# instance fields
.field public final gamma:I


# direct methods
.method public constructor <init>(III[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;-><init>(III[B)V

    .line 31
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p2, "Gamma"

    const-string p3, "Not a Valid Png File: gAMA Corrupt"

    .line 32
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkGama;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p4

    invoke-static {p2, p1, p3, p4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkGama;->gamma:I

    return-void
.end method


# virtual methods
.method public getGamma()D
    .locals 4

    .line 36
    iget p0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkGama;->gamma:I

    int-to-double v0, p0

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    return-wide v2
.end method

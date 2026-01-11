.class public Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;
.super Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;
.source "PngChunkPlte.java"


# instance fields
.field private final rgb:[I


# direct methods
.method public constructor <init>(III[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;-><init>(III[B)V

    .line 34
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 36
    rem-int/lit8 p3, p1, 0x3

    if-nez p3, :cond_1

    .line 40
    div-int/lit8 p1, p1, 0x3

    .line 42
    new-array p3, p1, [I

    iput-object p3, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;->rgb:[I

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    .line 45
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "red["

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, "]"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v1, "Not a Valid Png File: PLTE Corrupt"

    invoke-static {p4, p2, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p4

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "green["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "blue["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    .line 51
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;->rgb:[I

    and-int/lit16 p4, p4, 0xff

    shl-int/lit8 p4, p4, 0x10

    const/high16 v3, -0x1000000

    or-int/2addr p4, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr p4, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p4, v0

    aput p4, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 37
    :cond_1
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "PLTE: wrong length: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public correct(Lorg/apache/commons/imaging/formats/png/GammaCorrection;)V
    .locals 3

    const/4 v0, 0x0

    .line 80
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;->rgb:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 81
    aget v2, v1, v0

    invoke-virtual {p1, v2}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->correctARGB(I)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getRGB(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 61
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;->rgb:[I

    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 65
    aget p0, p0, p1

    return p0

    .line 62
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PNG: unknown Palette reference: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRgb()[I
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;->rgb:[I

    return-object p0
.end method

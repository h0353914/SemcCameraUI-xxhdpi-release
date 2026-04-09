.class public Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;
.super Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;
.source "PngChunkPlte.java"


# instance fields
.field private final rgb:[I


# direct methods
.method public constructor <init>(III[B)V
    .locals 6
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

    if-eqz p3, :cond_0

    .line 37
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PLTE: wrong length: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_0
    div-int/lit8 p1, p1, 0x3

    .line 42
    new-array p3, p1, [I

    iput-object p3, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;->rgb:[I

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p1, :cond_1

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "red["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not a Valid Png File: PLTE Corrupt"

    invoke-static {v0, p2, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "green["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not a Valid Png File: PLTE Corrupt"

    invoke-static {v1, p2, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blue["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Not a Valid Png File: PLTE Corrupt"

    invoke-static {v2, p2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    .line 51
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;->rgb:[I

    const/high16 v4, -0x1000000

    const/16 v5, 0xff

    and-int/2addr v0, v5

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v4

    and-int/2addr v1, v5

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int v1, v5, v2

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    aput v0, v3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public correct(Lorg/apache/commons/imaging/formats/png/GammaCorrection;)V
    .locals 3

    const/4 v0, 0x0

    .line 80
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;->rgb:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 81
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;->rgb:[I

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;->rgb:[I

    aget v2, v2, v0

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

    if-ltz p1, :cond_1

    .line 61
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;->rgb:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;->rgb:[I

    aget p0, p0, p1

    return p0

    .line 62
    :cond_1
    :goto_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PNG: unknown Palette reference: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

.class public Lorg/apache/commons/imaging/formats/png/chunks/PngChunkZtxt;
.super Lorg/apache/commons/imaging/formats/png/chunks/PngTextChunk;
.source "PngChunkZtxt.java"


# instance fields
.field public final keyword:Ljava/lang/String;

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(III[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/imaging/formats/png/chunks/PngTextChunk;-><init>(III[B)V

    .line 38
    invoke-static {p4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->findNull([B)I

    move-result p1

    if-ltz p1, :cond_1

    .line 44
    new-instance p2, Ljava/lang/String;

    const/4 p3, 0x0

    const-string v0, "ISO-8859-1"

    invoke-direct {p2, p4, p3, p1, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkZtxt;->keyword:Ljava/lang/String;

    add-int/lit8 p2, p1, 0x1

    add-int/lit8 p1, p1, 0x2

    .line 47
    aget-byte p2, p4, p2

    if-nez p2, :cond_0

    .line 54
    array-length p2, p4

    sub-int/2addr p2, p1

    .line 55
    new-array v1, p2, [B

    .line 56
    invoke-static {p4, p1, v1, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    new-instance p1, Ljava/lang/String;

    new-instance p2, Ljava/util/zip/InflaterInputStream;

    new-instance p3, Ljava/io/ByteArrayInputStream;

    invoke-direct {p3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p2, p3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->getStreamBytes(Ljava/io/InputStream;)[B

    move-result-object p2

    invoke-direct {p1, p2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkZtxt;->text:Ljava/lang/String;

    return-void

    .line 49
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "PNG zTXt chunk has unexpected compression method: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_1
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "PNG zTXt chunk keyword is unterminated."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getContents()Lorg/apache/commons/imaging/formats/png/PngText;
    .locals 2

    .line 79
    new-instance v0, Lorg/apache/commons/imaging/formats/png/PngText$Ztxt;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkZtxt;->keyword:Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkZtxt;->text:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/imaging/formats/png/PngText$Ztxt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkZtxt;->keyword:Ljava/lang/String;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkZtxt;->text:Ljava/lang/String;

    return-object p0
.end method

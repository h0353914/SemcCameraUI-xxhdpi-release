.class public Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;
.super Lorg/apache/commons/imaging/formats/png/chunks/PngTextChunk;
.source "PngChunkItxt.java"


# instance fields
.field public final keyword:Ljava/lang/String;

.field public final languageTag:Ljava/lang/String;

.field public final text:Ljava/lang/String;

.field public final translatedKeyword:Ljava/lang/String;


# direct methods
.method public constructor <init>(III[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/imaging/formats/png/chunks/PngTextChunk;-><init>(III[B)V

    .line 49
    invoke-static {p4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->findNull([B)I

    move-result p1

    if-gez p1, :cond_0

    .line 51
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "PNG iTXt chunk keyword is not terminated."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 55
    :cond_0
    new-instance p2, Ljava/lang/String;

    const-string p3, "ISO-8859-1"

    const/4 v0, 0x0

    invoke-direct {p2, p4, v0, p1, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->keyword:Ljava/lang/String;

    const/4 p2, 0x1

    add-int/2addr p1, p2

    add-int/lit8 p3, p1, 0x1

    .line 58
    aget-byte p1, p4, p1

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_1

    .line 60
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PNG iTXt chunk has invalid compression flag: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-ne p1, p2, :cond_2

    move p1, p2

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    add-int/lit8 v1, p3, 0x1

    .line 67
    aget-byte p3, p4, p3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 69
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PNG iTXt chunk has unexpected compression method: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_3
    invoke-static {p4, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->findNull([BI)I

    move-result p3

    if-gez p3, :cond_4

    .line 74
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "PNG iTXt chunk language tag is not terminated."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_4
    new-instance v2, Ljava/lang/String;

    sub-int v3, p3, v1

    const-string v4, "ISO-8859-1"

    invoke-direct {v2, p4, v1, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->languageTag:Ljava/lang/String;

    add-int/2addr p3, p2

    .line 80
    invoke-static {p4, p3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->findNull([BI)I

    move-result v1

    if-gez v1, :cond_5

    .line 82
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "PNG iTXt chunk translated keyword is not terminated."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 85
    :cond_5
    new-instance v2, Ljava/lang/String;

    sub-int v3, v1, p3

    const-string v4, "utf-8"

    invoke-direct {v2, p4, p3, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->translatedKeyword:Ljava/lang/String;

    add-int/2addr v1, p2

    if-eqz p1, :cond_6

    .line 89
    array-length p1, p4

    sub-int/2addr p1, v1

    .line 91
    new-array p2, p1, [B

    .line 92
    invoke-static {p4, v1, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    new-instance p1, Ljava/lang/String;

    new-instance p3, Ljava/util/zip/InflaterInputStream;

    new-instance p4, Ljava/io/ByteArrayInputStream;

    invoke-direct {p4, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p3, p4}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->getStreamBytes(Ljava/io/InputStream;)[B

    move-result-object p2

    const-string p3, "utf-8"

    invoke-direct {p1, p2, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->text:Ljava/lang/String;

    goto :goto_1

    .line 98
    :cond_6
    new-instance p1, Ljava/lang/String;

    array-length p2, p4

    sub-int/2addr p2, v1

    const-string p3, "utf-8"

    invoke-direct {p1, p4, v1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->text:Ljava/lang/String;

    :goto_1
    return-void
.end method


# virtual methods
.method public getContents()Lorg/apache/commons/imaging/formats/png/PngText;
    .locals 4

    .line 120
    new-instance v0, Lorg/apache/commons/imaging/formats/png/PngText$Itxt;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->keyword:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->text:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->languageTag:Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->translatedKeyword:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/apache/commons/imaging/formats/png/PngText$Itxt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->keyword:Ljava/lang/String;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    .line 115
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->text:Ljava/lang/String;

    return-object p0
.end method

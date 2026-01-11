.class public abstract Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;
.super Ljava/lang/Object;
.source "DataReader.java"


# instance fields
.field private final bitsPerSample:[I

.field protected final bitsPerSampleLength:I

.field protected final directory:Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

.field protected final height:I

.field private final last:[I

.field protected final photometricInterpreter:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

.field protected final predictor:I

.field protected final samplesPerPixel:I

.field protected final width:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;[IIIII)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->directory:Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    .line 54
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->photometricInterpreter:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    .line 55
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->bitsPerSample:[I

    .line 56
    array-length p1, p3

    iput p1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->bitsPerSampleLength:I

    .line 57
    iput p5, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->samplesPerPixel:I

    .line 58
    iput p4, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->predictor:I

    .line 59
    iput p6, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->width:I

    .line 60
    iput p7, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->height:I

    .line 61
    new-array p1, p5, [I

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->last:[I

    return-void
.end method


# virtual methods
.method protected applyPredictor([I)[I
    .locals 4

    .line 121
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->predictor:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 123
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 124
    aget v1, p1, v0

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->last:[I

    aget v3, v2, v0

    add-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    aput v1, p1, v0

    .line 125
    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method protected decompress([BIIII)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->directory:Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_FILL_ORDER:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    goto :goto_2

    :cond_1
    if-ne v0, v2, :cond_10

    move v0, v3

    .line 144
    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_2

    .line 145
    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->reverse(I)I

    move-result v4

    ushr-int/lit8 v4, v4, 0x18

    int-to-byte v4, v4

    aput-byte v4, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eq p2, v1, :cond_f

    if-eq p2, v2, :cond_e

    const/4 v0, 0x3

    const/4 v4, 0x4

    if-eq p2, v0, :cond_8

    if-eq p2, v4, :cond_5

    const/4 p0, 0x5

    if-eq p2, p0, :cond_4

    const p0, 0x8005

    if-ne p2, p0, :cond_3

    .line 211
    new-instance p0, Lorg/apache/commons/imaging/common/PackBits;

    invoke-direct {p0}, Lorg/apache/commons/imaging/common/PackBits;-><init>()V

    invoke-virtual {p0, p1, p3}, Lorg/apache/commons/imaging/common/PackBits;->decompress([BI)[B

    move-result-object p0

    return-object p0

    .line 215
    :cond_3
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Tiff: unknown/unsupported compression: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 197
    :cond_4
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 201
    new-instance p1, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;

    const/16 p2, 0x8

    sget-object p4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p1, p2, p4}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;-><init>(ILjava/nio/ByteOrder;)V

    .line 204
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->setTiffLZWMode()V

    .line 206
    invoke-virtual {p1, p0, p3}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->decompress(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0

    .line 182
    :cond_5
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->directory:Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    sget-object p2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_T6_OPTIONS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 185
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v3

    :cond_6
    and-int/lit8 p0, v3, 0x2

    if-nez p0, :cond_7

    .line 192
    invoke-static {p1, p4, p5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->decompressT6([BII)[B

    move-result-object p0

    return-object p0

    .line 189
    :cond_7
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "T.6 compression with the uncompressed mode extension is not yet supported"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 161
    :cond_8
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->directory:Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    sget-object p2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_T4_OPTIONS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 164
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result p0

    goto :goto_3

    :cond_9
    move p0, v3

    :goto_3
    and-int/lit8 p2, p0, 0x1

    if-eqz p2, :cond_a

    move p2, v1

    goto :goto_4

    :cond_a
    move p2, v3

    :goto_4
    and-int/lit8 p3, p0, 0x2

    if-nez p3, :cond_d

    and-int/2addr p0, v4

    if-eqz p0, :cond_b

    goto :goto_5

    :cond_b
    move v1, v3

    :goto_5
    if-eqz p2, :cond_c

    .line 174
    invoke-static {p1, p4, p5, v1}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->decompressT4_2D([BIIZ)[B

    move-result-object p0

    return-object p0

    .line 177
    :cond_c
    invoke-static {p1, p4, p5, v1}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->decompressT4_1D([BIIZ)[B

    move-result-object p0

    return-object p0

    .line 169
    :cond_d
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "T.4 compression with the uncompressed mode extension is not yet supported"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 157
    :cond_e
    invoke-static {p1, p4, p5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->decompressModifiedHuffman([BII)[B

    move-result-object p0

    return-object p0

    :cond_f
    return-object p1

    .line 148
    :cond_10
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "TIFF FillOrder="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is invalid"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method getSamplesAsBytes(Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;[I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 98
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->bitsPerSample:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 99
    aget v1, v1, v0

    .line 100
    invoke-virtual {p1, v1}, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->readBits(I)I

    move-result v2

    const/16 v3, 0x8

    if-ge v1, v3, :cond_0

    and-int/lit8 v3, v2, 0x1

    rsub-int/lit8 v1, v1, 0x8

    shl-int/2addr v2, v1

    if-lez v3, :cond_1

    const/4 v3, 0x1

    shl-int v1, v3, v1

    sub-int/2addr v1, v3

    or-int/2addr v1, v2

    move v2, v1

    goto :goto_1

    :cond_0
    if-le v1, v3, :cond_1

    add-int/lit8 v1, v1, -0x8

    shr-int/2addr v2, v1

    .line 110
    :cond_1
    :goto_1
    aput v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected isHomogenous(I)Z
    .locals 4

    .line 79
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->bitsPerSample:[I

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-eq v3, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public abstract readImageData(Ljava/awt/Rectangle;)Ljava/awt/image/BufferedImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readImageData(Lorg/apache/commons/imaging/common/ImageBuilder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected resetPredictor()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 115
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->last:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 116
    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

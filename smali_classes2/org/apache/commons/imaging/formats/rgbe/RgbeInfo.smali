.class Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;
.super Ljava/lang/Object;
.source "RgbeInfo.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final HEADER:[B

.field private static final RESOLUTION_STRING:Ljava/util/regex/Pattern;

.field private static final TWO_TWO:[B


# instance fields
.field private height:I

.field private final in:Ljava/io/InputStream;

.field private metadata:Lorg/apache/commons/imaging/common/GenericImageMetadata;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    .line 35
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->HEADER:[B

    .line 38
    const-string v0, "-Y (\\d+) \\+X (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->RESOLUTION_STRING:Ljava/util/regex/Pattern;

    const/4 v0, 0x2

    .line 44
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->TWO_TWO:[B

    return-void

    :array_0
    .array-data 1
        0x23t
        0x3ft
        0x52t
        0x41t
        0x44t
        0x49t
        0x41t
        0x4et
        0x43t
        0x45t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2t
        0x2t
    .end array-data
.end method

.method constructor <init>(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->width:I

    .line 43
    iput v0, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->height:I

    .line 47
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->in:Ljava/io/InputStream;

    return-void
.end method

.method private static decompress(Ljava/io/InputStream;[B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    if-ge v2, v0, :cond_2

    .line 176
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    const/16 v4, 0x80

    if-le v3, v4, :cond_1

    .line 179
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    move v5, v1

    :goto_0
    and-int/lit8 v6, v3, 0x7f

    if-ge v5, v6, :cond_0

    add-int/lit8 v6, v2, 0x1

    int-to-byte v7, v4

    .line 182
    aput-byte v7, p1, v2

    add-int/lit8 v5, v5, 0x1

    move v2, v6

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_0

    add-int/lit8 v5, v2, 0x1

    .line 186
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, p1, v2

    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_1

    :cond_2
    return-void
.end method

.method private readDimensions()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->getMetadata()Lorg/apache/commons/imaging/common/ImageMetadata;

    .line 81
    new-instance v0, Lorg/apache/commons/imaging/formats/rgbe/InfoHeaderReader;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/rgbe/InfoHeaderReader;-><init>(Ljava/io/InputStream;)V

    .line 82
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/rgbe/InfoHeaderReader;->readNextLine()Ljava/lang/String;

    move-result-object v0

    .line 83
    sget-object v1, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->RESOLUTION_STRING:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 91
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->height:I

    const/4 v0, 0x2

    .line 92
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->width:I

    return-void

    .line 86
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid HDR resolution string. Only \"-Y N +X M\" is supported. Found \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readMetadata()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->in:Ljava/io/InputStream;

    sget-object v1, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->HEADER:[B

    const-string v2, "Not a valid HDR: Incorrect Header"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readAndVerifyBytes(Ljava/io/InputStream;[BLjava/lang/String;)V

    .line 98
    new-instance v0, Lorg/apache/commons/imaging/formats/rgbe/InfoHeaderReader;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/rgbe/InfoHeaderReader;-><init>(Ljava/io/InputStream;)V

    .line 100
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/rgbe/InfoHeaderReader;->readNextLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 104
    new-instance v1, Lorg/apache/commons/imaging/common/GenericImageMetadata;

    invoke-direct {v1}, Lorg/apache/commons/imaging/common/GenericImageMetadata;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->metadata:Lorg/apache/commons/imaging/common/GenericImageMetadata;

    .line 106
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/rgbe/InfoHeaderReader;->readNextLine()Ljava/lang/String;

    move-result-object v1

    .line 108
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x3d

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_2

    const/4 v3, 0x0

    .line 112
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 115
    const-string v2, "FORMAT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "32-bit_rle_rgbe"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 116
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Only 32-bit_rle_rgbe images are supported, trying to read "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 119
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->metadata:Lorg/apache/commons/imaging/common/GenericImageMetadata;

    invoke-virtual {v2, v3, v1}, Lorg/apache/commons/imaging/common/GenericImageMetadata;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 121
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->metadata:Lorg/apache/commons/imaging/common/GenericImageMetadata;

    const-string v3, "<command>"

    invoke-virtual {v2, v3, v1}, Lorg/apache/commons/imaging/common/GenericImageMetadata;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_2
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/rgbe/InfoHeaderReader;->readNextLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    return-void

    .line 101
    :cond_4
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    invoke-direct {p0, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method getHeight()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 67
    iget v1, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->height:I

    if-ne v0, v1, :cond_0

    .line 68
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->readDimensions()V

    .line 71
    :cond_0
    iget p0, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->height:I

    return p0
.end method

.method getMetadata()Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->metadata:Lorg/apache/commons/imaging/common/GenericImageMetadata;

    if-nez v0, :cond_0

    .line 52
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->readMetadata()V

    .line 55
    :cond_0
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->metadata:Lorg/apache/commons/imaging/common/GenericImageMetadata;

    return-object p0
.end method

.method public getPixelData()[[F
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 131
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->getHeight()I

    move-result v1

    .line 132
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->getWidth()I

    move-result v2

    const v3, 0x8000

    if-ge v2, v3, :cond_4

    int-to-short v3, v2

    .line 138
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v3, v4}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(SLjava/nio/ByteOrder;)[B

    move-result-object v3

    mul-int/lit8 v4, v2, 0x4

    .line 140
    new-array v4, v4, [B

    mul-int v5, v2, v1

    const/4 v6, 0x3

    .line 141
    filled-new-array {v6, v5}, [I

    move-result-object v5

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[F

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v1, :cond_3

    .line 144
    iget-object v9, v0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->in:Ljava/io/InputStream;

    sget-object v10, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->TWO_TWO:[B

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Scan line "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " expected to start with 0x2 0x2"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readAndVerifyBytes(Ljava/io/InputStream;[BLjava/lang/String;)V

    .line 145
    iget-object v9, v0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->in:Ljava/io/InputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " length expected"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v3, v10}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readAndVerifyBytes(Ljava/io/InputStream;[BLjava/lang/String;)V

    .line 147
    iget-object v9, v0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->in:Ljava/io/InputStream;

    invoke-static {v9, v4}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->decompress(Ljava/io/InputStream;[B)V

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v6, :cond_2

    mul-int v10, v9, v2

    mul-int/lit8 v11, v2, 0x3

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v2, :cond_1

    add-int v13, v12, v11

    .line 154
    aget-byte v13, v4, v13

    and-int/lit16 v13, v13, 0xff

    mul-int v14, v8, v2

    add-int/2addr v14, v12

    if-nez v13, :cond_0

    .line 158
    aget-object v13, v5, v9

    const/4 v15, 0x0

    aput v15, v13, v14

    move v13, v1

    goto :goto_3

    :cond_0
    add-int/lit16 v13, v13, -0x88

    int-to-double v6, v13

    move v13, v1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 160
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 161
    aget-object v1, v5, v9

    add-int v6, v12, v10

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    mul-float/2addr v6, v0

    aput v6, v1, v14

    :goto_3
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move v1, v13

    const/4 v6, 0x3

    goto :goto_2

    :cond_1
    move v13, v1

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    const/4 v6, 0x3

    goto :goto_1

    :cond_2
    move v13, v1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    const/4 v6, 0x3

    goto/16 :goto_0

    :cond_3
    return-object v5

    .line 135
    :cond_4
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Scan lines must be less than 32768 bytes long"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getWidth()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 59
    iget v1, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->width:I

    if-ne v0, v1, :cond_0

    .line 60
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->readDimensions()V

    .line 63
    :cond_0
    iget p0, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->width:I

    return p0
.end method

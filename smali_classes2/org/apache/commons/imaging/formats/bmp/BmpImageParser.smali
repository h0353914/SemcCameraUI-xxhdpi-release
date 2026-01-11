.class public Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "BmpImageParser.java"


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final BITMAP_FILE_HEADER_SIZE:I = 0xe

.field private static final BITMAP_INFO_HEADER_SIZE:I = 0x28

.field private static final BI_BITFIELDS:I = 0x3

.field private static final BI_RGB:I = 0x0

.field private static final BI_RLE4:I = 0x2

.field private static final BI_RLE8:I = 0x1

.field private static final BMP_HEADER_SIGNATURE:[B

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".bmp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-string v0, ".bmp"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    const/4 v0, 0x2

    .line 54
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->BMP_HEADER_SIGNATURE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x42t
        0x4dt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    .line 63
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-super {p0, v0}, Lorg/apache/commons/imaging/ImageParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method private getBmpTypeDescription(II)Ljava/lang/String;
    .locals 2

    const/16 p0, 0x42

    if-ne p1, p0, :cond_0

    const/16 v0, 0x4d

    if-ne p2, v0, :cond_0

    .line 530
    const-string p0, "Windows 3.1x, 95, NT,"

    return-object p0

    :cond_0
    if-ne p1, p0, :cond_1

    const/16 p0, 0x41

    if-ne p2, p0, :cond_1

    .line 533
    const-string p0, "OS/2 Bitmap Array"

    return-object p0

    :cond_1
    const/16 p0, 0x49

    const/16 v0, 0x43

    if-ne p1, v0, :cond_2

    if-ne p2, p0, :cond_2

    .line 536
    const-string p0, "OS/2 Color Icon"

    return-object p0

    :cond_2
    const/16 v1, 0x50

    if-ne p1, v0, :cond_3

    if-ne p2, v1, :cond_3

    .line 539
    const-string p0, "OS/2 Color Pointer"

    return-object p0

    :cond_3
    if-ne p1, p0, :cond_4

    if-ne p2, v0, :cond_4

    .line 542
    const-string p0, "OS/2 Icon"

    return-object p0

    :cond_4
    if-ne p1, v1, :cond_5

    const/16 p0, 0x54

    if-ne p2, p0, :cond_5

    .line 545
    const-string p0, "OS/2 Pointer"

    return-object p0

    .line 548
    :cond_5
    const-string p0, "Unknown"

    return-object p0
.end method

.method private getRLEBytes(Ljava/io/InputStream;I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_5

    .line 246
    const-string v1, "RLE a"

    const-string v2, "BMP: Bad RLE"

    invoke-static {v1, p1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 247
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 248
    const-string v3, "RLE b"

    invoke-static {v3, p1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 249
    invoke-virtual {p0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-nez v1, :cond_0

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    if-eq v3, v1, :cond_4

    const/4 v1, 0x2

    if-eq v3, v1, :cond_3

    .line 271
    div-int v1, v3, p2

    .line 272
    rem-int/2addr v3, p2

    if-lez v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 275
    :cond_1
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 285
    :cond_2
    const-string v2, "bytes"

    const-string v3, "RLE: Absolute Mode"

    invoke-static {v2, p1, v1, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v1

    .line 287
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 263
    :cond_3
    const-string v1, "RLE c"

    invoke-static {v1, p1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 264
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 265
    const-string v1, "RLE d"

    invoke-static {v1, p1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 266
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 294
    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private readBmpHeaderInfo(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;Z)Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;
    .locals 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 90
    const-string v3, "Identifier1"

    const-string v4, "Not a Valid BMP File"

    invoke-static {v3, v1, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v6

    .line 91
    const-string v3, "Identifier2"

    invoke-static {v3, v1, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v7

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    .line 94
    sget-object v9, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->BMP_HEADER_SIGNATURE:[B

    new-array v10, v3, [B

    aput-byte v6, v10, v8

    aput-byte v7, v10, v5

    const-string v11, "Signature"

    invoke-virtual {v2, v11, v9, v10}, Lorg/apache/commons/imaging/FormatCompliance;->compareBytes(Ljava/lang/String;[B[B)Z

    .line 98
    :cond_0
    const-string v2, "File Size"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-static {v2, v1, v4, v9}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v2

    .line 99
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    const-string v10, "Reserved"

    invoke-static {v10, v1, v4, v9}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v9

    .line 100
    const-string v11, "Bitmap Data Offset"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v12

    invoke-static {v11, v1, v4, v12}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v11

    .line 102
    const-string v12, "Bitmap Header Size"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v13

    invoke-static {v12, v1, v4, v13}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v12

    .line 118
    new-instance v15, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;

    invoke-direct {v15}, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;-><init>()V

    .line 119
    new-instance v13, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    invoke-direct {v13}, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;-><init>()V

    iput-object v13, v15, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->red:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    .line 120
    new-instance v13, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    invoke-direct {v13}, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;-><init>()V

    iput-object v13, v15, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->green:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    .line 121
    new-instance v13, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    invoke-direct {v13}, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;-><init>()V

    iput-object v13, v15, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->blue:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const/16 v13, 0x28

    if-lt v12, v13, :cond_c

    .line 132
    const-string v13, "Width"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    invoke-static {v13, v1, v4, v14}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v13

    .line 133
    const-string v14, "Height"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-static {v14, v1, v4, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v14

    .line 134
    const-string v8, "Planes"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v8, v1, v4, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    .line 135
    const-string v8, "Bits Per Pixel"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {v8, v1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v8

    .line 136
    const-string v5, "Compression"

    move/from16 p2, v8

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-static {v5, v1, v4, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v8

    .line 137
    const-string v5, "Bitmap Data Size"

    move/from16 v19, v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v5, v1, v4, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    .line 138
    const-string v5, "HResolution"

    move/from16 v20, v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v5, v1, v4, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    .line 139
    const-string v5, "VResolution"

    move/from16 v21, v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v5, v1, v4, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    .line 140
    const-string v5, "ColorsUsed"

    move/from16 v22, v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v5, v1, v4, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    .line 141
    const-string v5, "ColorsImportant"

    move/from16 v23, v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v5, v1, v4, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    const/4 v5, 0x3

    move/from16 v24, v3

    const/16 v3, 0x34

    if-ge v12, v3, :cond_2

    if-ne v8, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/16 v27, 0x0

    const/16 v35, 0x0

    goto :goto_1

    .line 145
    :cond_2
    :goto_0
    const-string v5, "RedMask"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v5, v1, v4, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    .line 146
    const-string v5, "GreenMask"

    move/from16 v27, v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v5, v1, v4, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    .line 147
    const-string v5, "BlueMask"

    move/from16 v28, v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v5, v1, v4, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    move/from16 v35, v3

    move/from16 v3, v27

    move/from16 v27, v28

    :goto_1
    const/16 v5, 0x38

    if-lt v12, v5, :cond_3

    .line 153
    const-string v5, "AlphaMask"

    move/from16 v29, v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v5, v1, v4, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    goto :goto_2

    :cond_3
    move/from16 v29, v3

    const/4 v3, 0x0

    :goto_2
    const/16 v5, 0x6c

    if-lt v12, v5, :cond_4

    .line 157
    const-string v5, "ColorSpaceType"

    move/from16 v31, v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v5, v1, v4, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    .line 158
    iget-object v5, v15, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->red:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    move/from16 v32, v3

    const-string v3, "ColorSpaceRedX"

    move/from16 v33, v8

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-static {v3, v1, v4, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    iput v3, v5, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->x:I

    .line 159
    iget-object v3, v15, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->red:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v5, "ColorSpaceRedY"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-static {v5, v1, v4, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    iput v5, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->y:I

    .line 160
    iget-object v3, v15, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->red:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v5, "ColorSpaceRedZ"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-static {v5, v1, v4, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    iput v5, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->z:I

    .line 161
    iget-object v3, v15, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->green:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v5, "ColorSpaceGreenX"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-static {v5, v1, v4, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    iput v5, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->x:I

    .line 162
    iget-object v3, v15, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->green:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v5, "ColorSpaceGreenY"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-static {v5, v1, v4, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    iput v5, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->y:I

    .line 163
    iget-object v3, v15, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->green:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v5, "ColorSpaceGreenZ"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-static {v5, v1, v4, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    iput v5, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->z:I

    .line 164
    iget-object v3, v15, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->blue:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v5, "ColorSpaceBlueX"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-static {v5, v1, v4, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    iput v5, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->x:I

    .line 165
    iget-object v3, v15, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->blue:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v5, "ColorSpaceBlueY"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-static {v5, v1, v4, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    iput v5, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->y:I

    .line 166
    iget-object v3, v15, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->blue:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v5, "ColorSpaceBlueZ"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-static {v5, v1, v4, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    iput v5, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->z:I

    .line 167
    const-string v3, "GammaRed"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {v3, v1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    .line 168
    const-string v5, "GammaGreen"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-static {v5, v1, v4, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    .line 169
    const-string v8, "GammaBlue"

    move/from16 v34, v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v8, v1, v4, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    move/from16 v36, v3

    move/from16 v3, v32

    move/from16 v8, v34

    move/from16 v32, v5

    goto :goto_3

    :cond_4
    move/from16 v31, v3

    move/from16 v33, v8

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/16 v32, 0x0

    const/16 v36, 0x0

    :goto_3
    const/16 v5, 0x7c

    if-lt v12, v5, :cond_5

    .line 173
    const-string v5, "Intent"

    move/from16 v37, v8

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-static {v5, v1, v4, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    .line 174
    const-string v8, "ProfileData"

    move/from16 v16, v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {v8, v1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    .line 175
    const-string v8, "ProfileSize"

    move/from16 v38, v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {v8, v1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    .line 176
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-static {v10, v1, v4, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    move v8, v1

    move v10, v5

    move/from16 v1, v16

    move/from16 v4, v38

    goto :goto_4

    :cond_5
    move/from16 v37, v8

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_4
    if-eqz p3, :cond_b

    .line 183
    const-string v5, "identifier1"

    move/from16 v16, v8

    const/4 v8, 0x1

    invoke-virtual {v0, v5, v6, v8}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 184
    const-string v5, "identifier2"

    invoke-virtual {v0, v5, v7, v8}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 185
    const-string v5, "fileSize"

    const/4 v8, 0x4

    invoke-virtual {v0, v5, v2, v8}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 186
    const-string v5, "reserved"

    invoke-virtual {v0, v5, v9, v8}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 187
    const-string v5, "bitmapDataOffset"

    invoke-virtual {v0, v5, v11, v8}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 188
    const-string v5, "bitmapHeaderSize"

    invoke-virtual {v0, v5, v12, v8}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 189
    const-string v5, "width"

    invoke-virtual {v0, v5, v13, v8}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 190
    const-string v5, "height"

    invoke-virtual {v0, v5, v14, v8}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 191
    const-string v5, "planes"

    move/from16 v17, v14

    move/from16 v8, v19

    const/4 v14, 0x2

    invoke-virtual {v0, v5, v8, v14}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 192
    const-string v5, "bitsPerPixel"

    move/from16 v8, p2

    invoke-virtual {v0, v5, v8, v14}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 193
    const-string v5, "compression"

    move/from16 v14, v33

    const/4 v8, 0x4

    invoke-virtual {v0, v5, v14, v8}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 194
    const-string v5, "bitmapDataSize"

    move/from16 v33, v13

    move/from16 v13, v20

    invoke-virtual {v0, v5, v13, v8}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 195
    const-string v5, "hResolution"

    move/from16 v13, v21

    invoke-virtual {v0, v5, v13, v8}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 196
    const-string v5, "vResolution"

    move/from16 v13, v22

    invoke-virtual {v0, v5, v13, v8}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 197
    const-string v5, "colorsUsed"

    move/from16 v13, v23

    invoke-virtual {v0, v5, v13, v8}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 198
    const-string v5, "colorsImportant"

    move/from16 v13, v24

    invoke-virtual {v0, v5, v13, v8}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const/16 v5, 0x34

    if-ge v12, v5, :cond_7

    const/4 v5, 0x3

    if-ne v14, v5, :cond_6

    goto :goto_5

    :cond_6
    move/from16 v25, v13

    move/from16 v24, v14

    move/from16 v13, v27

    move/from16 v14, v35

    goto :goto_6

    .line 200
    :cond_7
    :goto_5
    const-string v5, "redMask"

    move/from16 v24, v14

    move/from16 v14, v29

    invoke-virtual {v0, v5, v14, v8}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 201
    const-string v5, "greenMask"

    move/from16 v25, v13

    move/from16 v13, v27

    invoke-virtual {v0, v5, v13, v8}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 202
    const-string v5, "blueMask"

    move/from16 v14, v35

    invoke-virtual {v0, v5, v14, v8}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    :goto_6
    const/16 v5, 0x38

    if-lt v12, v5, :cond_8

    .line 205
    const-string v5, "alphaMask"

    move/from16 v26, v14

    move/from16 v14, v31

    invoke-virtual {v0, v5, v14, v8}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    goto :goto_7

    :cond_8
    move/from16 v26, v14

    move/from16 v14, v31

    :goto_7
    const/16 v5, 0x6c

    if-lt v12, v5, :cond_9

    .line 208
    const-string v5, "colorSpaceType"

    invoke-virtual {v0, v5, v3, v8}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 209
    iget-object v5, v15, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->red:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    iget v5, v5, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->x:I

    const-string v8, "colorSpace.red.x"

    move/from16 v27, v13

    const/4 v13, 0x1

    invoke-virtual {v0, v8, v5, v13}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 210
    iget-object v5, v15, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->red:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    iget v5, v5, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->y:I

    const-string v8, "colorSpace.red.y"

    invoke-virtual {v0, v8, v5, v13}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 211
    iget-object v5, v15, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->red:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    iget v5, v5, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->z:I

    const-string v8, "colorSpace.red.z"

    invoke-virtual {v0, v8, v5, v13}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 212
    iget-object v5, v15, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->green:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    iget v5, v5, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->x:I

    const-string v8, "colorSpace.green.x"

    invoke-virtual {v0, v8, v5, v13}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 213
    iget-object v5, v15, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->green:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    iget v5, v5, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->y:I

    const-string v8, "colorSpace.green.y"

    invoke-virtual {v0, v8, v5, v13}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 214
    iget-object v5, v15, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->green:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    iget v5, v5, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->z:I

    const-string v8, "colorSpace.green.z"

    invoke-virtual {v0, v8, v5, v13}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 215
    iget-object v5, v15, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->blue:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    iget v5, v5, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->x:I

    const-string v8, "colorSpace.blue.x"

    invoke-virtual {v0, v8, v5, v13}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 216
    iget-object v5, v15, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->blue:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    iget v5, v5, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->y:I

    const-string v8, "colorSpace.blue.y"

    invoke-virtual {v0, v8, v5, v13}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 217
    iget-object v5, v15, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->blue:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    iget v5, v5, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->z:I

    const-string v8, "colorSpace.blue.z"

    invoke-virtual {v0, v8, v5, v13}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 218
    const-string v5, "gammaRed"

    move/from16 v8, v37

    const/4 v13, 0x4

    invoke-virtual {v0, v5, v8, v13}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 219
    const-string v5, "gammaGreen"

    move/from16 v8, v32

    invoke-virtual {v0, v5, v8, v13}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 220
    const-string v5, "gammaBlue"

    move/from16 v28, v3

    move/from16 v3, v36

    invoke-virtual {v0, v5, v3, v13}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    goto :goto_8

    :cond_9
    move/from16 v28, v3

    move/from16 v27, v13

    move/from16 v3, v36

    move v13, v8

    move/from16 v8, v32

    :goto_8
    const/16 v5, 0x7c

    if-lt v12, v5, :cond_a

    .line 223
    const-string v5, "intent"

    invoke-virtual {v0, v5, v1, v13}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 224
    const-string v5, "profileData"

    invoke-virtual {v0, v5, v4, v13}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 225
    const-string v5, "profileSize"

    invoke-virtual {v0, v5, v10, v13}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 226
    const-string v5, "reservedV5"

    move/from16 v18, v8

    move/from16 v8, v16

    invoke-virtual {v0, v5, v8, v13}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    goto :goto_9

    :cond_a
    move/from16 v18, v8

    move/from16 v8, v16

    goto :goto_9

    :cond_b
    move/from16 v28, v3

    move/from16 v17, v14

    move/from16 v25, v24

    move/from16 v14, v31

    move/from16 v18, v32

    move/from16 v24, v33

    move/from16 v26, v35

    move/from16 v3, v36

    move/from16 v33, v13

    .line 230
    :goto_9
    new-instance v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    move/from16 v30, v18

    move-object v5, v0

    move/from16 v18, p2

    move/from16 v35, v8

    move/from16 v16, v19

    move/from16 v19, v24

    move/from16 v34, v37

    move v8, v2

    move v2, v10

    move v10, v11

    move v11, v12

    move/from16 v12, v33

    move/from16 v24, v25

    move/from16 v13, v17

    move/from16 v25, v29

    move/from16 v29, v14

    move/from16 v14, v16

    move-object/from16 v31, v15

    move/from16 v15, v18

    move/from16 v16, v19

    move/from16 v17, v20

    move/from16 v18, v21

    move/from16 v19, v22

    move/from16 v20, v23

    move/from16 v21, v24

    move/from16 v22, v25

    move/from16 v23, v27

    move/from16 v24, v26

    move/from16 v25, v29

    move/from16 v26, v28

    move-object/from16 v27, v31

    move/from16 v28, v34

    move/from16 v29, v30

    move/from16 v30, v3

    move/from16 v31, v1

    move/from16 v32, v4

    move/from16 v33, v2

    move/from16 v34, v35

    invoke-direct/range {v5 .. v34}, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;-><init>(BBIIIIIIIIIIIIIIIIIIILorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;IIIIIII)V

    return-object v0

    .line 179
    :cond_c
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Invalid/unsupported BMP file"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readBmpHeaderInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Z)Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 477
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 480
    :try_start_1
    invoke-direct {p0, p1, v1, p2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->readBmpHeaderInfo(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;Z)Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 484
    new-array p2, v0, [Ljava/io/Closeable;

    aput-object p1, p2, v2

    invoke-static {v0, p2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v1, p1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v1, p1, v2

    invoke-static {v2, p1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0
.end method

.method private readImageContents(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;Z)Lorg/apache/commons/imaging/formats/bmp/ImageContents;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 300
    invoke-direct/range {p0 .. p3}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->readBmpHeaderInfo(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;Z)Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    move-result-object v2

    .line 302
    iget v3, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->colorsUsed:I

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 304
    iget v3, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    shl-int v3, v4, v3

    :cond_0
    const/4 v5, 0x4

    if-eqz p3, :cond_1

    .line 308
    const-string v6, "ColorsUsed"

    iget v7, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->colorsUsed:I

    invoke-virtual {v0, v6, v7, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 309
    const-string v6, "BitsPerPixel"

    iget v7, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    invoke-virtual {v0, v6, v7, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 310
    const-string v6, "ColorTableSize"

    invoke-virtual {v0, v6, v3, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 311
    const-string v6, "bhi.colorsUsed"

    iget v7, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->colorsUsed:I

    invoke-virtual {v0, v6, v7, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 312
    const-string v6, "Compression"

    iget v7, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->compression:I

    invoke-virtual {v0, v6, v7, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 322
    :cond_1
    iget v6, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->compression:I

    const-string v7, "BMP: Unknown Compression: "

    const/16 v8, 0x8

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v6, :cond_8

    if-eq v6, v4, :cond_6

    if-eq v6, v10, :cond_4

    if-ne v6, v9, :cond_3

    if-eqz p3, :cond_2

    .line 364
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "Compression: BI_BITFIELDS"

    invoke-virtual {v6, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 366
    :cond_2
    iget v6, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    if-gt v6, v8, :cond_a

    goto :goto_0

    .line 376
    :cond_3
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->compression:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-eqz p3, :cond_5

    .line 340
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "Compression: BI_RLE4"

    invoke-virtual {v6, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    mul-int/2addr v3, v5

    move v6, v4

    move v12, v10

    goto :goto_2

    :cond_6
    if-eqz p3, :cond_7

    .line 352
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "Compression: BI_RLE8"

    invoke-virtual {v6, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    mul-int/2addr v3, v5

    move v6, v4

    move v12, v6

    goto :goto_2

    :cond_8
    if-eqz p3, :cond_9

    .line 325
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "Compression: BI_RGB"

    invoke-virtual {v6, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 327
    :cond_9
    iget v6, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    if-gt v6, v8, :cond_a

    :goto_0
    mul-int/2addr v3, v5

    goto :goto_1

    :cond_a
    const/4 v3, 0x0

    :goto_1
    const/4 v6, 0x0

    const/4 v12, 0x0

    .line 381
    :goto_2
    const-string v13, "Not a Valid BMP File"

    if-lez v3, :cond_b

    .line 382
    const-string v14, "ColorTable"

    invoke-static {v14, v1, v3, v13}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v14

    goto :goto_3

    :cond_b
    const/4 v14, 0x0

    :goto_3
    if-eqz p3, :cond_d

    .line 387
    const-string v15, "paletteLength"

    invoke-virtual {v0, v15, v3, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 388
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v10, "ColorTable: "

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v14, :cond_c

    const-string v10, "null"

    goto :goto_4

    :cond_c
    array-length v10, v14

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    :goto_4
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 392
    :cond_d
    iget v10, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->width:I

    iget v11, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->height:I

    mul-int/2addr v10, v11

    .line 394
    iget v11, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    iget v15, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->width:I

    mul-int/2addr v11, v15

    add-int/lit8 v11, v11, 0x7

    div-int/2addr v11, v8

    if-eqz p3, :cond_e

    .line 402
    const-string v8, "bhi.Width"

    iget v15, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->width:I

    invoke-virtual {v0, v8, v15, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 403
    const-string v8, "bhi.Height"

    iget v15, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->height:I

    invoke-virtual {v0, v8, v15, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 404
    const-string v8, "ImageLineLength"

    invoke-virtual {v0, v8, v11, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 406
    const-string v8, "PixelCount"

    invoke-virtual {v0, v8, v10, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 409
    :cond_e
    :goto_5
    rem-int/lit8 v8, v11, 0x4

    if-eqz v8, :cond_f

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 413
    :cond_f
    iget v8, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitmapHeaderSize:I

    add-int/lit8 v8, v8, 0xe

    iget v10, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitmapHeaderSize:I

    const/16 v15, 0x28

    if-ne v10, v15, :cond_10

    iget v10, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->compression:I

    if-ne v10, v9, :cond_10

    const/16 v10, 0xc

    goto :goto_6

    :cond_10
    const/4 v10, 0x0

    :goto_6
    add-int/2addr v8, v10

    add-int v10, v8, v3

    if-eqz p3, :cond_11

    .line 420
    const-string v15, "bhi.BitmapDataOffset"

    iget v9, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitmapDataOffset:I

    invoke-virtual {v0, v15, v9, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 421
    const-string v9, "expectedDataOffset"

    invoke-virtual {v0, v9, v10, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 423
    :cond_11
    iget v9, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitmapDataOffset:I

    sub-int/2addr v9, v10

    if-ltz v9, :cond_19

    if-lez v9, :cond_12

    .line 430
    const-string v3, "BitmapDataOffset"

    invoke-static {v3, v1, v9, v13}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    .line 433
    :cond_12
    iget v3, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->height:I

    mul-int/2addr v3, v11

    if-eqz p3, :cond_13

    .line 436
    const-string v8, "imageDataSize"

    invoke-virtual {v0, v8, v3, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    :cond_13
    if-eqz v6, :cond_14

    .line 441
    invoke-direct {v0, v1, v12}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getRLEBytes(Ljava/io/InputStream;I)[B

    move-result-object v1

    goto :goto_7

    .line 443
    :cond_14
    const-string v6, "ImageData"

    invoke-static {v6, v1, v3, v13}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v1

    :goto_7
    if-eqz p3, :cond_15

    .line 448
    const-string v3, "ImageData.length"

    array-length v6, v1

    invoke-virtual {v0, v3, v6, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 453
    :cond_15
    iget v0, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->compression:I

    if-eqz v0, :cond_18

    if-eq v0, v4, :cond_17

    const/4 v3, 0x2

    if-eq v0, v3, :cond_17

    const/4 v3, 0x3

    if-ne v0, v3, :cond_16

    .line 462
    new-instance v0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;

    invoke-direct {v0, v2, v14, v1}, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;-><init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[B)V

    goto :goto_8

    .line 465
    :cond_16
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->compression:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_17
    new-instance v0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;

    invoke-direct {v0, v2, v14, v1}, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;-><init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[B)V

    goto :goto_8

    .line 459
    :cond_18
    new-instance v0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;

    invoke-direct {v0, v2, v14, v1}, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;-><init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[B)V

    .line 469
    :goto_8
    new-instance v3, Lorg/apache/commons/imaging/formats/bmp/ImageContents;

    invoke-direct {v3, v2, v14, v1, v0}, Lorg/apache/commons/imaging/formats/bmp/ImageContents;-><init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[BLorg/apache/commons/imaging/formats/bmp/PixelParser;)V

    return-object v3

    .line 425
    :cond_19
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "BMP has invalid image data offset: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitmapDataOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", paletteLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", headerSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 633
    const-string v0, "bmp.dumpImageFile"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 635
    invoke-virtual {p0, p2, v0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object p0

    .line 637
    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 639
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 0

    .line 78
    sget-object p0, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object p0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 2

    const/4 p0, 0x1

    .line 83
    new-array p0, p0, [Lorg/apache/commons/imaging/ImageFormat;

    const/4 v0, 0x0

    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->BMP:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v1, p0, v0

    return-object p0
.end method

.method public getBufferedImage(Ljava/io/InputStream;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/image/BufferedImage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 683
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p2, v0

    .line 685
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "VERBOSE"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 687
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 688
    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    :cond_1
    const-string v1, "BUFFERED_IMAGE_FACTORY"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 691
    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 699
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->readImageContents(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;Z)Lorg/apache/commons/imaging/formats/bmp/ImageContents;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 705
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/bmp/ImageContents;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    .line 709
    iget p2, p1, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->width:I

    .line 710
    iget p1, p1, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->height:I

    if-eqz v0, :cond_3

    .line 713
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "width: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 714
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "height: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 715
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "width*height: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int v2, p2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 716
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "width*height*4: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 719
    :cond_3
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/bmp/ImageContents;->pixelParser:Lorg/apache/commons/imaging/formats/bmp/PixelParser;

    .line 720
    new-instance v0, Lorg/apache/commons/imaging/common/ImageBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, p2, p1, v1}, Lorg/apache/commons/imaging/common/ImageBuilder;-><init>(IIZ)V

    .line 721
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/bmp/PixelParser;->processImage(Lorg/apache/commons/imaging/common/ImageBuilder;)V

    .line 723
    invoke-virtual {v0}, Lorg/apache/commons/imaging/common/ImageBuilder;->getBufferedImage()Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0

    .line 702
    :cond_4
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Couldn\'t read BMP Data"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 695
    :cond_5
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .line 696
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown parameter: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/image/BufferedImage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 671
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 672
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getBufferedImage(Ljava/io/InputStream;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 676
    new-array p2, v0, [Ljava/io/Closeable;

    aput-object p1, p2, v1

    invoke-static {v0, p2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 p1, 0x0

    :goto_0
    new-array p2, v0, [Ljava/io/Closeable;

    aput-object p1, p2, v1

    invoke-static {v1, p2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 0

    .line 73
    const-string p0, ".bmp"

    return-object p0
.end method

.method public getFormatCompliance(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/FormatCompliance;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 649
    new-instance v0, Lorg/apache/commons/imaging/FormatCompliance;

    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/FormatCompliance;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 655
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 656
    :try_start_1
    invoke-direct {p0, p1, v0, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->readImageContents(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;Z)Lorg/apache/commons/imaging/formats/bmp/ImageContents;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 659
    new-array p0, v1, [Ljava/io/Closeable;

    aput-object p1, p0, v2

    invoke-static {v1, p0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 p1, 0x0

    :goto_0
    new-array v0, v1, [Ljava/io/Closeable;

    aput-object p1, v0, v2

    invoke-static {v2, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0
.end method

.method public getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/ImageInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-nez v1, :cond_0

    .line 555
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v1, v2

    .line 557
    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "VERBOSE"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 559
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 560
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 572
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 573
    :try_start_1
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v5

    invoke-direct {v0, v4, v5, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->readImageContents(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;Z)Lorg/apache/commons/imaging/formats/bmp/ImageContents;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    new-array v5, v1, [Ljava/io/Closeable;

    aput-object v4, v5, v3

    invoke-static {v1, v5}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    if-eqz v2, :cond_4

    .line 583
    iget-object v4, v2, Lorg/apache/commons/imaging/formats/bmp/ImageContents;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    .line 584
    iget-object v2, v2, Lorg/apache/commons/imaging/formats/bmp/ImageContents;->colorTable:[B

    if-eqz v4, :cond_3

    .line 590
    iget v11, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->height:I

    .line 591
    iget v15, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->width:I

    .line 593
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 596
    iget v7, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    .line 597
    sget-object v9, Lorg/apache/commons/imaging/ImageFormats;->BMP:Lorg/apache/commons/imaging/ImageFormats;

    .line 607
    iget v5, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->hResolution:I

    int-to-double v5, v5

    const-wide v12, 0x3f9a027525460aa6L    # 0.0254

    mul-double/2addr v5, v12

    double-to-int v14, v5

    int-to-double v5, v15

    move-object v10, v2

    int-to-double v1, v14

    div-double/2addr v5, v1

    double-to-float v1, v5

    .line 610
    iget v2, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->vResolution:I

    int-to-double v5, v2

    mul-double/2addr v5, v12

    double-to-int v2, v5

    int-to-double v5, v11

    int-to-double v12, v2

    div-double/2addr v5, v12

    double-to-float v6, v5

    .line 613
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v12, "Bmp ("

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v12, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->identifier1:B

    int-to-char v12, v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v12, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->identifier2:B

    int-to-char v12, v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, ": "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v12, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->identifier1:B

    iget-byte v4, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->identifier2:B

    invoke-direct {v0, v12, v4}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getBmpTypeDescription(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v10, :cond_2

    const/16 v21, 0x1

    goto :goto_1

    :cond_2
    move/from16 v21, v3

    .line 620
    :goto_1
    sget-object v22, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 621
    sget-object v23, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->RLE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 623
    new-instance v3, Lorg/apache/commons/imaging/ImageInfo;

    move-object v5, v3

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v10, "BMP Windows Bitmap"

    const-string v12, "image/x-ms-bmp"

    const/4 v13, -0x1

    move v4, v6

    move-object v6, v0

    move v0, v14

    move v14, v2

    move v2, v15

    move v15, v4

    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    invoke-direct/range {v5 .. v23}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V

    return-object v3

    .line 587
    :cond_3
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "BMP: couldn\'t read header"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_4
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Couldn\'t read BMP Data"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    const/4 v4, 0x0

    :goto_2
    const/4 v1, 0x1

    .line 576
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v4, v1, v3

    invoke-static {v3, v1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v0

    .line 564
    :cond_5
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 565
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown parameter: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/Dimension;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 498
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p2, v0

    .line 500
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "VERBOSE"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 502
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 503
    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 511
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->readBmpHeaderInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Z)Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 517
    new-instance p1, Ljava/awt/Dimension;

    iget p2, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->width:I

    iget p0, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->height:I

    invoke-direct {p1, p2, p0}, Ljava/awt/Dimension;-><init>(II)V

    return-object p1

    .line 514
    :cond_2
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "BMP: couldn\'t read header"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 507
    :cond_3
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .line 508
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown parameter: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/common/ImageMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 68
    const-string p0, "Bmp-Custom"

    return-object p0
.end method

.method public getXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/image/BufferedImage;",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 731
    new-instance p0, Ljava/util/HashMap;

    if-nez p3, :cond_0

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 736
    :goto_0
    const-string p3, "FORMAT"

    invoke-interface {p0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 737
    invoke-interface {p0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    :cond_1
    const-string p3, "PIXEL_DENSITY"

    invoke-interface {p0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 740
    invoke-interface {p0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/commons/imaging/PixelDensity;

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    .line 743
    :goto_1
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 748
    new-instance p0, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {p0}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    const/16 v0, 0x100

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/palette/PaletteFactory;->makeExactRgbPaletteSimple(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/SimplePalette;

    move-result-object p0

    if-nez p0, :cond_3

    .line 753
    new-instance v0, Lorg/apache/commons/imaging/formats/bmp/BmpWriterRgb;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/bmp/BmpWriterRgb;-><init>()V

    goto :goto_2

    .line 755
    :cond_3
    new-instance v0, Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;-><init>(Lorg/apache/commons/imaging/palette/SimplePalette;)V

    .line 758
    :goto_2
    invoke-interface {v0, p1}, Lorg/apache/commons/imaging/formats/bmp/BmpWriter;->getImageData(Ljava/awt/image/BufferedImage;)[B

    move-result-object v1

    .line 759
    new-instance v2, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v2, p2, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    const/16 v3, 0x42

    .line 762
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    const/16 v3, 0x4d

    .line 763
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 765
    invoke-interface {v0}, Lorg/apache/commons/imaging/formats/bmp/BmpWriter;->getPaletteSize()I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    add-int/lit8 p2, p2, 0x36

    array-length v3, v1

    add-int/2addr p2, v3

    .line 769
    invoke-virtual {v2, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/4 p2, 0x0

    .line 771
    invoke-virtual {v2, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 772
    invoke-interface {v0}, Lorg/apache/commons/imaging/formats/bmp/BmpWriter;->getPaletteSize()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x36

    invoke-virtual {v2, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 775
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    .line 776
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p1

    const/16 v4, 0x28

    .line 779
    invoke-virtual {v2, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 780
    invoke-virtual {v2, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 781
    invoke-virtual {v2, p1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/4 p1, 0x1

    .line 782
    invoke-virtual {v2, p1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 783
    invoke-interface {v0}, Lorg/apache/commons/imaging/formats/bmp/BmpWriter;->getBitsPerPixel()I

    move-result p1

    invoke-virtual {v2, p1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 785
    invoke-virtual {v2, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 786
    array-length p1, v1

    invoke-virtual {v2, p1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    if-eqz p3, :cond_4

    .line 787
    invoke-virtual {p3}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityMetres()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int p1, v3

    goto :goto_3

    :cond_4
    move p1, p2

    :goto_3
    invoke-virtual {v2, p1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    if-eqz p3, :cond_5

    .line 789
    invoke-virtual {p3}, Lorg/apache/commons/imaging/PixelDensity;->verticalDensityMetres()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int p1, v3

    goto :goto_4

    :cond_5
    move p1, p2

    :goto_4
    invoke-virtual {v2, p1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    if-nez p0, :cond_6

    .line 792
    invoke-virtual {v2, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    goto :goto_5

    .line 794
    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result p0

    invoke-virtual {v2, p0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 796
    :goto_5
    invoke-virtual {v2, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 800
    invoke-interface {v0, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpWriter;->writePalette(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V

    .line 802
    invoke-virtual {v2, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    return-void

    .line 744
    :cond_7
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .line 745
    new-instance p1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unknown parameter: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

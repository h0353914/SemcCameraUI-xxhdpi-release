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

    const-string v0, ".bmp"

    .line 53
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

    const-string p0, "Windows 3.1x, 95, NT,"

    return-object p0

    :cond_0
    if-ne p1, p0, :cond_1

    const/16 p0, 0x41

    if-ne p2, p0, :cond_1

    const-string p0, "OS/2 Bitmap Array"

    return-object p0

    :cond_1
    const/16 p0, 0x49

    const/16 v0, 0x43

    if-ne p1, v0, :cond_2

    if-ne p2, p0, :cond_2

    const-string p0, "OS/2 Color Icon"

    return-object p0

    :cond_2
    const/16 v1, 0x50

    if-ne p1, v0, :cond_3

    if-ne p2, v1, :cond_3

    const-string p0, "OS/2 Color Pointer"

    return-object p0

    :cond_3
    if-ne p1, p0, :cond_4

    if-ne p2, v0, :cond_4

    const-string p0, "OS/2 Icon"

    return-object p0

    :cond_4
    if-ne p1, v1, :cond_5

    const/16 p0, 0x54

    if-ne p2, p0, :cond_5

    const-string p0, "OS/2 Pointer"

    return-object p0

    :cond_5
    const-string p0, "Unknown"

    return-object p0
.end method

.method private getRLEBytes(Ljava/io/InputStream;I)[B
    .locals 5
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
    :pswitch_0
    if-nez v0, :cond_3

    const-string v1, "RLE a"

    const-string v2, "BMP: Bad RLE"

    .line 246
    invoke-static {v1, p1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    .line 247
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string v3, "RLE b"

    const-string v4, "BMP: Bad RLE"

    .line 248
    invoke-static {v3, p1, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v3

    and-int/2addr v3, v2

    .line 249
    invoke-virtual {p0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-nez v1, :cond_0

    packed-switch v3, :pswitch_data_0

    .line 271
    div-int v1, v3, p2

    .line 272
    rem-int/2addr v3, p2

    if-lez v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_1
    const-string v1, "RLE c"

    const-string v3, "BMP: Bad RLE"

    .line 263
    invoke-static {v1, p1, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    and-int/2addr v1, v2

    .line 264
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string v1, "RLE d"

    const-string v3, "BMP: Bad RLE"

    .line 265
    invoke-static {v1, p1, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    and-int/2addr v1, v2

    .line 266
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 275
    :cond_1
    :goto_1
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    const-string v2, "bytes"

    const-string v3, "RLE: Absolute Mode"

    .line 285
    invoke-static {v2, p1, v1, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v1

    .line 287
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 294
    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private readBmpHeaderInfo(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;Z)Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;
    .locals 75
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "Identifier1"

    const-string v4, "Not a Valid BMP File"

    .line 90
    invoke-static {v3, v1, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v6

    const-string v3, "Identifier2"

    const-string v4, "Not a Valid BMP File"

    .line 91
    invoke-static {v3, v1, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v7

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    const-string v8, "Signature"

    .line 94
    sget-object v9, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->BMP_HEADER_SIGNATURE:[B

    new-array v10, v3, [B

    aput-byte v6, v10, v5

    aput-byte v7, v10, v4

    invoke-virtual {v2, v8, v9, v10}, Lorg/apache/commons/imaging/FormatCompliance;->compareBytes(Ljava/lang/String;[B[B)Z

    :cond_0
    const-string v2, "File Size"

    const-string v8, "Not a Valid BMP File"

    .line 98
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-static {v2, v1, v8, v9}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v8

    const-string v2, "Reserved"

    const-string v9, "Not a Valid BMP File"

    .line 99
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-static {v2, v1, v9, v10}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v9

    const-string v2, "Bitmap Data Offset"

    const-string v10, "Not a Valid BMP File"

    .line 100
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v11

    invoke-static {v2, v1, v10, v11}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v10

    const-string v2, "Bitmap Header Size"

    const-string v11, "Not a Valid BMP File"

    .line 102
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v12

    invoke-static {v2, v1, v11, v12}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v11

    .line 118
    new-instance v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;

    invoke-direct {v2}, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;-><init>()V

    .line 119
    new-instance v12, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    invoke-direct {v12}, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;-><init>()V

    iput-object v12, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->red:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    .line 120
    new-instance v12, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    invoke-direct {v12}, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;-><init>()V

    iput-object v12, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->green:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    .line 121
    new-instance v12, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    invoke-direct {v12}, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;-><init>()V

    iput-object v12, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->blue:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const/16 v12, 0x28

    if-lt v11, v12, :cond_c

    const-string v12, "Width"

    const-string v13, "Not a Valid BMP File"

    .line 132
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    invoke-static {v12, v1, v13, v14}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v12

    const-string v13, "Height"

    const-string v14, "Not a Valid BMP File"

    .line 133
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-static {v13, v1, v14, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v13

    const-string v14, "Planes"

    const-string v15, "Not a Valid BMP File"

    .line 134
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {v14, v1, v15, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v14

    const-string v5, "Bits Per Pixel"

    const-string v15, "Not a Valid BMP File"

    .line 135
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v5, v1, v15, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v15

    const-string v3, "Compression"

    const-string v5, "Not a Valid BMP File"

    .line 136
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v3, v1, v5, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    const-string v4, "Bitmap Data Size"

    const-string v5, "Not a Valid BMP File"

    move/from16 v36, v15

    .line 137
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-static {v4, v1, v5, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    const-string v5, "HResolution"

    const-string v15, "Not a Valid BMP File"

    move/from16 v37, v4

    .line 138
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v5, v1, v15, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    const-string v5, "VResolution"

    const-string v15, "Not a Valid BMP File"

    move/from16 v38, v4

    .line 139
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v5, v1, v15, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    const-string v5, "ColorsUsed"

    const-string v15, "Not a Valid BMP File"

    move/from16 v39, v4

    .line 140
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v5, v1, v15, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    const-string v5, "ColorsImportant"

    const-string v15, "Not a Valid BMP File"

    move/from16 v40, v4

    .line 141
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v5, v1, v15, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    const/4 v5, 0x3

    const/16 v15, 0x34

    if-ge v11, v15, :cond_2

    if-ne v3, v5, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v41, v4

    const/4 v4, 0x0

    const/4 v15, 0x0

    const/16 v44, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const-string v5, "RedMask"

    const-string v15, "Not a Valid BMP File"

    move/from16 v41, v4

    .line 145
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v5, v1, v15, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    const-string v5, "GreenMask"

    const-string v15, "Not a Valid BMP File"

    move/from16 v42, v4

    .line 146
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v5, v1, v15, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    const-string v5, "BlueMask"

    const-string v15, "Not a Valid BMP File"

    move/from16 v43, v4

    .line 147
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v5, v1, v15, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    move/from16 v44, v4

    move/from16 v4, v42

    move/from16 v15, v43

    :goto_1
    const/16 v5, 0x38

    if-lt v11, v5, :cond_3

    const-string v5, "AlphaMask"

    move/from16 v45, v15

    const-string v15, "Not a Valid BMP File"

    move/from16 v46, v4

    .line 153
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v5, v1, v15, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    goto :goto_2

    :cond_3
    move/from16 v46, v4

    move/from16 v45, v15

    const/4 v4, 0x0

    :goto_2
    const/16 v5, 0x6c

    if-lt v11, v5, :cond_4

    const-string v15, "ColorSpaceType"

    const-string v5, "Not a Valid BMP File"

    move/from16 v47, v4

    .line 157
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v15, v1, v5, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    .line 158
    iget-object v5, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->red:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v15, "ColorSpaceRedX"

    move/from16 v48, v4

    const-string v4, "Not a Valid BMP File"

    move/from16 v49, v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v15, v1, v4, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    iput v3, v5, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->x:I

    .line 159
    iget-object v3, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->red:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v4, "ColorSpaceRedY"

    const-string v5, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-static {v4, v1, v5, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    iput v4, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->y:I

    .line 160
    iget-object v3, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->red:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v4, "ColorSpaceRedZ"

    const-string v5, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-static {v4, v1, v5, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    iput v4, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->z:I

    .line 161
    iget-object v3, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->green:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v4, "ColorSpaceGreenX"

    const-string v5, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-static {v4, v1, v5, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    iput v4, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->x:I

    .line 162
    iget-object v3, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->green:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v4, "ColorSpaceGreenY"

    const-string v5, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-static {v4, v1, v5, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    iput v4, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->y:I

    .line 163
    iget-object v3, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->green:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v4, "ColorSpaceGreenZ"

    const-string v5, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-static {v4, v1, v5, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    iput v4, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->z:I

    .line 164
    iget-object v3, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->blue:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v4, "ColorSpaceBlueX"

    const-string v5, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-static {v4, v1, v5, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    iput v4, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->x:I

    .line 165
    iget-object v3, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->blue:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v4, "ColorSpaceBlueY"

    const-string v5, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-static {v4, v1, v5, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    iput v4, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->y:I

    .line 166
    iget-object v3, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->blue:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v4, "ColorSpaceBlueZ"

    const-string v5, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-static {v4, v1, v5, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    iput v4, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->z:I

    const-string v3, "GammaRed"

    const-string v4, "Not a Valid BMP File"

    .line 167
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {v3, v1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    const-string v4, "GammaGreen"

    const-string v5, "Not a Valid BMP File"

    .line 168
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-static {v4, v1, v5, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    const-string v5, "GammaBlue"

    const-string v15, "Not a Valid BMP File"

    move/from16 v50, v3

    .line 169
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v5, v1, v15, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    move/from16 v51, v3

    move v15, v4

    move/from16 v3, v48

    move/from16 v4, v50

    goto :goto_3

    :cond_4
    move/from16 v49, v3

    move/from16 v47, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v15, 0x0

    const/16 v51, 0x0

    :goto_3
    const/16 v5, 0x7c

    if-lt v11, v5, :cond_5

    const-string v5, "Intent"

    move/from16 v52, v15

    const-string v15, "Not a Valid BMP File"

    move/from16 v53, v4

    .line 173
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v5, v1, v15, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    const-string v5, "ProfileData"

    const-string v15, "Not a Valid BMP File"

    move/from16 v54, v4

    .line 174
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v5, v1, v15, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    const-string v5, "ProfileSize"

    const-string v15, "Not a Valid BMP File"

    move/from16 v55, v4

    .line 175
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v5, v1, v15, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    const-string v5, "Reserved"

    const-string v15, "Not a Valid BMP File"

    move/from16 v56, v4

    .line 176
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v5, v1, v15, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    move/from16 v57, v1

    move/from16 v4, v54

    move/from16 v15, v55

    move/from16 v5, v56

    goto :goto_4

    :cond_5
    move/from16 v53, v4

    move/from16 v52, v15

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v15, 0x0

    const/16 v57, 0x0

    :goto_4
    if-eqz p3, :cond_b

    const-string v1, "identifier1"

    move/from16 v58, v5

    const/4 v5, 0x1

    .line 183
    invoke-virtual {v0, v1, v6, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v1, "identifier2"

    .line 184
    invoke-virtual {v0, v1, v7, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v1, "fileSize"

    const/4 v5, 0x4

    .line 185
    invoke-virtual {v0, v1, v8, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v1, "reserved"

    .line 186
    invoke-virtual {v0, v1, v9, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v1, "bitmapDataOffset"

    .line 187
    invoke-virtual {v0, v1, v10, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v1, "bitmapHeaderSize"

    .line 188
    invoke-virtual {v0, v1, v11, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v1, "width"

    .line 189
    invoke-virtual {v0, v1, v12, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v1, "height"

    .line 190
    invoke-virtual {v0, v1, v13, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v1, "planes"

    const/4 v5, 0x2

    .line 191
    invoke-virtual {v0, v1, v14, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v1, "bitsPerPixel"

    move/from16 v59, v14

    move/from16 v14, v36

    .line 192
    invoke-virtual {v0, v1, v14, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v1, "compression"

    move/from16 v60, v14

    move/from16 v5, v49

    const/4 v14, 0x4

    .line 193
    invoke-virtual {v0, v1, v5, v14}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v1, "bitmapDataSize"

    move/from16 v61, v13

    move/from16 v13, v37

    .line 194
    invoke-virtual {v0, v1, v13, v14}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v1, "hResolution"

    move/from16 v62, v13

    move/from16 v13, v38

    .line 195
    invoke-virtual {v0, v1, v13, v14}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v1, "vResolution"

    move/from16 v63, v13

    move/from16 v13, v39

    .line 196
    invoke-virtual {v0, v1, v13, v14}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v1, "colorsUsed"

    move/from16 v64, v13

    move/from16 v13, v40

    .line 197
    invoke-virtual {v0, v1, v13, v14}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v1, "colorsImportant"

    move/from16 v65, v13

    move/from16 v13, v41

    .line 198
    invoke-virtual {v0, v1, v13, v14}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const/16 v1, 0x34

    if-ge v11, v1, :cond_7

    const/4 v1, 0x3

    if-ne v5, v1, :cond_6

    goto :goto_6

    :cond_6
    move/from16 v68, v5

    move/from16 v66, v13

    move/from16 v5, v44

    move/from16 v13, v45

    move/from16 v67, v46

    :goto_5
    const/16 v1, 0x38

    goto :goto_7

    :cond_7
    :goto_6
    const-string v1, "redMask"

    move/from16 v66, v13

    move/from16 v13, v46

    .line 200
    invoke-virtual {v0, v1, v13, v14}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v1, "greenMask"

    move/from16 v67, v13

    move/from16 v13, v45

    .line 201
    invoke-virtual {v0, v1, v13, v14}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v1, "blueMask"

    move/from16 v68, v5

    move/from16 v5, v44

    .line 202
    invoke-virtual {v0, v1, v5, v14}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    goto :goto_5

    :goto_7
    if-lt v11, v1, :cond_8

    const-string v1, "alphaMask"

    move/from16 v69, v13

    move/from16 v13, v47

    .line 205
    invoke-virtual {v0, v1, v13, v14}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    goto :goto_8

    :cond_8
    move/from16 v69, v13

    move/from16 v13, v47

    :goto_8
    const/16 v1, 0x6c

    if-lt v11, v1, :cond_9

    const-string v1, "colorSpaceType"

    .line 208
    invoke-virtual {v0, v1, v3, v14}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v1, "colorSpace.red.x"

    .line 209
    iget-object v14, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->red:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    iget v14, v14, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->x:I

    move/from16 v70, v5

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v14, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v1, "colorSpace.red.y"

    .line 210
    iget-object v14, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->red:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    iget v14, v14, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->y:I

    invoke-virtual {v0, v1, v14, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v1, "colorSpace.red.z"

    .line 211
    iget-object v14, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->red:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    iget v14, v14, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->z:I

    invoke-virtual {v0, v1, v14, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v1, "colorSpace.green.x"

    .line 212
    iget-object v14, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->green:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    iget v14, v14, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->x:I

    invoke-virtual {v0, v1, v14, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v1, "colorSpace.green.y"

    .line 213
    iget-object v14, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->green:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    iget v14, v14, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->y:I

    invoke-virtual {v0, v1, v14, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v1, "colorSpace.green.z"

    .line 214
    iget-object v14, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->green:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    iget v14, v14, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->z:I

    invoke-virtual {v0, v1, v14, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v1, "colorSpace.blue.x"

    .line 215
    iget-object v14, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->blue:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    iget v14, v14, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->x:I

    invoke-virtual {v0, v1, v14, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v1, "colorSpace.blue.y"

    .line 216
    iget-object v14, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->blue:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    iget v14, v14, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->y:I

    invoke-virtual {v0, v1, v14, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v1, "colorSpace.blue.z"

    .line 217
    iget-object v14, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->blue:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    iget v14, v14, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->z:I

    invoke-virtual {v0, v1, v14, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v1, "gammaRed"

    move/from16 v14, v53

    const/4 v5, 0x4

    .line 218
    invoke-virtual {v0, v1, v14, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v1, "gammaGreen"

    move-object/from16 v71, v2

    move/from16 v2, v52

    .line 219
    invoke-virtual {v0, v1, v2, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v1, "gammaBlue"

    move/from16 v72, v2

    move/from16 v2, v51

    .line 220
    invoke-virtual {v0, v1, v2, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    goto :goto_9

    :cond_9
    move-object/from16 v71, v2

    move/from16 v70, v5

    move v5, v14

    move/from16 v2, v51

    move/from16 v72, v52

    move/from16 v14, v53

    :goto_9
    const/16 v1, 0x7c

    if-lt v11, v1, :cond_a

    const-string v1, "intent"

    .line 223
    invoke-virtual {v0, v1, v4, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v1, "profileData"

    .line 224
    invoke-virtual {v0, v1, v15, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v1, "profileSize"

    move/from16 v73, v2

    move/from16 v2, v58

    .line 225
    invoke-virtual {v0, v1, v2, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v1, "reservedV5"

    move/from16 v74, v2

    move/from16 v2, v57

    .line 226
    invoke-virtual {v0, v1, v2, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    goto :goto_a

    :cond_a
    move/from16 v73, v2

    move/from16 v2, v57

    move/from16 v74, v58

    goto :goto_a

    :cond_b
    move-object/from16 v71, v2

    move/from16 v74, v5

    move/from16 v61, v13

    move/from16 v59, v14

    move/from16 v60, v36

    move/from16 v62, v37

    move/from16 v63, v38

    move/from16 v64, v39

    move/from16 v65, v40

    move/from16 v66, v41

    move/from16 v70, v44

    move/from16 v69, v45

    move/from16 v67, v46

    move/from16 v13, v47

    move/from16 v68, v49

    move/from16 v73, v51

    move/from16 v72, v52

    move/from16 v14, v53

    move/from16 v2, v57

    .line 230
    :goto_a
    new-instance v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    move/from16 v1, v68

    move/from16 v35, v70

    move/from16 v30, v73

    move/from16 v56, v74

    move-object v5, v0

    move/from16 v25, v13

    move/from16 v17, v62

    move/from16 v18, v63

    move/from16 v19, v64

    move/from16 v20, v65

    move/from16 v21, v66

    move/from16 v42, v67

    move/from16 v43, v69

    move/from16 v13, v61

    move/from16 v50, v14

    move/from16 v16, v60

    move/from16 v14, v59

    move/from16 v55, v15

    move/from16 v29, v72

    move/from16 v15, v16

    move/from16 v16, v1

    move/from16 v22, v42

    move/from16 v23, v43

    move/from16 v24, v35

    move/from16 v26, v3

    move-object/from16 v27, v71

    move/from16 v28, v50

    move/from16 v31, v4

    move/from16 v32, v55

    move/from16 v33, v56

    move/from16 v34, v2

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

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 477
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 480
    :try_start_1
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->readBmpHeaderInfo(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;Z)Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 484
    new-array p2, v1, [Ljava/io/Closeable;

    aput-object p1, p2, v2

    invoke-static {v1, p2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object p1, v0

    :goto_0
    new-array p2, v1, [Ljava/io/Closeable;

    aput-object p1, p2, v2

    invoke-static {v2, p2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0
.end method

.method private readImageContents(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;Z)Lorg/apache/commons/imaging/formats/bmp/ImageContents;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->readBmpHeaderInfo(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;Z)Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    move-result-object p2

    .line 302
    iget v0, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->colorsUsed:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 304
    iget v0, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    shl-int v0, v1, v0

    :cond_0
    const/4 v2, 0x4

    if-eqz p3, :cond_1

    const-string v3, "ColorsUsed"

    .line 308
    iget v4, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->colorsUsed:I

    invoke-virtual {p0, v3, v4, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v3, "BitsPerPixel"

    .line 309
    iget v4, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    invoke-virtual {p0, v3, v4, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v3, "ColorTableSize"

    .line 310
    invoke-virtual {p0, v3, v0, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v3, "bhi.colorsUsed"

    .line 311
    iget v4, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->colorsUsed:I

    invoke-virtual {p0, v3, v4, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v3, "Compression"

    .line 312
    iget v4, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->compression:I

    invoke-virtual {p0, v3, v4, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 322
    :cond_1
    iget v3, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->compression:I

    const/16 v4, 0x8

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    .line 376
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "BMP: Unknown Compression: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->compression:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    if-eqz p3, :cond_2

    .line 364
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Compression: BI_BITFIELDS"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 366
    :cond_2
    iget v1, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    if-gt v1, v4, :cond_6

    mul-int/2addr v0, v2

    goto :goto_1

    :pswitch_1
    if-eqz p3, :cond_3

    .line 340
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Compression: BI_RLE4"

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    mul-int/2addr v0, v2

    const/4 v3, 0x2

    goto :goto_2

    :pswitch_2
    if-eqz p3, :cond_4

    .line 352
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Compression: BI_RLE8"

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    mul-int/2addr v0, v2

    :goto_0
    move v3, v1

    goto :goto_2

    :pswitch_3
    if-eqz p3, :cond_5

    .line 325
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Compression: BI_RGB"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 327
    :cond_5
    iget v1, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    if-gt v1, v4, :cond_6

    mul-int/2addr v0, v2

    :goto_1
    move v1, v5

    goto :goto_0

    :cond_6
    move v0, v5

    move v1, v0

    goto :goto_0

    :goto_2
    const/4 v6, 0x0

    if-lez v0, :cond_7

    const-string v6, "ColorTable"

    const-string v7, "Not a Valid BMP File"

    .line 382
    invoke-static {v6, p1, v0, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v6

    :cond_7
    if-eqz p3, :cond_9

    const-string v7, "paletteLength"

    .line 387
    invoke-virtual {p0, v7, v0, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 388
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ColorTable: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_8

    const-string v9, "null"

    goto :goto_3

    :cond_8
    array-length v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    :goto_3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 392
    :cond_9
    iget v7, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->width:I

    iget v8, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->height:I

    mul-int/2addr v7, v8

    .line 394
    iget v8, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    iget v9, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->width:I

    mul-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x7

    div-int/2addr v8, v4

    if-eqz p3, :cond_a

    const-string v4, "bhi.Width"

    .line 402
    iget v9, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->width:I

    invoke-virtual {p0, v4, v9, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "bhi.Height"

    .line 403
    iget v9, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->height:I

    invoke-virtual {p0, v4, v9, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "ImageLineLength"

    .line 404
    invoke-virtual {p0, v4, v8, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "PixelCount"

    .line 406
    invoke-virtual {p0, v4, v7, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 409
    :cond_a
    :goto_4
    rem-int/lit8 v4, v8, 0x4

    if-eqz v4, :cond_b

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_b
    const/16 v4, 0xe

    .line 413
    iget v7, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitmapHeaderSize:I

    add-int/2addr v4, v7

    iget v7, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitmapHeaderSize:I

    const/16 v9, 0x28

    if-ne v7, v9, :cond_c

    iget v7, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->compression:I

    const/4 v9, 0x3

    if-ne v7, v9, :cond_c

    const/16 v5, 0xc

    :cond_c
    add-int/2addr v4, v5

    add-int v5, v4, v0

    if-eqz p3, :cond_d

    const-string v7, "bhi.BitmapDataOffset"

    .line 420
    iget v9, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitmapDataOffset:I

    invoke-virtual {p0, v7, v9, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v7, "expectedDataOffset"

    .line 421
    invoke-virtual {p0, v7, v5, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 423
    :cond_d
    iget v7, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitmapDataOffset:I

    sub-int/2addr v7, v5

    if-gez v7, :cond_e

    .line 425
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "BMP has invalid image data offset: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitmapDataOffset:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (expected: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", paletteLength: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", headerSize: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    if-lez v7, :cond_f

    const-string v0, "BitmapDataOffset"

    const-string v4, "Not a Valid BMP File"

    .line 430
    invoke-static {v0, p1, v7, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    .line 433
    :cond_f
    iget v0, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->height:I

    mul-int/2addr v0, v8

    if-eqz p3, :cond_10

    const-string v4, "imageDataSize"

    .line 436
    invoke-virtual {p0, v4, v0, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    :cond_10
    if-eqz v1, :cond_11

    .line 441
    invoke-direct {p0, p1, v3}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getRLEBytes(Ljava/io/InputStream;I)[B

    move-result-object p1

    goto :goto_5

    :cond_11
    const-string v1, "ImageData"

    const-string v3, "Not a Valid BMP File"

    .line 443
    invoke-static {v1, p1, v0, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object p1

    :goto_5
    if-eqz p3, :cond_12

    const-string p3, "ImageData.length"

    .line 448
    array-length v0, p1

    invoke-virtual {p0, p3, v0, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 453
    :cond_12
    iget p0, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->compression:I

    packed-switch p0, :pswitch_data_1

    .line 465
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "BMP: Unknown Compression: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->compression:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 462
    :pswitch_4
    new-instance p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;

    invoke-direct {p0, p2, v6, p1}, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;-><init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[B)V

    goto :goto_6

    .line 456
    :pswitch_5
    new-instance p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;

    invoke-direct {p0, p2, v6, p1}, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;-><init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[B)V

    goto :goto_6

    .line 459
    :pswitch_6
    new-instance p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;

    invoke-direct {p0, p2, v6, p1}, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;-><init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[B)V

    .line 469
    :goto_6
    new-instance p3, Lorg/apache/commons/imaging/formats/bmp/ImageContents;

    invoke-direct {p3, p2, v6, p1, p0}, Lorg/apache/commons/imaging/formats/bmp/ImageContents;-><init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[BLorg/apache/commons/imaging/formats/bmp/PixelParser;)V

    return-object p3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch
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

    const-string v0, "bmp.dumpImageFile"

    .line 633
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 635
    invoke-virtual {p0, p2, v0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object p0

    const-string p2, ""

    .line 637
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string p0, ""

    .line 639
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

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

    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->BMP:Lorg/apache/commons/imaging/ImageFormats;

    const/4 v1, 0x0

    aput-object v0, p0, v1

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

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "VERBOSE"

    .line 687
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "VERBOSE"

    .line 688
    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v1, "BUFFERED_IMAGE_FACTORY"

    .line 690
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "BUFFERED_IMAGE_FACTORY"

    .line 691
    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 695
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .line 696
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown parameter: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 699
    :cond_3
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->readImageContents(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;Z)Lorg/apache/commons/imaging/formats/bmp/ImageContents;

    move-result-object p0

    if-nez p0, :cond_4

    .line 702
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Couldn\'t read BMP Data"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 705
    :cond_4
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/bmp/ImageContents;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    .line 709
    iget p2, p1, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->width:I

    .line 710
    iget p1, p1, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->height:I

    if-eqz v0, :cond_5

    .line 713
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 714
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 715
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "width*height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int v2, p2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 716
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width*height*4: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 719
    :cond_5
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
    .locals 23
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

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    if-nez v2, :cond_0

    .line 555
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v2, v3

    .line 557
    :goto_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "VERBOSE"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "VERBOSE"

    .line 559
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "VERBOSE"

    .line 560
    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 564
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 565
    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 572
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 573
    :try_start_1
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v2

    invoke-direct {v1, v6, v2, v3}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->readImageContents(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;Z)Lorg/apache/commons/imaging/formats/bmp/ImageContents;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    new-array v3, v4, [Ljava/io/Closeable;

    aput-object v6, v3, v5

    invoke-static {v4, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    if-nez v2, :cond_3

    .line 580
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "Couldn\'t read BMP Data"

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 583
    :cond_3
    iget-object v3, v2, Lorg/apache/commons/imaging/formats/bmp/ImageContents;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    .line 584
    iget-object v2, v2, Lorg/apache/commons/imaging/formats/bmp/ImageContents;->colorTable:[B

    if-nez v3, :cond_4

    .line 587
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "BMP: couldn\'t read header"

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 590
    :cond_4
    iget v9, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->height:I

    .line 591
    iget v15, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->width:I

    .line 593
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 596
    iget v7, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    .line 597
    sget-object v8, Lorg/apache/commons/imaging/ImageFormats;->BMP:Lorg/apache/commons/imaging/ImageFormats;

    .line 607
    iget v10, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->hResolution:I

    int-to-double v10, v10

    const-wide v12, 0x3f9a027525460aa6L    # 0.0254

    mul-double/2addr v10, v12

    double-to-int v14, v10

    int-to-double v10, v15

    int-to-double v4, v14

    div-double/2addr v10, v4

    double-to-float v11, v10

    .line 610
    iget v4, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->vResolution:I

    int-to-double v4, v4

    mul-double/2addr v4, v12

    double-to-int v12, v4

    int-to-double v4, v9

    move/from16 v22, v11

    int-to-double v10, v12

    div-double/2addr v4, v10

    double-to-float v13, v4

    .line 613
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bmp ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v5, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->identifier1:B

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-byte v5, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->identifier2:B

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v5, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->identifier1:B

    iget-byte v3, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->identifier2:B

    invoke-direct {v1, v5, v3}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getBmpTypeDescription(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_5

    const/16 v19, 0x1

    goto :goto_1

    :cond_5
    const/16 v19, 0x0

    .line 620
    :goto_1
    sget-object v20, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 621
    sget-object v21, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->RLE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 623
    new-instance v1, Lorg/apache/commons/imaging/ImageInfo;

    const-string v2, "BMP Windows Bitmap"

    const-string v10, "image/x-ms-bmp"

    const/4 v11, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v3, v1

    move v5, v7

    move-object v7, v8

    move-object v8, v2

    move/from16 v2, v22

    move/from16 v16, v15

    move v15, v2

    invoke-direct/range {v3 .. v21}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V

    return-object v1

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v6, v2

    :goto_2
    move v2, v4

    .line 576
    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    invoke-static {v3, v2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v1
.end method

.method public getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 2
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

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "VERBOSE"

    .line 502
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "VERBOSE"

    .line 503
    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 507
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .line 508
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown parameter: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 511
    :cond_2
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->readBmpHeaderInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Z)Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    move-result-object p0

    if-nez p0, :cond_3

    .line 514
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "BMP: couldn\'t read header"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 517
    :cond_3
    new-instance p1, Ljava/awt/Dimension;

    iget p2, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->width:I

    iget p0, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->height:I

    invoke-direct {p1, p2, p0}, Ljava/awt/Dimension;-><init>(II)V

    return-object p1
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
    .locals 6
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

    if-nez p3, :cond_0

    .line 731
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    const/4 p3, 0x0

    const-string v0, "FORMAT"

    .line 736
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FORMAT"

    .line 737
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "PIXEL_DENSITY"

    .line 739
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p3, "PIXEL_DENSITY"

    .line 740
    invoke-interface {p0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/commons/imaging/PixelDensity;

    .line 743
    :cond_2
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 744
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .line 745
    new-instance p1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown parameter: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 748
    :cond_3
    new-instance p0, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {p0}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    const/16 v0, 0x100

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/palette/PaletteFactory;->makeExactRgbPaletteSimple(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/SimplePalette;

    move-result-object p0

    if-nez p0, :cond_4

    .line 753
    new-instance v0, Lorg/apache/commons/imaging/formats/bmp/BmpWriterRgb;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/bmp/BmpWriterRgb;-><init>()V

    goto :goto_1

    .line 755
    :cond_4
    new-instance v0, Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;-><init>(Lorg/apache/commons/imaging/palette/SimplePalette;)V

    .line 758
    :goto_1
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

    const/4 v3, 0x4

    mul-int/2addr p2, v3

    const/16 v4, 0x36

    add-int/2addr p2, v4

    array-length v5, v1

    add-int/2addr p2, v5

    .line 769
    invoke-virtual {v2, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/4 p2, 0x0

    .line 771
    invoke-virtual {v2, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 772
    invoke-interface {v0}, Lorg/apache/commons/imaging/formats/bmp/BmpWriter;->getPaletteSize()I

    move-result v5

    mul-int/2addr v3, v5

    add-int/2addr v4, v3

    invoke-virtual {v2, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

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

    if-eqz p3, :cond_5

    .line 787
    invoke-virtual {p3}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityMetres()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int p1, v3

    goto :goto_2

    :cond_5
    move p1, p2

    :goto_2
    invoke-virtual {v2, p1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    if-eqz p3, :cond_6

    .line 789
    invoke-virtual {p3}, Lorg/apache/commons/imaging/PixelDensity;->verticalDensityMetres()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int p1, v3

    goto :goto_3

    :cond_6
    move p1, p2

    :goto_3
    invoke-virtual {v2, p1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    if-nez p0, :cond_7

    .line 792
    invoke-virtual {v2, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    goto :goto_4

    .line 794
    :cond_7
    invoke-virtual {p0}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result p0

    invoke-virtual {v2, p0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 796
    :goto_4
    invoke-virtual {v2, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 800
    invoke-interface {v0, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpWriter;->writePalette(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V

    .line 802
    invoke-virtual {v2, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    return-void
.end method

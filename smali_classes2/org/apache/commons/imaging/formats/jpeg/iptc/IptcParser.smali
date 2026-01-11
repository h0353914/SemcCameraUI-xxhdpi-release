.class public Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;
.super Lorg/apache/commons/imaging/common/BinaryFileParser;
.source "IptcParser.java"


# static fields
.field private static final APP13_BYTE_ORDER:Ljava/nio/ByteOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->APP13_BYTE_ORDER:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;-><init>()V

    .line 47
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method


# virtual methods
.method public isPhotoshopJpegSegment([B)Z
    .locals 3

    .line 51
    sget-object p0, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->PHOTOSHOP_IDENTIFICATION_STRING:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-static {p1, p0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->startsWith([BLorg/apache/commons/imaging/common/BinaryConstant;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 56
    :cond_0
    sget-object p0, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->PHOTOSHOP_IDENTIFICATION_STRING:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/BinaryConstant;->size()I

    move-result p0

    add-int/lit8 v1, p0, 0x4

    .line 57
    array-length v2, p1

    if-gt v1, v2, :cond_1

    sget-object v1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->APP13_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-static {p1, p0, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->toInt([BILjava/nio/ByteOrder;)I

    move-result p0

    sget p1, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->CONST_8BIM:I

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected parseAllBlocks([BZZ)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BZZ)",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 253
    const-string v1, ""

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 258
    :try_start_0
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 263
    :try_start_1
    sget-object v4, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->PHOTOSHOP_IDENTIFICATION_STRING:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-virtual {v4}, Lorg/apache/commons/imaging/common/BinaryConstant;->size()I

    move-result v4

    const-string v7, "App13 Segment missing identification string"

    invoke-static {v1, v6, v4, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v4

    .line 266
    sget-object v7, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->PHOTOSHOP_IDENTIFICATION_STRING:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-virtual {v7, v4}, Lorg/apache/commons/imaging/common/BinaryConstant;->equals([B)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_a

    .line 275
    :cond_0
    :goto_0
    :try_start_2
    const-string v4, "Image Resource Block missing identification string"

    sget-object v7, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->APP13_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-static {v1, v6, v4, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 280
    :try_start_3
    sget v8, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->CONST_8BIM:I

    if-ne v4, v8, :cond_9

    .line 285
    const-string v4, "Image Resource Block missing type"

    invoke-static {v1, v6, v4, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 286
    const-string v8, ")"

    const-string v9, " (0x"

    if-eqz p2, :cond_1

    .line 287
    :try_start_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "blockType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    .line 290
    :cond_1
    const-string v10, "Name length"

    const-string v11, "Image Resource Block missing name length"

    invoke-static {v10, v6, v11}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v10

    if-eqz p2, :cond_2

    if-lez v10, :cond_2

    .line 292
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "blockNameLength: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 296
    :cond_2
    const-string v11, "Image Resource Block missing padding byte"

    const-string v12, "Padding byte"

    if-nez v10, :cond_3

    .line 297
    :try_start_5
    const-string v10, "Block name bytes"

    const-string v13, "Image Resource Block has invalid name"

    invoke-static {v10, v6, v13}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    .line 298
    new-array v10, v5, [B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 301
    :cond_3
    :try_start_6
    const-string v13, "Invalid Image Resource Block name"

    invoke-static {v1, v6, v10, v13}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v13
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 310
    :try_start_7
    rem-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_4

    .line 311
    invoke-static {v12, v6, v11}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    :cond_4
    move-object v10, v13

    .line 315
    :goto_1
    const-string v13, "Image Resource Block missing size"

    invoke-static {v1, v6, v13, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v7

    if-eqz p2, :cond_5

    .line 317
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "blockSize: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    .line 324
    :cond_5
    array-length v8, v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-gt v7, v8, :cond_7

    .line 330
    :try_start_8
    const-string v8, "Invalid Image Resource Block data"

    invoke-static {v1, v6, v7, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v8
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 338
    :try_start_9
    new-instance v9, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;

    invoke-direct {v9, v4, v10, v8}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;-><init>(I[B[B)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_0

    .line 341
    invoke-static {v12, v6, v11}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    goto/16 :goto_0

    :catch_0
    move-exception v0

    if-nez p3, :cond_6

    goto :goto_2

    .line 333
    :cond_6
    throw v0

    .line 325
    :cond_7
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Block Size : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " > "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    if-nez p3, :cond_8

    goto :goto_2

    .line 305
    :cond_8
    throw v0

    .line 281
    :cond_9
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Invalid Image Resource Block Signature"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 348
    :catch_2
    :goto_2
    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v6, v0, v5

    invoke-static {v3, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v2

    .line 267
    :cond_a
    :try_start_a
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Not a Photoshop App13 Segment"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_0
    move-exception v0

    move-object v4, v6

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 348
    :goto_3
    new-array v1, v3, [Ljava/io/Closeable;

    aput-object v4, v1, v5

    invoke-static {v5, v1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v0
.end method

.method protected parseIPTCBlock([BZ)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BZ)",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 131
    array-length v4, p1

    if-ge v3, v4, :cond_b

    .line 132
    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    .line 133
    const-string v5, ")"

    const-string v6, " (0x"

    if-eqz p2, :cond_1

    .line 134
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "tagMarker: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    :cond_1
    const/16 v7, 0x1c

    if-eq v4, v7, :cond_3

    if-eqz p2, :cond_2

    .line 139
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "Unexpected record tag marker in IPTC data."

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    return-object v0

    :cond_3
    add-int/lit8 v4, v2, 0x2

    .line 144
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    if-eqz p2, :cond_4

    .line 146
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "recordNumber: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    .line 167
    :cond_4
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    if-eqz p2, :cond_5

    .line 169
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "recordType: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v5, v2, 0x3

    .line 173
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v5

    add-int/lit8 v2, v2, 0x5

    const/16 v6, 0x7fff

    if-le v5, v6, :cond_6

    const/4 v6, 0x1

    goto :goto_1

    :cond_6
    move v6, v1

    :goto_1
    and-int/lit16 v7, v5, 0x7fff

    if-eqz v6, :cond_7

    if-eqz p2, :cond_7

    .line 179
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "extendedDataset. dataFieldCountLength: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    :cond_7
    if-eqz v6, :cond_8

    return-object v0

    .line 187
    :cond_8
    invoke-static {p1, v2, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->slice([BII)[B

    move-result-object v6

    add-int/2addr v2, v5

    const/4 v5, 0x2

    if-eq v3, v5, :cond_9

    goto/16 :goto_0

    :cond_9
    if-nez v4, :cond_a

    if-eqz p2, :cond_0

    .line 199
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ignore record version record! "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 229
    :cond_a
    new-instance v3, Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    invoke-direct {v3, v6, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 231
    invoke-static {v4}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcTypeLookup;->getIptcType(I)Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;

    move-result-object v4

    .line 244
    new-instance v5, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;

    invoke-direct {v5, v4, v6, v3}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;-><init>(Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;[BLjava/lang/String;)V

    .line 245
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    return-object v0
.end method

.method public parsePhotoshopSegment([BLjava/util/Map;)Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;"
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

    if-eqz p2, :cond_0

    .line 100
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "STRICT"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p2, :cond_1

    .line 101
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "VERBOSE"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 103
    :goto_1
    invoke-virtual {p0, p1, v0, v2}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->parsePhotoshopSegment([BZZ)Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;

    move-result-object p0

    return-object p0
.end method

.method public parsePhotoshopSegment([BZZ)Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->parseAllBlocks([BZZ)Ljava/util/List;

    move-result-object p1

    .line 113
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;

    .line 115
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->isIPTCBlock()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockData:[B

    invoke-virtual {p0, v1, p2}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->parseIPTCBlock([BZ)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 122
    :cond_1
    new-instance p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method public writeIPTCBlock(Ljava/util/List;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    const-string v0, "ISO-8859-1"

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 403
    :try_start_0
    new-instance v5, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v3, 0x1c

    .line 407
    :try_start_1
    invoke-virtual {v5, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v6, 0x2

    .line 408
    invoke-virtual {v5, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 409
    sget-object v7, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcTypes;->RECORD_VERSION:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcTypes;

    iget v7, v7, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcTypes;->type:I

    invoke-virtual {v5, v7}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 411
    invoke-virtual {v5, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 412
    invoke-virtual {v5, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 415
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 418
    new-instance p1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser$1;

    invoke-direct {p1, p0}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser$1;-><init>(Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;)V

    .line 423
    invoke-static {v7, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 427
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;

    .line 428
    iget-object v7, p1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->iptcType:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;

    sget-object v8, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcTypes;->RECORD_VERSION:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcTypes;

    if-ne v7, v8, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    invoke-virtual {v5, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 433
    invoke-virtual {v5, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 434
    iget-object v7, p1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->iptcType:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;

    invoke-interface {v7}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;->getType()I

    move-result v7

    if-ltz v7, :cond_2

    iget-object v7, p1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->iptcType:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;

    invoke-interface {v7}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;->getType()I

    move-result v7

    const/16 v8, 0xff

    if-gt v7, v8, :cond_2

    .line 439
    iget-object v7, p1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->iptcType:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;

    invoke-interface {v7}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;->getType()I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 441
    iget-object v7, p1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->value:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 442
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->value:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 447
    array-length p1, v7

    invoke-virtual {v5, p1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 448
    invoke-virtual {v5, v7}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    goto :goto_0

    .line 443
    :cond_1
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string p1, "Invalid record value, not ISO-8859-1"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 436
    :cond_2
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid record type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->iptcType:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;

    invoke-interface {p1}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;->getType()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 452
    :cond_3
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v5, p0, v4

    invoke-static {v2, p0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    .line 455
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    move-object v3, v5

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 452
    :goto_1
    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v3, p1, v4

    invoke-static {v4, p1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0
.end method

.method public writePhotoshopApp13Segment(Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 356
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 357
    new-instance v0, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 359
    sget-object v1, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->PHOTOSHOP_IDENTIFICATION_STRING:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-virtual {v1, v0}, Lorg/apache/commons/imaging/common/BinaryConstant;->writeTo(Ljava/io/OutputStream;)V

    .line 361
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;->getRawBlocks()Ljava/util/List;

    move-result-object p1

    .line 362
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;

    .line 363
    sget v2, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->CONST_8BIM:I

    invoke-virtual {v0, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 365
    iget v2, v1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockType:I

    if-ltz v2, :cond_4

    iget v2, v1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockType:I

    const v3, 0xffff

    if-gt v2, v3, :cond_4

    .line 368
    iget v2, v1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockType:I

    invoke-virtual {v0, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 370
    iget-object v2, v1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockNameBytes:[B

    array-length v2, v2

    const/16 v3, 0xff

    if-gt v2, v3, :cond_3

    .line 374
    iget-object v2, v1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockNameBytes:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 375
    iget-object v2, v1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockNameBytes:[B

    invoke-virtual {v0, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    .line 376
    iget-object v2, v1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockNameBytes:[B

    array-length v2, v2

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 377
    invoke-virtual {v0, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 380
    :cond_1
    iget-object v2, v1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockData:[B

    array-length v2, v2

    const/16 v4, 0x7fff

    if-gt v2, v4, :cond_2

    .line 384
    iget-object v2, v1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockData:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 385
    iget-object v2, v1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockData:[B

    invoke-virtual {v0, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    .line 386
    iget-object v1, v1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockData:[B

    array-length v1, v1

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 387
    invoke-virtual {v0, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto :goto_0

    .line 381
    :cond_2
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "IPTC block data is too long: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 371
    :cond_3
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "IPTC block name is too long: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockNameBytes:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 366
    :cond_4
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string p1, "Invalid IPTC block type."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 392
    :cond_5
    invoke-virtual {v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->flush()V

    .line 393
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

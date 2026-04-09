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
    .locals 8
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

    .line 253
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 258
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, ""

    .line 263
    sget-object v4, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->PHOTOSHOP_IDENTIFICATION_STRING:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-virtual {v4}, Lorg/apache/commons/imaging/common/BinaryConstant;->size()I

    move-result v4

    const-string v5, "App13 Segment missing identification string"

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v2

    .line 266
    sget-object v4, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->PHOTOSHOP_IDENTIFICATION_STRING:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-virtual {v4, v2}, Lorg/apache/commons/imaging/common/BinaryConstant;->equals([B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 267
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Not a Photoshop App13 Segment"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    const-string v2, ""

    const-string v4, "Image Resource Block missing identification string"

    .line 275
    sget-object v5, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->APP13_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 280
    :try_start_3
    sget v4, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->CONST_8BIM:I

    if-eq v2, v4, :cond_1

    .line 281
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Invalid Image Resource Block Signature"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string v2, ""

    const-string v4, "Image Resource Block missing type"

    .line 285
    sget-object v5, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->APP13_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v2

    if-eqz p2, :cond_2

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "blockType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " (0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    :cond_2
    const-string v4, "Name length"

    const-string v5, "Image Resource Block missing name length"

    .line 290
    invoke-static {v4, v3, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v4

    if-eqz p2, :cond_3

    if-lez v4, :cond_3

    .line 292
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "blockNameLength: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " (0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    :cond_3
    if-nez v4, :cond_4

    const-string v4, "Block name bytes"

    const-string v5, "Image Resource Block has invalid name"

    .line 297
    invoke-static {v4, v3, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    .line 298
    new-array v4, v1, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_4
    :try_start_4
    const-string v5, ""

    const-string v6, "Invalid Image Resource Block name"

    .line 301
    invoke-static {v5, v3, v4, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 310
    :try_start_5
    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_5

    const-string v4, "Padding byte"

    const-string v6, "Image Resource Block missing padding byte"

    .line 311
    invoke-static {v4, v3, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    :cond_5
    move-object v4, v5

    :goto_1
    const-string v5, ""

    const-string v6, "Image Resource Block missing size"

    .line 315
    sget-object v7, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->APP13_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-static {v5, v3, v6, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    if-eqz p2, :cond_6

    .line 317
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "blockSize: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " (0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    .line 324
    :cond_6
    array-length v6, p1

    if-le v5, v6, :cond_7

    .line 325
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid Block Size : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_7
    :try_start_6
    const-string v6, ""

    const-string v7, "Invalid Image Resource Block data"

    .line 330
    invoke-static {v6, v3, v5, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 338
    :try_start_7
    new-instance v7, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;

    invoke-direct {v7, v2, v4, v6}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;-><init>(I[B[B)V

    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    const-string v2, "Padding byte"

    const-string v4, "Image Resource Block missing padding byte"

    .line 341
    invoke-static {v2, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    goto/16 :goto_0

    :catch_0
    move-exception p1

    if-eqz p3, :cond_8

    .line 333
    throw p1

    :catch_1
    move-exception p1

    if-eqz p3, :cond_8

    .line 305
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 348
    :catch_2
    :cond_8
    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v3, p1, v1

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v3, v2

    :goto_2
    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v3, p1, v1

    invoke-static {v1, p1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0
.end method

.method protected parseIPTCBlock([BZ)Ljava/util/List;
    .locals 11
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
    aget-byte v2, p1, v2

    const/16 v4, 0xff

    and-int/2addr v2, v4

    if-eqz p2, :cond_1

    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tagMarker: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " (0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    :cond_1
    const/16 v5, 0x1c

    if-eq v2, v5, :cond_3

    if-eqz p2, :cond_2

    .line 139
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "Unexpected record tag marker in IPTC data."

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    return-object v0

    :cond_3
    add-int/lit8 v2, v3, 0x1

    .line 144
    aget-byte v3, p1, v3

    and-int/2addr v3, v4

    if-eqz p2, :cond_4

    .line 146
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recordNumber: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " (0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    .line 167
    :cond_4
    aget-byte v5, p1, v2

    and-int/2addr v4, v5

    if-eqz p2, :cond_5

    .line 169
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recordType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " (0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 173
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {p1, v2, v5}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v5

    const/4 v6, 0x2

    add-int/2addr v2, v6

    const/16 v7, 0x7fff

    if-le v5, v7, :cond_6

    const/4 v7, 0x1

    goto :goto_1

    :cond_6
    move v7, v1

    :goto_1
    and-int/lit16 v8, v5, 0x7fff

    if-eqz v7, :cond_7

    if-eqz p2, :cond_7

    .line 179
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "extendedDataset. dataFieldCountLength: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    :cond_7
    if-eqz v7, :cond_8

    return-object v0

    .line 187
    :cond_8
    invoke-static {p1, v2, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->slice([BII)[B

    move-result-object v7

    add-int/2addr v2, v5

    if-eq v3, v6, :cond_9

    goto/16 :goto_0

    :cond_9
    if-nez v4, :cond_a

    if-eqz p2, :cond_0

    .line 199
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ignore record version record! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 229
    :cond_a
    new-instance v3, Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    invoke-direct {v3, v7, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 231
    invoke-static {v4}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcTypeLookup;->getIptcType(I)Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;

    move-result-object v4

    .line 244
    new-instance v5, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;

    invoke-direct {v5, v4, v7, v3}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;-><init>(Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;[BLjava/lang/String;)V

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

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 100
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "STRICT"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

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

    move v0, v1

    .line 103
    :cond_1
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
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 403
    :try_start_0
    new-instance v4, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v3, 0x1c

    .line 407
    :try_start_1
    invoke-virtual {v4, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v5, 0x2

    .line 408
    invoke-virtual {v4, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 409
    sget-object v6, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcTypes;->RECORD_VERSION:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcTypes;

    iget v6, v6, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcTypes;->type:I

    invoke-virtual {v4, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 411
    invoke-virtual {v4, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 412
    invoke-virtual {v4, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 415
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 418
    new-instance p1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser$1;

    invoke-direct {p1, p0}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser$1;-><init>(Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;)V

    .line 423
    invoke-static {v6, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 427
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;

    .line 428
    iget-object v6, p1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->iptcType:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;

    sget-object v7, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcTypes;->RECORD_VERSION:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcTypes;

    if-ne v6, v7, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    invoke-virtual {v4, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 433
    invoke-virtual {v4, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 434
    iget-object v6, p1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->iptcType:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;

    invoke-interface {v6}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;->getType()I

    move-result v6

    if-ltz v6, :cond_3

    iget-object v6, p1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->iptcType:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;

    invoke-interface {v6}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;->getType()I

    move-result v6

    const/16 v7, 0xff

    if-le v6, v7, :cond_1

    goto :goto_1

    .line 439
    :cond_1
    iget-object v6, p1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->iptcType:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;

    invoke-interface {v6}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;->getType()I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 441
    iget-object v6, p1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->value:Ljava/lang/String;

    const-string v7, "ISO-8859-1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 442
    new-instance v7, Ljava/lang/String;

    const-string v8, "ISO-8859-1"

    invoke-direct {v7, v6, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->value:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 443
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string p1, "Invalid record value, not ISO-8859-1"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 447
    :cond_2
    array-length p1, v6

    invoke-virtual {v4, p1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 448
    invoke-virtual {v4, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    goto :goto_0

    .line 436
    :cond_3
    :goto_1
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid record type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->iptcType:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;

    invoke-interface {p1}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;->getType()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 452
    :cond_4
    new-array p0, v1, [Ljava/io/Closeable;

    aput-object v4, p0, v2

    invoke-static {v1, p0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    .line 455
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v4, v3

    .line 452
    :goto_2
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v4, p1, v2

    invoke-static {v2, p1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

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

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;

    .line 363
    sget v2, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->CONST_8BIM:I

    invoke-virtual {v0, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 365
    iget v2, v1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockType:I

    if-ltz v2, :cond_5

    iget v2, v1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockType:I

    const v3, 0xffff

    if-le v2, v3, :cond_1

    goto :goto_1

    .line 368
    :cond_1
    iget v2, v1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockType:I

    invoke-virtual {v0, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 370
    iget-object v2, v1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockNameBytes:[B

    array-length v2, v2

    const/16 v3, 0xff

    if-le v2, v3, :cond_2

    .line 371
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IPTC block name is too long: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockNameBytes:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 374
    :cond_2
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

    if-nez v2, :cond_3

    .line 377
    invoke-virtual {v0, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 380
    :cond_3
    iget-object v2, v1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockData:[B

    array-length v2, v2

    const/16 v4, 0x7fff

    if-le v2, v4, :cond_4

    .line 381
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IPTC block data is too long: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 384
    :cond_4
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

    goto/16 :goto_0

    .line 366
    :cond_5
    :goto_1
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string p1, "Invalid IPTC block type."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 392
    :cond_6
    invoke-virtual {v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->flush()V

    .line 393
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

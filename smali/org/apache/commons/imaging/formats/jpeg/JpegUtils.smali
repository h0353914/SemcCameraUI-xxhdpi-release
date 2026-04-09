.class public Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;
.super Lorg/apache/commons/imaging/common/BinaryFileParser;
.source "JpegUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;-><init>()V

    .line 34
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method public static getMarkerName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    const-string p0, "Unknown"

    return-object p0

    :pswitch_0
    const-string p0, "JPEG_APP15_MARKER"

    return-object p0

    :pswitch_1
    const-string p0, "JPEG_APP14_MARKER"

    return-object p0

    :pswitch_2
    const-string p0, "JPEG_APP13_MARKER"

    return-object p0

    :pswitch_3
    const-string p0, "JPEG_APP2_MARKER"

    return-object p0

    :pswitch_4
    const-string p0, "JPEG_APP1_MARKER"

    return-object p0

    :pswitch_5
    const-string p0, "JFIF_MARKER"

    return-object p0

    :pswitch_6
    const-string p0, "DQT_MARKER"

    return-object p0

    :pswitch_7
    const-string p0, "SOS_MARKER"

    return-object p0

    :pswitch_8
    const-string p0, "SOF15_MARKER"

    return-object p0

    :pswitch_9
    const-string p0, "SOF14_MARKER"

    return-object p0

    :pswitch_a
    const-string p0, "SOF13_MARKER"

    return-object p0

    :pswitch_b
    const-string p0, "DAC_MARKER"

    return-object p0

    :pswitch_c
    const-string p0, "SOF11_MARKER"

    return-object p0

    :pswitch_d
    const-string p0, "SOF10_MARKER"

    return-object p0

    :pswitch_e
    const-string p0, "SOF9_MARKER"

    return-object p0

    :pswitch_f
    const-string p0, "SOF8_MARKER"

    return-object p0

    :pswitch_10
    const-string p0, "SOF7_MARKER"

    return-object p0

    :pswitch_11
    const-string p0, "SOF6_MARKER"

    return-object p0

    :pswitch_12
    const-string p0, "SOF5_MARKER"

    return-object p0

    :pswitch_13
    const-string p0, "SOF4_MARKER"

    return-object p0

    :pswitch_14
    const-string p0, "SOF3_MARKER"

    return-object p0

    :pswitch_15
    const-string p0, "SOF2_MARKER"

    return-object p0

    :pswitch_16
    const-string p0, "SOF1_MARKER"

    return-object p0

    :pswitch_17
    const-string p0, "SOF0_MARKER"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xffc0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xffda
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xffe0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xffed
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dumpJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$1;-><init>(Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;)V

    .line 187
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;)V

    return-void
.end method

.method public traverseJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 56
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 58
    :try_start_1
    sget-object v2, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->SOI:Lorg/apache/commons/imaging/common/BinaryConstant;

    const-string v3, "Not a Valid JPEG File: doesn\'t begin with 0xffd8"

    invoke-static {p1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readAndVerifyBytes(Ljava/io/InputStream;Lorg/apache/commons/imaging/common/BinaryConstant;Ljava/lang/String;)V

    move v2, v0

    :goto_0
    const/4 v3, 0x2

    .line 63
    new-array v6, v3, [B

    .line 65
    :cond_0
    aget-byte v4, v6, v1

    aput-byte v4, v6, v0

    const-string v4, "marker"

    const-string v5, "Could not read marker"

    .line 66
    invoke-static {v4, p1, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v4

    aput-byte v4, v6, v1

    .line 69
    aget-byte v4, v6, v0

    const/16 v5, 0xff

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    aget-byte v4, v6, v1

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_0

    .line 70
    aget-byte v4, v6, v0

    and-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0x8

    aget-byte v7, v6, v1

    and-int/2addr v5, v7

    or-int/2addr v5, v4

    const v4, 0xffd9

    if-eq v5, v4, :cond_3

    const v4, 0xffda

    if-ne v5, v4, :cond_1

    goto :goto_2

    :cond_1
    const-string v4, "segmentLengthBytes"

    const-string v7, "segmentLengthBytes"

    .line 84
    invoke-static {v4, p1, v3, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v8

    .line 85
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v8, v3}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BLjava/nio/ByteOrder;)I

    move-result v7

    const-string v3, "Segment Data"

    add-int/lit8 v4, v7, -0x2

    const-string v9, "Invalid Segment: insufficient data"

    .line 87
    invoke-static {v3, p1, v4, v9}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v9

    move-object v4, p2

    .line 91
    invoke-interface/range {v4 .. v9}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;->visitSegment(I[BI[B[B)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    .line 100
    new-array p0, v1, [Ljava/io/Closeable;

    aput-object p1, p0, v0

    :goto_1
    invoke-static {v1, p0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    :cond_3
    :goto_2
    :try_start_2
    invoke-interface {p2}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;->beginSOS()Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p0, :cond_4

    .line 100
    new-array p0, v1, [Ljava/io/Closeable;

    aput-object p1, p0, v0

    goto :goto_1

    .line 79
    :cond_4
    :try_start_3
    invoke-static {p1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->getStreamBytes(Ljava/io/InputStream;)[B

    move-result-object p0

    .line 80
    invoke-interface {p2, v5, v6, p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;->visitSOS(I[B[B)V

    .line 97
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " markers"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    new-array p0, v1, [Ljava/io/Closeable;

    aput-object p1, p0, v0

    invoke-static {v1, p0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception p0

    const/4 p1, 0x0

    :goto_3
    new-array p2, v1, [Ljava/io/Closeable;

    aput-object p1, p2, v0

    invoke-static {v0, p2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0
.end method

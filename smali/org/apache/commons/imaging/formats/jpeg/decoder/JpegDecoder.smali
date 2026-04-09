.class public Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;
.super Lorg/apache/commons/imaging/common/BinaryFileParser;
.source "JpegDecoder.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;


# instance fields
.field private final block:[F

.field private final blockInt:[I

.field private final huffmanACTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

.field private final huffmanDCTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

.field private image:Ljava/awt/image/BufferedImage;

.field private imageReadException:Lorg/apache/commons/imaging/ImageReadException;

.field private ioException:Ljava/io/IOException;

.field private final quantizationTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;

.field private final scaledQuantizationTables:[[F

.field private sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

.field private sosSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;

.field private final zz:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;-><init>()V

    const/4 v0, 0x4

    .line 51
    new-array v1, v0, [Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;

    iput-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->quantizationTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;

    .line 52
    new-array v1, v0, [Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    iput-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->huffmanDCTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    .line 53
    new-array v1, v0, [Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    iput-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->huffmanACTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    .line 56
    new-array v0, v0, [[F

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->scaledQuantizationTables:[[F

    const/16 v0, 0x40

    .line 60
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->zz:[I

    .line 61
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->blockInt:[I

    .line 62
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->block:[F

    return-void
.end method

.method private allocateMCUMemory()[Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sosSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->numberOfComponents:I

    new-array v0, v0, [Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;

    const/4 v1, 0x0

    move v2, v1

    .line 281
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sosSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;

    iget v3, v3, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->numberOfComponents:I

    if-ge v2, v3, :cond_3

    .line 282
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sosSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;

    invoke-virtual {v3, v2}, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v1

    .line 284
    :goto_1
    iget-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v6, v6, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    if-ge v5, v6, :cond_1

    .line 285
    iget-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    invoke-virtual {v6, v5}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    move-result-object v6

    iget v6, v6, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->componentIdentifier:I

    iget v7, v3, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;->scanComponentSelector:I

    if-ne v6, v7, :cond_0

    .line 286
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    invoke-virtual {v3, v5}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    move-result-object v4

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-nez v4, :cond_2

    .line 291
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Invalid component"

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 293
    :cond_2
    new-instance v3, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;

    iget v5, v4, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->horizontalSamplingFactor:I

    const/16 v6, 0x8

    mul-int/2addr v5, v6

    iget v4, v4, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->verticalSamplingFactor:I

    mul-int/2addr v6, v4

    invoke-direct {v3, v5, v6}, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;-><init>(II)V

    .line 296
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private decode(Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 423
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->nextBit()I

    move-result p0

    const/4 v0, 0x1

    .line 424
    :goto_0
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->getMaxCode()[I

    move-result-object v1

    aget v1, v1, v0

    if-le p0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 p0, p0, 0x1

    .line 426
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->nextBit()I

    move-result v1

    or-int/2addr p0, v1

    goto :goto_0

    .line 428
    :cond_0
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->getValPtr()[I

    move-result-object p1

    aget p1, p1, v0

    .line 429
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->getMinCode()[I

    move-result-object v1

    aget v0, v1, v0

    sub-int/2addr p0, v0

    add-int/2addr p1, p0

    .line 430
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->getHuffVal()[I

    move-result-object p0

    aget p0, p0, p1

    return p0
.end method

.method private extend(II)I
    .locals 1

    add-int/lit8 p0, p2, -0x1

    const/4 v0, 0x1

    shl-int p0, v0, p0

    :goto_0
    if-ge p1, p0, :cond_0

    const/4 p0, -0x1

    shl-int/2addr p0, p2

    add-int/2addr p0, v0

    add-int/2addr p1, p0

    goto :goto_0

    :cond_0
    return p1
.end method

.method private static fastRound(F)I
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private readMCU(Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;[I[Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move v3, v2

    .line 303
    :goto_0
    iget-object v4, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sosSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;

    iget v4, v4, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->numberOfComponents:I

    if-ge v3, v4, :cond_d

    .line 304
    iget-object v4, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sosSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;

    invoke-virtual {v4, v3}, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v2

    .line 306
    :goto_1
    iget-object v7, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v7, v7, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    if-ge v6, v7, :cond_1

    .line 307
    iget-object v7, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    invoke-virtual {v7, v6}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    move-result-object v7

    iget v7, v7, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->componentIdentifier:I

    iget v8, v4, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;->scanComponentSelector:I

    if-ne v7, v8, :cond_0

    .line 308
    iget-object v5, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    invoke-virtual {v5, v6}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    move-result-object v5

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-nez v5, :cond_2

    .line 313
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Invalid component"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_2
    aget-object v7, p3, v3

    move v8, v2

    .line 316
    :goto_3
    iget v9, v5, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->verticalSamplingFactor:I

    if-ge v8, v9, :cond_c

    move v9, v2

    .line 317
    :goto_4
    iget v10, v5, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->horizontalSamplingFactor:I

    if-ge v9, v10, :cond_b

    .line 318
    iget-object v10, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->zz:[I

    invoke-static {v10, v2}, Ljava/util/Arrays;->fill([II)V

    .line 320
    iget-object v10, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->huffmanDCTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    iget v11, v4, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;->dcCodingTableSelector:I

    aget-object v10, v10, v11

    invoke-direct {v0, v1, v10}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->decode(Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;)I

    move-result v10

    .line 323
    invoke-direct {v0, v10, v1}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->receive(ILorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;)I

    move-result v11

    .line 324
    invoke-direct {v0, v11, v10}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->extend(II)I

    move-result v10

    .line 325
    iget-object v11, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->zz:[I

    aget v12, p2, v3

    add-int/2addr v12, v10

    aput v12, v11, v2

    .line 326
    iget-object v10, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->zz:[I

    aget v10, v10, v2

    aput v10, p2, v3

    const/4 v10, 0x1

    move v11, v10

    .line 331
    :goto_5
    iget-object v12, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->huffmanACTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    iget v13, v4, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;->acCodingTableSelector:I

    aget-object v12, v12, v13

    invoke-direct {v0, v1, v12}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->decode(Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;)I

    move-result v12

    and-int/lit8 v13, v12, 0xf

    shr-int/lit8 v12, v12, 0x4

    if-nez v13, :cond_3

    const/16 v13, 0xf

    if-ne v12, v13, :cond_4

    add-int/lit8 v11, v11, 0x10

    goto/16 :goto_a

    :cond_3
    add-int/2addr v11, v12

    .line 348
    iget-object v12, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->zz:[I

    invoke-direct {v0, v13, v1}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->receive(ILorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;)I

    move-result v14

    aput v14, v12, v11

    .line 349
    iget-object v12, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->zz:[I

    iget-object v14, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->zz:[I

    aget v14, v14, v11

    invoke-direct {v0, v14, v13}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->extend(II)I

    move-result v13

    aput v13, v12, v11

    const/16 v12, 0x3f

    if-ne v11, v12, :cond_a

    .line 359
    :cond_4
    iget-object v11, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v11, v11, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->precision:I

    sub-int/2addr v11, v10

    shl-int v11, v10, v11

    .line 360
    iget-object v12, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v12, v12, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->precision:I

    shl-int v12, v10, v12

    add-int/lit8 v10, v12, -0x1

    .line 362
    iget-object v12, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->scaledQuantizationTables:[[F

    iget v13, v5, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->quantTabDestSelector:I

    aget-object v12, v12, v13

    .line 363
    iget-object v13, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->zz:[I

    iget-object v14, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->blockInt:[I

    invoke-static {v13, v14}, Lorg/apache/commons/imaging/formats/jpeg/decoder/ZigZag;->zigZagToBlock([I[I)V

    move v13, v2

    :goto_6
    const/16 v14, 0x40

    if-ge v13, v14, :cond_5

    .line 365
    iget-object v14, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->block:[F

    iget-object v2, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->blockInt:[I

    aget v2, v2, v13

    int-to-float v2, v2

    aget v15, v12, v13

    mul-float/2addr v2, v15

    aput v2, v14, v13

    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    goto :goto_6

    .line 367
    :cond_5
    iget-object v2, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->block:[F

    invoke-static {v2}, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->inverseDCT8x8([F)V

    const/16 v2, 0x8

    mul-int v12, v2, v8

    mul-int/2addr v12, v2

    .line 369
    iget v13, v5, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->horizontalSamplingFactor:I

    mul-int/2addr v12, v13

    mul-int v13, v2, v9

    add-int/2addr v12, v13

    move v13, v12

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_7
    if-ge v12, v2, :cond_9

    move v15, v14

    const/4 v14, 0x0

    :goto_8
    if-ge v14, v2, :cond_8

    .line 374
    iget-object v2, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->block:[F

    add-int/lit8 v16, v15, 0x1

    aget v2, v2, v15

    int-to-float v0, v11

    add-float/2addr v2, v0

    const/4 v0, 0x0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_6

    const/4 v2, 0x0

    goto :goto_9

    :cond_6
    int-to-float v0, v10

    cmpl-float v0, v2, v0

    if-lez v0, :cond_7

    move v2, v10

    goto :goto_9

    .line 382
    :cond_7
    invoke-static {v2}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->fastRound(F)I

    move-result v2

    .line 384
    :goto_9
    iget-object v0, v7, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    add-int v15, v13, v14

    aput v2, v0, v15

    add-int/lit8 v14, v14, 0x1

    move/from16 v15, v16

    move-object/from16 v0, p0

    const/16 v2, 0x8

    goto :goto_8

    .line 386
    :cond_8
    iget v0, v5, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->horizontalSamplingFactor:I

    const/16 v2, 0x8

    mul-int/2addr v0, v2

    add-int/2addr v13, v0

    add-int/lit8 v12, v12, 0x1

    move v14, v15

    move-object/from16 v0, p0

    goto :goto_7

    :cond_9
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_a
    add-int/lit8 v11, v11, 0x1

    :goto_a
    move-object/from16 v0, p0

    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_b
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_c
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method private receive(ILorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    if-eq p0, p1, :cond_0

    add-int/lit8 p0, p0, 0x1

    shl-int/lit8 v0, v0, 0x1

    .line 414
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->nextBit()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private rescaleMCU([Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;II[Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;)V
    .locals 16

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x0

    move v4, v3

    .line 244
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_5

    .line 245
    aget-object v5, v0, v4

    .line 246
    iget v6, v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->width:I

    if-ne v6, v1, :cond_0

    iget v6, v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->height:I

    if-ne v6, v2, :cond_0

    .line 247
    iget-object v5, v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    aget-object v6, p4, v4

    iget-object v6, v6, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    mul-int v7, v1, v2

    invoke-static {v5, v3, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 250
    :cond_0
    iget v6, v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->width:I

    div-int v6, v1, v6

    .line 251
    iget v7, v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->height:I

    div-int v7, v2, v7

    const/4 v8, 0x2

    if-ne v6, v8, :cond_2

    if-ne v7, v8, :cond_2

    move v6, v3

    move v7, v6

    move v9, v7

    .line 255
    :goto_1
    iget v10, v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->height:I

    if-ge v6, v10, :cond_4

    move v10, v3

    :goto_2
    if-ge v10, v1, :cond_1

    .line 257
    iget-object v11, v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    shr-int/lit8 v12, v10, 0x1

    add-int/2addr v12, v7

    aget v11, v11, v12

    .line 258
    aget-object v12, p4, v4

    iget-object v12, v12, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    add-int v13, v9, v10

    aput v11, v12, v13

    .line 259
    aget-object v12, p4, v4

    iget-object v12, v12, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    add-int v13, v9, v1

    add-int/2addr v13, v10

    aput v11, v12, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 261
    :cond_1
    iget v10, v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->width:I

    add-int/2addr v7, v10

    mul-int v10, v8, v1

    add-int/2addr v9, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move v8, v3

    move v9, v8

    :goto_3
    if-ge v8, v2, :cond_4

    move v10, v3

    :goto_4
    if-ge v10, v1, :cond_3

    .line 269
    aget-object v11, p4, v4

    iget-object v11, v11, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    add-int v12, v9, v10

    iget-object v13, v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    div-int v14, v8, v7

    iget v3, v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->width:I

    mul-int/2addr v14, v3

    div-int v3, v10, v6

    add-int/2addr v14, v3

    aget v3, v13, v14

    aput v3, v11, v12

    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    goto :goto_4

    :cond_3
    add-int/2addr v9, v1

    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    :goto_5
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public beginSOS()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public decode(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 435
    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;-><init>()V

    .line 436
    invoke-virtual {v0, p1, p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;)V

    .line 437
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->imageReadException:Lorg/apache/commons/imaging/ImageReadException;

    if-eqz p1, :cond_0

    .line 438
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->imageReadException:Lorg/apache/commons/imaging/ImageReadException;

    throw p0

    .line 440
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->ioException:Ljava/io/IOException;

    if-eqz p1, :cond_1

    .line 441
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->ioException:Ljava/io/IOException;

    throw p0

    .line 443
    :cond_1
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->image:Ljava/awt/image/BufferedImage;

    return-object p0
.end method

.method public visitSOS(I[B[B)V
    .locals 26

    move-object/from16 v1, p0

    .line 69
    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object/from16 v3, p3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    const-string v3, "segmentLength"

    const-string v4, "Not a Valid JPEG File"

    .line 71
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {v3, v2, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    const-string v4, "SosSegment"

    const/4 v5, 0x2

    sub-int/2addr v3, v5

    const-string v6, "Not a Valid JPEG File"

    .line 72
    invoke-static {v4, v2, v3, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v3

    .line 74
    new-instance v4, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;

    move/from16 v6, p1

    invoke-direct {v4, v6, v3}, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;-><init>(I[B)V

    iput-object v4, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sosSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 78
    :goto_0
    iget-object v8, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v8, v8, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    if-ge v4, v8, :cond_0

    .line 79
    iget-object v8, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    invoke-virtual {v8, v4}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    move-result-object v8

    iget v8, v8, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->horizontalSamplingFactor:I

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 81
    iget-object v8, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    invoke-virtual {v8, v4}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    move-result-object v8

    iget v8, v8, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->verticalSamplingFactor:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    mul-int/2addr v6, v4

    mul-int/2addr v4, v7

    .line 87
    new-instance v7, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;

    invoke-direct {v7, v2}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;-><init>(Ljava/io/InputStream;)V

    .line 88
    iget-object v2, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v2, v2, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->width:I

    add-int/2addr v2, v6

    const/4 v8, 0x1

    sub-int/2addr v2, v8

    div-int/2addr v2, v6

    .line 89
    iget-object v9, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v9, v9, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->height:I

    add-int/2addr v9, v4

    sub-int/2addr v9, v8

    div-int/2addr v9, v4

    .line 90
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->allocateMCUMemory()[Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;

    move-result-object v10

    .line 91
    array-length v11, v10

    new-array v11, v11, [Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;

    const/4 v12, 0x0

    .line 92
    :goto_1
    array-length v13, v11

    if-ge v12, v13, :cond_1

    .line 93
    new-instance v13, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;

    invoke-direct {v13, v6, v4}, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;-><init>(II)V

    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 95
    :cond_1
    iget-object v12, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v12, v12, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    new-array v12, v12, [I

    .line 98
    iget-object v13, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v13, v13, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    const/16 v15, 0xff

    const v5, 0xff00

    const/high16 v3, 0xff0000

    const/16 v8, 0x18

    const/4 v14, 0x3

    if-ne v13, v14, :cond_2

    .line 99
    new-instance v13, Ljava/awt/image/DirectColorModel;

    invoke-direct {v13, v8, v3, v5, v15}, Ljava/awt/image/DirectColorModel;-><init>(IIII)V

    .line 101
    iget-object v3, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v3, v3, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->width:I

    iget-object v5, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v5, v5, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->height:I

    new-array v8, v14, [I

    fill-array-data v8, :array_0

    const/4 v15, 0x0

    invoke-static {v14, v3, v5, v8, v15}, Ljava/awt/image/Raster;->createPackedRaster(III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v3

    goto :goto_2

    .line 104
    :cond_2
    iget-object v13, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v13, v13, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_b

    .line 105
    new-instance v13, Ljava/awt/image/DirectColorModel;

    invoke-direct {v13, v8, v3, v5, v15}, Ljava/awt/image/DirectColorModel;-><init>(IIII)V

    .line 107
    iget-object v3, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v3, v3, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->width:I

    iget-object v5, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v5, v5, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->height:I

    const/4 v8, 0x3

    new-array v14, v8, [I

    fill-array-data v14, :array_1

    const/4 v15, 0x0

    invoke-static {v8, v3, v5, v14, v15}, Ljava/awt/image/Raster;->createPackedRaster(III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v3

    .line 120
    :goto_2
    invoke-virtual {v3}, Ljava/awt/image/WritableRaster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v5

    const/4 v8, 0x0

    :goto_3
    mul-int v14, v4, v9

    if-ge v8, v14, :cond_a

    const/4 v14, 0x0

    :goto_4
    mul-int v15, v6, v2

    if-ge v14, v15, :cond_9

    .line 124
    invoke-direct {v1, v7, v12, v10}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->readMCU(Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;[I[Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;)V

    .line 125
    invoke-direct {v1, v10, v6, v4, v11}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->rescaleMCU([Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;II[Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;)V

    .line 127
    iget-object v15, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v15, v15, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->width:I

    mul-int/2addr v15, v8

    add-int/2addr v15, v14

    move/from16 v20, v15

    const/4 v15, 0x0

    const/16 v19, 0x0

    :goto_5
    if-ge v15, v4, :cond_8

    move/from16 v21, v2

    add-int v2, v8, v15

    move-object/from16 v22, v7

    .line 128
    iget-object v7, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v7, v7, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->height:I

    if-ge v2, v7, :cond_7

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v6, :cond_6

    add-int v7, v14, v2

    move/from16 v23, v9

    .line 130
    iget-object v9, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v9, v9, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->width:I

    if-ge v7, v9, :cond_5

    .line 131
    array-length v7, v11

    const/4 v9, 0x3

    if-ne v7, v9, :cond_3

    const/4 v7, 0x0

    .line 132
    aget-object v9, v11, v7

    iget-object v7, v9, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    add-int v9, v19, v2

    aget v7, v7, v9

    move-object/from16 v24, v12

    const/16 v18, 0x1

    .line 133
    aget-object v12, v11, v18

    iget-object v12, v12, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    aget v12, v12, v9

    move-object/from16 v25, v3

    const/16 v16, 0x2

    .line 134
    aget-object v3, v11, v16

    iget-object v3, v3, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    aget v3, v3, v9

    .line 135
    invoke-static {v7, v12, v3}, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->convertYCbCrToRGB(III)I

    move-result v3

    add-int v7, v20, v2

    .line 137
    invoke-virtual {v5, v7, v3}, Ljava/awt/image/DataBuffer;->setElem(II)V

    const/4 v3, 0x0

    const/4 v7, 0x1

    goto :goto_7

    :cond_3
    move-object/from16 v25, v3

    move-object/from16 v24, v12

    const/16 v16, 0x2

    .line 138
    array-length v3, v10

    const/4 v7, 0x1

    if-ne v3, v7, :cond_4

    const/4 v3, 0x0

    .line 139
    aget-object v9, v11, v3

    iget-object v9, v9, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    add-int v12, v19, v2

    aget v9, v9, v12

    add-int v12, v20, v2

    shl-int/lit8 v17, v9, 0x10

    shl-int/lit8 v18, v9, 0x8

    or-int v17, v17, v18

    or-int v9, v17, v9

    .line 140
    invoke-virtual {v5, v12, v9}, Ljava/awt/image/DataBuffer;->setElem(II)V

    :goto_7
    add-int/lit8 v2, v2, 0x1

    move/from16 v9, v23

    move-object/from16 v12, v24

    move-object/from16 v3, v25

    goto :goto_6

    .line 143
    :cond_4
    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported JPEG with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " components"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    move-object/from16 v25, v3

    goto :goto_8

    :cond_6
    move-object/from16 v25, v3

    move/from16 v23, v9

    :goto_8
    move-object/from16 v24, v12

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/16 v16, 0x2

    add-int v19, v19, v6

    .line 149
    iget-object v2, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v2, v2, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->width:I

    add-int v20, v20, v2

    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v21

    move-object/from16 v7, v22

    move/from16 v9, v23

    move-object/from16 v12, v24

    move-object/from16 v3, v25

    goto/16 :goto_5

    :cond_7
    move-object/from16 v25, v3

    goto :goto_9

    :cond_8
    move/from16 v21, v2

    move-object/from16 v25, v3

    move-object/from16 v22, v7

    :goto_9
    move/from16 v23, v9

    move-object/from16 v24, v12

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/16 v16, 0x2

    add-int/2addr v14, v6

    move/from16 v2, v21

    move-object/from16 v7, v22

    move/from16 v9, v23

    move-object/from16 v12, v24

    move-object/from16 v3, v25

    goto/16 :goto_4

    :cond_9
    move/from16 v21, v2

    move-object/from16 v25, v3

    move-object/from16 v22, v7

    move/from16 v23, v9

    move-object/from16 v24, v12

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/16 v16, 0x2

    add-int/2addr v8, v4

    move-object/from16 v7, v22

    move-object/from16 v3, v25

    goto/16 :goto_3

    :cond_a
    move-object/from16 v25, v3

    .line 153
    new-instance v2, Ljava/awt/image/BufferedImage;

    invoke-virtual {v13}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v3

    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    move-object/from16 v5, v25

    invoke-direct {v2, v13, v5, v3, v4}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    iput-object v2, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->image:Ljava/awt/image/BufferedImage;

    goto :goto_a

    .line 117
    :cond_b
    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v4, v4, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " components are invalid or unsupported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 167
    new-instance v3, Lorg/apache/commons/imaging/ImageReadException;

    const-string v4, "Error parsing JPEG"

    invoke-direct {v3, v4, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v3, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->imageReadException:Lorg/apache/commons/imaging/ImageReadException;

    goto :goto_a

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 164
    iput-object v2, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->ioException:Ljava/io/IOException;

    goto :goto_a

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 162
    iput-object v2, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->imageReadException:Lorg/apache/commons/imaging/ImageReadException;

    :goto_a
    return-void

    nop

    :array_0
    .array-data 4
        0xff0000
        0xff00
        0xff
    .end array-data

    :array_1
    .array-data 4
        0xff0000
        0xff00
        0xff
    .end array-data
.end method

.method public visitSegment(I[BI[B[B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p2, 0xd

    .line 175
    new-array p2, p2, [I

    fill-array-data p2, :array_0

    .line 191
    invoke-static {p2, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p2

    const/4 p3, 0x1

    if-ltz p2, :cond_1

    const p2, 0xffc0

    if-eq p1, p2, :cond_0

    .line 193
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Only sequential, baseline JPEGs are supported at the moment"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 196
    :cond_0
    new-instance p2, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    invoke-direct {p2, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;-><init>(I[B)V

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    goto/16 :goto_6

    :cond_1
    const p2, 0xffdb

    const/4 p4, 0x0

    if-ne p1, p2, :cond_5

    .line 198
    new-instance p2, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;

    invoke-direct {p2, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;-><init>(I[B)V

    move p1, p4

    .line 199
    :goto_0
    iget-object p5, p2, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;->quantizationTables:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    if-ge p1, p5, :cond_a

    .line 200
    iget-object p5, p2, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;->quantizationTables:Ljava/util/List;

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;

    .line 202
    iget v0, p5, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;->destinationIdentifier:I

    if-ltz v0, :cond_4

    iget v0, p5, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;->destinationIdentifier:I

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->quantizationTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    goto :goto_2

    .line 208
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->quantizationTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;

    iget v1, p5, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;->destinationIdentifier:I

    aput-object p5, v0, v1

    const/16 v0, 0x40

    .line 209
    new-array v1, v0, [I

    .line 210
    invoke-virtual {p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;->getElements()[I

    move-result-object v2

    invoke-static {v2, v1}, Lorg/apache/commons/imaging/formats/jpeg/decoder/ZigZag;->zigZagToBlock([I[I)V

    .line 211
    new-array v2, v0, [F

    move v3, p4

    :goto_1
    if-ge v3, v0, :cond_3

    .line 213
    aget v4, v1, v3

    int-to-float v4, v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 215
    :cond_3
    invoke-static {v2}, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->scaleDequantizationMatrix([F)V

    .line 216
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->scaledQuantizationTables:[[F

    iget p5, p5, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;->destinationIdentifier:I

    aput-object v2, v0, p5

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 204
    :cond_4
    :goto_2
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid quantization table identifier "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p5, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;->destinationIdentifier:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const p2, 0xffc4

    if-ne p1, p2, :cond_a

    .line 219
    new-instance p2, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment;

    invoke-direct {p2, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment;-><init>(I[B)V

    .line 220
    :goto_3
    iget-object p1, p2, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment;->huffmanTables:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p4, p1, :cond_a

    .line 221
    iget-object p1, p2, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment;->huffmanTables:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    .line 223
    iget p5, p1, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->tableClass:I

    if-nez p5, :cond_6

    .line 224
    iget-object p5, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->huffmanDCTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    goto :goto_4

    .line 225
    :cond_6
    iget p5, p1, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->tableClass:I

    if-ne p5, p3, :cond_9

    .line 226
    iget-object p5, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->huffmanACTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    .line 231
    :goto_4
    iget v0, p1, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->destinationIdentifier:I

    if-ltz v0, :cond_8

    iget v0, p1, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->destinationIdentifier:I

    array-length v1, p5

    if-lt v0, v1, :cond_7

    goto :goto_5

    .line 237
    :cond_7
    iget v0, p1, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->destinationIdentifier:I

    aput-object p1, p5, v0

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    .line 233
    :cond_8
    :goto_5
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid huffman table identifier "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->destinationIdentifier:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 228
    :cond_9
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid huffman table class "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->tableClass:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_6
    return p3

    :array_0
    .array-data 4
        0xffc0
        0xffc1
        0xffc2
        0xffc3
        0xffc5
        0xffc6
        0xffc7
        0xffc9
        0xffca
        0xffcb
        0xffcd
        0xffce
        0xffcf
    .end array-data
.end method

.class public Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "TiffImageParser.java"


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".tif"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, ".tif"

    const-string v1, ".tiff"

    .line 60
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    return-void
.end method

.method private checkForSubImage(Ljava/util/Map;)Ljava/awt/Rectangle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/Rectangle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const-string v0, "SUBIMAGE_X"

    .line 513
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->getIntegerParameter(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "SUBIMAGE_Y"

    .line 514
    invoke-direct {p0, v1, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->getIntegerParameter(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SUBIMAGE_WIDTH"

    .line 515
    invoke-direct {p0, v2, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->getIntegerParameter(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "SUBIMAGE_HEIGHT"

    .line 516
    invoke-direct {p0, v3, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->getIntegerParameter(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object p0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 522
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    if-nez v0, :cond_1

    const-string v3, " x0,"

    .line 524
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-nez v1, :cond_2

    const-string v3, " y0,"

    .line 527
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-nez v2, :cond_3

    const-string v3, " width,"

    .line 530
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-nez p0, :cond_4

    const-string v3, " height,"

    .line 533
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 536
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 537
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incomplete subimage parameters, missing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 540
    :cond_5
    new-instance p1, Ljava/awt/Rectangle;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {p1, v0, v1, v2, p0}, Ljava/awt/Rectangle;-><init>(IIII)V

    return-object p1
.end method

.method private getIntegerParameter(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return-object p0

    .line 497
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    .line 501
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 503
    instance-of p2, p0, Ljava/lang/Integer;

    if-eqz p2, :cond_2

    .line 504
    check-cast p0, Ljava/lang/Integer;

    return-object p0

    .line 506
    :cond_2
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Non-Integer parameter "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getPhotometricInterpreter(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;II[IIIII)Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 p0, 0x1

    sparse-switch p2, :sswitch_data_0

    .line 725
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "TIFF: Unknown fPhotometricInterpretation: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 720
    :sswitch_0
    new-instance p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv;

    move-object v0, p0

    move v1, p6

    move-object v2, p4

    move v3, p5

    move v4, p7

    move v5, p8

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv;-><init>(I[IIII)V

    return-object p0

    .line 714
    :sswitch_1
    new-instance p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterCieLab;

    move-object v0, p0

    move v1, p6

    move-object v2, p4

    move v3, p5

    move v4, p7

    move v5, p8

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterCieLab;-><init>(I[IIII)V

    return-object p0

    .line 708
    :sswitch_2
    new-instance p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;

    move-object v0, p0

    move v1, p6

    move-object v2, p4

    move v3, p5

    move v4, p7

    move v5, p8

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;-><init>(I[IIII)V

    return-object p0

    .line 689
    :sswitch_3
    new-instance p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterCmyk;

    move-object v0, p0

    move v1, p6

    move-object v2, p4

    move v3, p5

    move v4, p7

    move v5, p8

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterCmyk;-><init>(I[IIII)V

    return-object p0

    .line 670
    :sswitch_4
    sget-object p2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_COLOR_MAP:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    invoke-virtual {p1, p2, p0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Z)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntArrayValue()[I

    move-result-object v6

    const/4 p1, 0x3

    shl-int/2addr p0, p3

    mul-int/2addr p1, p0

    .line 676
    array-length p0, v6

    if-eq p0, p1, :cond_0

    .line 677
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Tiff: fColorMap.length ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, v6

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")!=expectedColormapSize ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 682
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;

    move-object v0, p0

    move v1, p6

    move-object v2, p4

    move v3, p5

    move v4, p7

    move v5, p8

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;-><init>(I[IIII[I)V

    return-object p0

    .line 686
    :sswitch_5
    new-instance p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterRgb;

    move-object v0, p0

    move v1, p6

    move-object v2, p4

    move v3, p5

    move v4, p7

    move v5, p8

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterRgb;-><init>(I[IIII)V

    return-object p0

    :sswitch_6
    if-nez p2, :cond_1

    :goto_0
    move v6, p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    .line 666
    :goto_1
    new-instance p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterBiLevel;

    move-object v0, p0

    move v1, p6

    move-object v2, p4

    move v3, p5

    move v4, p7

    move v5, p8

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterBiLevel;-><init>(I[IIIIZ)V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x3 -> :sswitch_4
        0x5 -> :sswitch_3
        0x6 -> :sswitch_2
        0x8 -> :sswitch_1
        0x804c -> :sswitch_0
        0x804d -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public collectRawImageData(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object p0

    .line 403
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    invoke-static {p2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->isStrict(Ljava/util/Map;)Z

    move-result p2

    invoke-direct {v0, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2, p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readDirectories(Lorg/apache/commons/imaging/common/bytesource/ByteSource;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object p0

    .line 406
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 407
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 408
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    .line 409
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getTiffRawImageDataElements()Ljava/util/List;

    move-result-object v1

    .line 411
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;

    .line 412
    iget-wide v3, v2, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;->offset:J

    iget v2, v2, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;->length:I

    invoke-virtual {p1, v3, v4, v2}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getBlock(JI)[B

    move-result-object v2

    .line 414
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    const-string v0, "tiff.dumpImageFile"

    .line 332
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    const-string p0, ""

    .line 386
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_0
    :try_start_1
    const-string v1, ""

    .line 340
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/imaging/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string p0, ""

    .line 343
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object p0

    const/4 v1, 0x0

    .line 350
    new-instance v2, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    invoke-virtual {v2, p2, v1, p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readContents(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object p0

    .line 353
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move p2, v0

    .line 359
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_4

    .line 360
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    .line 362
    iget-object v1, v1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->entries:Ljava/util/List;

    if-nez v1, :cond_2

    goto :goto_0

    .line 370
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/tiff/TiffField;

    .line 371
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    const-string p0, ""

    .line 375
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p0, ""

    .line 386
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :catchall_0
    move-exception p0

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    throw p0
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 0

    .line 74
    sget-object p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object p0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 2

    const/4 p0, 0x1

    .line 79
    new-array p0, p0, [Lorg/apache/commons/imaging/ImageFormat;

    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->TIFF:Lorg/apache/commons/imaging/ImageFormats;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    return-object p0
.end method

.method public getAllBufferedImages(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            ")",
            "Ljava/util/List<",
            "Ljava/awt/image/BufferedImage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object p0

    .line 474
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    .line 475
    invoke-virtual {v0, p1, v1, p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readDirectories(Lorg/apache/commons/imaging/common/bytesource/ByteSource;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object p0

    .line 477
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 478
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 479
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    .line 480
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getTiffImage(Ljava/nio/ByteOrder;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 483
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
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

    .line 457
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object p0

    .line 458
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    invoke-static {p2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->isStrict(Ljava/util/Map;)Z

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    const/4 v1, 0x1

    .line 459
    invoke-virtual {v0, p1, p2, v1, p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readFirstDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object p0

    .line 461
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    .line 462
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    .line 463
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getTiffImage(Ljava/nio/ByteOrder;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    if-nez p0, :cond_0

    .line 465
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "TIFF does not contain an image."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-object p0
.end method

.method protected getBufferedImage(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Ljava/nio/ByteOrder;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;",
            "Ljava/nio/ByteOrder;",
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

    move-object/from16 v9, p1

    .line 547
    iget-object v0, v9, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->entries:Ljava/util/List;

    if-nez v0, :cond_0

    .line 550
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "TIFF missing entries"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_0
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_PHOTOMETRIC_INTERPRETATION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getSingleFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;)S

    move-result v0

    const v1, 0xffff

    and-int v2, v1, v0

    .line 555
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_COMPRESSION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getSingleFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;)S

    move-result v0

    and-int v10, v1, v0

    .line 556
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_IMAGE_WIDTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getSingleFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;)I

    move-result v11

    .line 557
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_IMAGE_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getSingleFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;)I

    move-result v12

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 559
    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->checkForSubImage(Ljava/util/Map;)Ljava/awt/Rectangle;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 563
    iget v3, v1, Ljava/awt/Rectangle;->width:I

    if-gtz v3, :cond_1

    .line 564
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "negative or zero subimage width"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_1
    iget v3, v1, Ljava/awt/Rectangle;->height:I

    if-gtz v3, :cond_2

    .line 567
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "negative or zero subimage height"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_2
    iget v3, v1, Ljava/awt/Rectangle;->x:I

    if-ltz v3, :cond_8

    iget v3, v1, Ljava/awt/Rectangle;->x:I

    if-lt v3, v11, :cond_3

    goto :goto_1

    .line 572
    :cond_3
    iget v3, v1, Ljava/awt/Rectangle;->x:I

    iget v4, v1, Ljava/awt/Rectangle;->width:I

    add-int/2addr v3, v4

    if-le v3, v11, :cond_4

    .line 573
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "subimage (x+width) is outside raster"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    :cond_4
    iget v3, v1, Ljava/awt/Rectangle;->y:I

    if-ltz v3, :cond_7

    iget v3, v1, Ljava/awt/Rectangle;->y:I

    if-lt v3, v12, :cond_5

    goto :goto_0

    .line 578
    :cond_5
    iget v3, v1, Ljava/awt/Rectangle;->y:I

    iget v4, v1, Ljava/awt/Rectangle;->height:I

    add-int/2addr v3, v4

    if-le v3, v12, :cond_6

    .line 579
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "subimage (y+height) is outside raster"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_6
    iget v3, v1, Ljava/awt/Rectangle;->x:I

    if-nez v3, :cond_9

    iget v3, v1, Ljava/awt/Rectangle;->y:I

    if-nez v3, :cond_9

    iget v3, v1, Ljava/awt/Rectangle;->width:I

    if-ne v3, v11, :cond_9

    iget v3, v1, Ljava/awt/Rectangle;->height:I

    if-ne v3, v12, :cond_9

    const/4 v1, 0x0

    goto :goto_2

    .line 576
    :cond_7
    :goto_0
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "subimage y is outside raster"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_8
    :goto_1
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "subimage x is outside raster"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_2
    move-object v13, v1

    .line 594
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_SAMPLES_PER_PIXEL:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    invoke-virtual {v9, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_a

    .line 597
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v1

    move v14, v1

    goto :goto_3

    :cond_a
    move v14, v3

    .line 599
    :goto_3
    new-array v1, v3, [I

    const/4 v15, 0x0

    aput v3, v1, v15

    .line 601
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_BITS_PER_SAMPLE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    invoke-virtual {v9, v3}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 604
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntArrayValue()[I

    move-result-object v1

    .line 605
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValueOrArraySum()I

    move-result v3

    move-object v8, v1

    move/from16 v16, v3

    goto :goto_4

    :cond_b
    move-object v8, v1

    move/from16 v16, v14

    :goto_4
    const/4 v1, -0x1

    .line 618
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_PREDICTOR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    invoke-virtual {v9, v3}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 621
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValueOrArraySum()I

    move-result v1

    :cond_c
    move/from16 v17, v1

    .line 625
    array-length v1, v8

    if-eq v14, v1, :cond_d

    .line 626
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tiff: samplesPerPixel ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")!=fBitsPerSample.length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move-object v1, v9

    move/from16 v3, v16

    move-object v4, v8

    move/from16 v5, v17

    move v6, v14

    move v7, v11

    move-object/from16 v18, v8

    move v8, v12

    .line 633
    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->getPhotometricInterpreter(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;II[IIIII)Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    move-result-object v2

    .line 637
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getTiffImageData()Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    move-result-object v0

    move-object/from16 v4, v18

    move v9, v10

    move-object/from16 v10, p2

    .line 639
    invoke-virtual/range {v0 .. v10}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData;->getDataReader(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;I[IIIIIILjava/nio/ByteOrder;)Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;

    move-result-object v0

    if-eqz v13, :cond_e

    .line 645
    invoke-virtual {v0, v13}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->readImageData(Ljava/awt/Rectangle;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    goto :goto_5

    .line 648
    :cond_e
    new-instance v1, Lorg/apache/commons/imaging/common/ImageBuilder;

    invoke-direct {v1, v11, v12, v15}, Lorg/apache/commons/imaging/common/ImageBuilder;-><init>(IIZ)V

    .line 650
    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->readImageData(Lorg/apache/commons/imaging/common/ImageBuilder;)V

    .line 651
    invoke-virtual {v1}, Lorg/apache/commons/imaging/common/ImageBuilder;->getBufferedImage()Ljava/awt/image/BufferedImage;

    move-result-object v0

    :goto_5
    return-object v0
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 0

    const-string p0, ".tif"

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

    .line 393
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object p0

    .line 395
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->isStrict(Ljava/util/Map;)Z

    move-result v2

    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    invoke-virtual {v0, p1, v1, p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readContents(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    return-object p0
.end method

.method public getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)[B
    .locals 2
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

    .line 86
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object p0

    .line 87
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    invoke-static {p2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->isStrict(Ljava/util/Map;)Z

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readFirstDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object p0

    .line 89
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    .line 91
    sget-object p1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_INTER_COLOR_PROFILE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 26
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

    .line 149
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v0

    .line 150
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    invoke-static/range {p2 .. p2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->isStrict(Ljava/util/Map;)Z

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    const/4 v2, 0x0

    move-object/from16 v3, p1

    invoke-virtual {v1, v3, v2, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readDirectories(Lorg/apache/commons/imaging/common/bytesource/ByteSource;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object v0

    .line 152
    iget-object v1, v0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    .line 154
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_IMAGE_WIDTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Z)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v3

    .line 156
    sget-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_IMAGE_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {v1, v5, v4}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Z)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v5

    if-eqz v3, :cond_a

    if-nez v5, :cond_0

    goto/16 :goto_8

    .line 163
    :cond_0
    invoke-virtual {v5}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v12

    .line 164
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v3

    .line 168
    sget-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_RESOLUTION_UNIT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    invoke-virtual {v1, v5}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v5

    const/4 v6, 0x2

    if-eqz v5, :cond_1

    .line 171
    invoke-virtual {v5}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 173
    invoke-virtual {v5}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v6

    :cond_1
    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-wide v7, 0x400451eb851eb852L    # 2.54

    goto :goto_0

    :pswitch_1
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 190
    :goto_0
    :pswitch_2
    sget-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_XRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    invoke-virtual {v1, v5}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v5

    .line 192
    sget-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_YRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    invoke-virtual {v1, v6}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v6

    const-wide/16 v9, 0x0

    cmpl-double v9, v7, v9

    if-lez v9, :cond_4

    if-eqz v5, :cond_2

    .line 201
    invoke-virtual {v5}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 203
    invoke-virtual {v5}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getDoubleValue()D

    move-result-wide v13

    mul-double/2addr v13, v7

    .line 205
    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    int-to-double v10, v3

    div-double/2addr v10, v13

    double-to-float v10, v10

    goto :goto_1

    :cond_2
    const/4 v4, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    :goto_1
    if-eqz v6, :cond_3

    .line 209
    invoke-virtual {v6}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 211
    invoke-virtual {v6}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getDoubleValue()D

    move-result-wide v5

    mul-double/2addr v5, v7

    .line 213
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v7, v7

    int-to-double v8, v12

    div-double/2addr v8, v5

    double-to-float v5, v8

    move/from16 v17, v4

    move/from16 v16, v5

    move v15, v7

    move/from16 v18, v10

    goto :goto_2

    :cond_3
    move/from16 v17, v4

    move/from16 v18, v10

    const/4 v15, -0x1

    const/high16 v16, -0x40800000    # -1.0f

    goto :goto_2

    :cond_4
    const/4 v15, -0x1

    const/high16 v16, -0x40800000    # -1.0f

    const/16 v17, -0x1

    const/high16 v18, -0x40800000    # -1.0f

    .line 221
    :goto_2
    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_BITS_PER_SAMPLE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    invoke-virtual {v1, v4}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 225
    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 227
    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValueOrArraySum()I

    move-result v4

    move v8, v4

    goto :goto_3

    :cond_5
    const/4 v8, 0x1

    .line 235
    :goto_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 236
    iget-object v4, v1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->entries:Ljava/util/List;

    .line 237
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/imaging/formats/tiff/TiffField;

    .line 238
    invoke-virtual {v5}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->toString()Ljava/lang/String;

    move-result-object v5

    .line 239
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 242
    :cond_6
    sget-object v10, Lorg/apache/commons/imaging/ImageFormats;->TIFF:Lorg/apache/commons/imaging/ImageFormats;

    .line 245
    iget-object v4, v0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    .line 250
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tiff v."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->header:Lorg/apache/commons/imaging/formats/tiff/TiffHeader;

    iget v0, v0, Lorg/apache/commons/imaging/formats/tiff/TiffHeader;->tiffVersion:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 254
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_COLOR_MAP:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    invoke-virtual {v1, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v22, 0x1

    goto :goto_5

    :cond_7
    move/from16 v22, v2

    .line 260
    :goto_5
    sget-object v23, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const v0, 0xffff

    .line 262
    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_COMPRESSION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    invoke-virtual {v1, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getSingleFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;)S

    move-result v1

    and-int/2addr v0, v1

    const v1, 0x8003

    if-eq v0, v1, :cond_9

    const v1, 0x8005

    if-eq v0, v1, :cond_8

    packed-switch v0, :pswitch_data_1

    .line 292
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->UNKNOWN:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    :goto_6
    move-object/from16 v24, v0

    goto :goto_7

    .line 283
    :pswitch_3
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->JPEG:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    goto :goto_6

    .line 280
    :pswitch_4
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->LZW:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    goto :goto_6

    .line 277
    :pswitch_5
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->CCITT_GROUP_4:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    goto :goto_6

    .line 274
    :pswitch_6
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->CCITT_GROUP_3:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    goto :goto_6

    .line 271
    :pswitch_7
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->CCITT_1D:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    goto :goto_6

    .line 268
    :pswitch_8
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->NONE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    goto :goto_6

    .line 289
    :cond_8
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->PACKBITS:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    goto :goto_6

    .line 286
    :cond_9
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->NONE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    goto :goto_6

    .line 296
    :goto_7
    new-instance v0, Lorg/apache/commons/imaging/ImageInfo;

    const-string v11, "TIFF Tag-based Image File Format"

    const-string v13, "image/tiff"

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v6, v0

    move/from16 v19, v3

    invoke-direct/range {v6 .. v24}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V

    return-object v0

    .line 160
    :cond_a
    :goto_8
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "TIFF image missing size info."

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
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

    .line 98
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object p0

    .line 99
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    invoke-static {p2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->isStrict(Ljava/util/Map;)Z

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readFirstDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object p0

    .line 101
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    .line 103
    sget-object p1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_IMAGE_WIDTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Z)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p1

    .line 105
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_IMAGE_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Z)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result p0

    .line 113
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result p1

    .line 115
    new-instance p2, Ljava/awt/Dimension;

    invoke-direct {p2, p1, p0}, Ljava/awt/Dimension;-><init>(II)V

    return-object p2

    .line 109
    :cond_1
    :goto_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "TIFF image missing size info."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 3
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

    .line 121
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object p0

    .line 122
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    invoke-static {p2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->isStrict(Ljava/util/Map;)Z

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    .line 123
    invoke-virtual {v0, p1, p2, p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readContents(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object p0

    .line 126
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    .line 128
    new-instance p2, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    invoke-direct {p2, p0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;-><init>(Lorg/apache/commons/imaging/formats/tiff/TiffContents;)V

    .line 130
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    .line 131
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;-><init>(Ljava/nio/ByteOrder;Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)V

    .line 134
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getDirectoryEntries()Ljava/util/List;

    move-result-object p1

    .line 136
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/tiff/TiffField;

    .line 137
    invoke-virtual {v1, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->add(Lorg/apache/commons/imaging/formats/tiff/TiffField;)V

    goto :goto_1

    .line 140
    :cond_0
    invoke-virtual {p2, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->add(Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;)V

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "Tiff-Custom"

    return-object p0
.end method

.method public getXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
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

    .line 308
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object p0

    .line 309
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    invoke-static {p2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->isStrict(Ljava/util/Map;)Z

    move-result p2

    invoke-direct {v0, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2, p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readDirectories(Lorg/apache/commons/imaging/common/bytesource/ByteSource;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object p0

    .line 311
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    .line 313
    sget-object p1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_XMP:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;Z)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 321
    :cond_0
    :try_start_0
    new-instance p1, Ljava/lang/String;

    const-string p2, "utf-8"

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 324
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "Invalid JPEG XMP Segment."

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 0
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

    .line 734
    new-instance p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;

    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V

    return-void
.end method

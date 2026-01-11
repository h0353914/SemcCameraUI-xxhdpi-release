.class public Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "JpegImageParser.java"


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".jpg"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    const-string v0, ".jpg"

    const-string v1, ".jpeg"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    .line 68
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;I[I)Z
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->keepMarker(I[I)Z

    move-result p0

    return p0
.end method

.method private assembleSegments(Ljava/util/List;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 201
    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->assembleSegments(Ljava/util/List;Z)[B

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 v0, 0x1

    .line 203
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->assembleSegments(Ljava/util/List;Z)[B

    move-result-object p0

    return-object p0
.end method

.method private assembleSegments(Ljava/util/List;Z)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;",
            ">;Z)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 209
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 213
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;

    iget v1, v1, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->numMarkers:I

    .line 215
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "."

    if-ne v2, v1, :cond_4

    .line 220
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    xor-int/lit8 p2, p2, 0x1

    move v2, v0

    move v4, v2

    .line 225
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 226
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;

    add-int v6, v2, p2

    .line 228
    iget v7, v5, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->curMarker:I

    const-string v8, ", segment["

    if-ne v6, v7, :cond_1

    .line 236
    iget v6, v5, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->numMarkers:I

    if-ne v1, v6, :cond_0

    .line 244
    invoke-virtual {v5}, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->getIccBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->dumpSegments(Ljava/util/List;)V

    .line 238
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Inconsistent App2 Segment Count info.  markerCount: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "].numMarkers: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, v5, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->numMarkers:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 229
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->dumpSegments(Ljava/util/List;)V

    .line 230
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Incoherent App2 Segment Ordering.  i: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "].curMarker: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, v5, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->curMarker:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 247
    :cond_2
    new-array p0, v4, [B

    .line 250
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p2, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;

    .line 251
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->getIccBytes()[B

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->getIccBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v2, v0, p0, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->getIccBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr p2, v1

    goto :goto_1

    :cond_3
    return-object p0

    .line 216
    :cond_4
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "App2 Segments Missing.  Found: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", Expected: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 210
    :cond_5
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "No App2 Segments Found."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private dumpSegments(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;",
            ">;)V"
        }
    .end annotation

    .line 259
    invoke-static {}, Lorg/apache/commons/imaging/util/Debug;->debug()V

    .line 260
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "dumpSegments: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 262
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    .line 263
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->curMarker:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->numMarkers:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 267
    :cond_0
    invoke-static {}, Lorg/apache/commons/imaging/util/Debug;->debug()V

    return-void
.end method

.method private filterAPP1Segments(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;",
            ">;"
        }
    .end annotation

    .line 329
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;

    .line 332
    check-cast v0, Lorg/apache/commons/imaging/formats/jpeg/segments/GenericSegment;

    .line 333
    invoke-static {v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->isExifAPP1Segment(Lorg/apache/commons/imaging/formats/jpeg/segments/GenericSegment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static isExifAPP1Segment(Lorg/apache/commons/imaging/formats/jpeg/segments/GenericSegment;)Z
    .locals 1

    .line 325
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/GenericSegment;->getSegmentData()[B

    move-result-object p0

    sget-object v0, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->EXIF_IDENTIFIER_CODE:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-static {p0, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->startsWith([BLorg/apache/commons/imaging/common/BinaryConstant;)Z

    move-result p0

    return p0
.end method

.method private keepMarker(I[I)Z
    .locals 4

    const/4 p0, 0x1

    if-nez p2, :cond_0

    return p0

    .line 106
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p2, v2

    if-ne v3, p1, :cond_1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1120
    const-string v0, "jpeg.dumpImageFile"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1128
    :cond_0
    const-string v2, ""

    invoke-virtual {v0, p1, v2}, Lorg/apache/commons/imaging/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1131
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1134
    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[IZ)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1140
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_1

    .line 1142
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;

    .line 1144
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 1146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": marker: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;->marker:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;->length:I

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1150
    invoke-virtual {p2, p1}, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1153
    :cond_1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 1137
    :cond_2
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "No Segments Found."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 0

    .line 91
    sget-object p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object p0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 2

    const/4 p0, 0x1

    .line 74
    new-array p0, p0, [Lorg/apache/commons/imaging/ImageFormat;

    const/4 v0, 0x0

    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->JPEG:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v1, p0, v0

    return-object p0
.end method

.method public final getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 0
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

    .line 97
    new-instance p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;

    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;-><init>()V

    .line 98
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->decode(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 0

    .line 85
    const-string p0, ".jpg"

    return-object p0
.end method

.method public getExifMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->getExifRawData(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    .line 349
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 351
    :cond_1
    const-string p1, "READ_THUMBNAILS"

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 352
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :cond_2
    new-instance p1, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;

    invoke-direct {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;-><init>()V

    invoke-virtual {p1, p0, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->getMetadata([BLjava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    return-object p0
.end method

.method public getExifRawData(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0xffe1

    .line 361
    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[IZ)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 364
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->filterAPP1Segments(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 369
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->getDebug()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 370
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exif_segments.size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 378
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    .line 381
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_3

    .line 387
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/formats/jpeg/segments/GenericSegment;

    .line 388
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/GenericSegment;->getSegmentData()[B

    move-result-object p0

    .line 394
    const-string p1, "trimmed exif bytes"

    const/4 v0, 0x6

    invoke-static {p1, p0, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->remainingBytes(Ljava/lang/String;[BI)[B

    move-result-object p0

    return-object p0

    .line 382
    :cond_3
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Imaging currently can\'t parse EXIF metadata split across multiple APP1 segments.  Please send this image to the Imaging project."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    return-object v0
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

    const p2, 0xffe2

    .line 278
    filled-new-array {p2}, [I

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[IZ)Ljava/util/List;

    move-result-object p1

    .line 281
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 284
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;

    .line 285
    check-cast v0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;

    .line 286
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->getIccBytes()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 287
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 292
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 296
    :cond_2
    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->assembleSegments(Ljava/util/List;)[B

    move-result-object p1

    .line 298
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->getDebug()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 299
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bytes: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 302
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->getDebug()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 303
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, ""

    invoke-virtual {p0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    return-object p1
.end method

.method public getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 29
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

    move-object/from16 v1, p1

    const/16 v2, 0xd

    .line 639
    new-array v2, v2, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[IZ)Ljava/util/List;

    move-result-object v2

    .line 658
    const-string v4, "No SOFN Data Found."

    if-eqz v2, :cond_38

    const v5, 0xffe0

    .line 666
    filled-new-array {v5}, [I

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v5, v6}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[IZ)Ljava/util/List;

    move-result-object v5

    .line 669
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    if-eqz v2, :cond_37

    .line 677
    iget v4, v2, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->width:I

    .line 678
    iget v13, v2, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->height:I

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    .line 682
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 683
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;

    goto :goto_0

    :cond_0
    move-object v5, v7

    :goto_0
    const v8, 0xffee

    .line 686
    filled-new-array {v8}, [I

    move-result-object v8

    invoke-virtual {v0, v1, v8, v6}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[IZ)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 688
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 689
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/imaging/formats/jpeg/segments/App14Segment;

    :cond_1
    const/4 v12, 0x2

    if-eqz v5, :cond_4

    .line 703
    iget v9, v5, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->xDensity:I

    int-to-double v10, v9

    .line 704
    iget v9, v5, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->yDensity:I

    int-to-double v14, v9

    .line 705
    iget v9, v5, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->densityUnits:I

    .line 709
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "Jpeg/JFIF v."

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v5, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->jfifMajorVersion:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "."

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v8, v5, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->jfifMinorVersion:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eq v9, v6, :cond_3

    if-eq v9, v12, :cond_2

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    goto/16 :goto_5

    :cond_2
    const-wide v8, 0x400451eb851eb852L    # 2.54

    goto/16 :goto_5

    :cond_3
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_5

    .line 725
    :cond_4
    invoke-virtual/range {p0 .. p2}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;

    if-eqz v3, :cond_a

    .line 730
    sget-object v8, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_XRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    invoke-virtual {v3, v8}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->findEXIFValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 733
    invoke-virtual {v8}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    goto :goto_1

    :cond_5
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    .line 737
    :goto_1
    sget-object v10, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_YRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    invoke-virtual {v3, v10}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->findEXIFValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 740
    invoke-virtual {v10}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    goto :goto_2

    :cond_6
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    .line 744
    :goto_2
    sget-object v14, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_RESOLUTION_UNIT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    invoke-virtual {v3, v14}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->findEXIFValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 747
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-eq v3, v12, :cond_8

    const/4 v14, 0x3

    if-eq v3, v14, :cond_7

    goto :goto_3

    :cond_7
    move-wide v14, v8

    const-wide v8, 0x400451eb851eb852L    # 2.54

    goto :goto_4

    :cond_8
    move-wide v14, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    goto :goto_4

    :cond_9
    :goto_3
    move-wide v14, v8

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    goto :goto_4

    :cond_a
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    .line 766
    :goto_4
    const-string v3, "Jpeg/DCM"

    move-wide/from16 v27, v10

    move-wide v10, v14

    move-wide/from16 v14, v27

    :goto_5
    const-wide/16 v16, 0x0

    cmpl-double v16, v8, v16

    if-lez v16, :cond_b

    mul-double/2addr v10, v8

    move-object/from16 v17, v7

    .line 776
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    move/from16 v18, v13

    int-to-double v12, v4

    div-double/2addr v12, v10

    double-to-float v10, v12

    mul-double/2addr v14, v8

    .line 778
    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    move/from16 v13, v18

    int-to-double v11, v13

    div-double/2addr v11, v14

    double-to-float v9, v11

    move/from16 v19, v6

    move v6, v8

    move/from16 v18, v9

    move/from16 v20, v10

    goto :goto_6

    :cond_b
    move-object/from16 v17, v7

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v8, -0x1

    move/from16 v18, v6

    move/from16 v20, v18

    move v6, v8

    move/from16 v19, v6

    .line 782
    :goto_6
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const v8, 0xfffe

    .line 783
    filled-new-array {v8}, [I

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v8, v9}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[IZ)Ljava/util/List;

    move-result-object v0

    .line 785
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;

    .line 786
    check-cast v1, Lorg/apache/commons/imaging/formats/jpeg/segments/ComSegment;

    .line 789
    :try_start_0
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/jpeg/segments/ComSegment;->getComment()[B

    move-result-object v1

    const-string v11, "UTF-8"

    invoke-direct {v8, v1, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    .line 790
    :catch_0
    const-string v8, ""

    .line 792
    :goto_8
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 795
    :cond_c
    iget v0, v2, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    .line 796
    iget v1, v2, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->precision:I

    mul-int/2addr v1, v0

    .line 799
    sget-object v11, Lorg/apache/commons/imaging/ImageFormats;->JPEG:Lorg/apache/commons/imaging/ImageFormats;

    .line 805
    iget v8, v2, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->marker:I

    const v12, 0xffc2

    if-ne v8, v12, :cond_d

    const/16 v21, 0x1

    goto :goto_9

    :cond_d
    move/from16 v21, v9

    .line 811
    :goto_9
    sget-object v8, Lorg/apache/commons/imaging/ImageInfo$ColorType;->UNKNOWN:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const/4 v12, 0x4

    if-eqz v17, :cond_12

    .line 814
    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/imaging/formats/jpeg/segments/App14Segment;->isAdobeJpegSegment()Z

    move-result v14

    if-eqz v14, :cond_12

    .line 815
    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/imaging/formats/jpeg/segments/App14Segment;->getAdobeColorTransform()I

    move-result v2

    if-nez v2, :cond_f

    const/4 v5, 0x3

    if-ne v0, v5, :cond_e

    .line 818
    sget-object v8, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto :goto_a

    :cond_e
    if-ne v0, v12, :cond_11

    .line 820
    sget-object v8, Lorg/apache/commons/imaging/ImageInfo$ColorType;->CMYK:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto :goto_a

    :cond_f
    const/4 v0, 0x1

    if-ne v2, v0, :cond_10

    .line 823
    sget-object v8, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCbCr:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto :goto_a

    :cond_10
    const/4 v0, 0x2

    if-ne v2, v0, :cond_11

    .line 825
    sget-object v8, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCCK:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    :cond_11
    :goto_a
    move-object/from16 v24, v8

    goto :goto_c

    :cond_12
    if-eqz v5, :cond_15

    const/4 v5, 0x1

    if-ne v0, v5, :cond_13

    .line 829
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->GRAYSCALE:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto :goto_b

    :cond_13
    const/4 v14, 0x3

    if-ne v0, v14, :cond_14

    .line 831
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCbCr:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto :goto_b

    :cond_14
    move-object/from16 p0, v8

    goto/16 :goto_16

    :cond_15
    const/4 v5, 0x1

    const/4 v14, 0x3

    if-ne v0, v5, :cond_16

    .line 835
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->GRAYSCALE:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    :goto_b
    move-object/from16 v24, v0

    :goto_c
    move/from16 v22, v9

    goto/16 :goto_18

    :cond_16
    const/4 v5, 0x2

    if-ne v0, v5, :cond_17

    .line 837
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->GRAYSCALE:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    :goto_d
    move-object/from16 v24, v0

    const/16 v22, 0x1

    goto/16 :goto_18

    :cond_17
    if-eq v0, v14, :cond_18

    if-ne v0, v12, :cond_14

    .line 845
    :cond_18
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getComponents()[Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    move-result-object v5

    array-length v14, v5

    move v7, v9

    move v15, v7

    move/from16 v17, v15

    move/from16 v22, v17

    move/from16 v24, v22

    move/from16 v25, v24

    :goto_e
    if-ge v7, v14, :cond_1d

    aget-object v9, v5, v7

    .line 846
    iget v9, v9, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->componentIdentifier:I

    const/4 v12, 0x1

    if-ne v9, v12, :cond_19

    move v15, v12

    goto :goto_f

    :cond_19
    const/4 v12, 0x2

    if-ne v9, v12, :cond_1a

    const/16 v17, 0x1

    goto :goto_f

    :cond_1a
    const/4 v12, 0x3

    if-ne v9, v12, :cond_1b

    const/16 v22, 0x1

    goto :goto_f

    :cond_1b
    const/4 v12, 0x4

    if-ne v9, v12, :cond_1c

    const/16 v24, 0x1

    goto :goto_f

    :cond_1c
    const/16 v25, 0x1

    :goto_f
    add-int/lit8 v7, v7, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x4

    goto :goto_e

    :cond_1d
    const/4 v7, 0x3

    if-ne v0, v7, :cond_1e

    if-eqz v15, :cond_1e

    if-eqz v17, :cond_1e

    if-eqz v22, :cond_1e

    if-nez v24, :cond_1e

    if-nez v25, :cond_1e

    .line 860
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCbCr:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    :goto_10
    move-object/from16 v24, v0

    goto/16 :goto_17

    :cond_1e
    const/4 v5, 0x4

    if-ne v0, v5, :cond_1f

    if-eqz v15, :cond_1f

    if-eqz v17, :cond_1f

    if-eqz v22, :cond_1f

    if-eqz v24, :cond_1f

    if-nez v25, :cond_1f

    .line 862
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCbCr:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto :goto_d

    .line 872
    :cond_1f
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getComponents()[Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    move-result-object v5

    array-length v7, v5

    move-object/from16 p0, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    :goto_11
    if-ge v8, v7, :cond_27

    move/from16 v25, v7

    aget-object v7, v5, v8

    .line 873
    iget v7, v7, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->componentIdentifier:I

    move-object/from16 v26, v5

    const/16 v5, 0x52

    if-ne v7, v5, :cond_20

    const/4 v9, 0x1

    goto :goto_12

    :cond_20
    const/16 v5, 0x47

    if-ne v7, v5, :cond_21

    const/4 v12, 0x1

    goto :goto_12

    :cond_21
    const/16 v5, 0x42

    if-ne v7, v5, :cond_22

    const/4 v14, 0x1

    goto :goto_12

    :cond_22
    const/16 v5, 0x41

    if-ne v7, v5, :cond_23

    const/4 v15, 0x1

    goto :goto_12

    :cond_23
    const/16 v5, 0x43

    if-ne v7, v5, :cond_24

    const/16 v17, 0x1

    goto :goto_12

    :cond_24
    const/16 v5, 0x63

    if-ne v7, v5, :cond_25

    const/16 v22, 0x1

    goto :goto_12

    :cond_25
    const/16 v5, 0x59

    if-ne v7, v5, :cond_26

    const/16 v24, 0x1

    :cond_26
    :goto_12
    add-int/lit8 v8, v8, 0x1

    move/from16 v7, v25

    move-object/from16 v5, v26

    goto :goto_11

    :cond_27
    if-eqz v9, :cond_28

    if-eqz v12, :cond_28

    if-eqz v14, :cond_28

    if-nez v15, :cond_28

    if-nez v17, :cond_28

    if-nez v22, :cond_28

    if-nez v24, :cond_28

    .line 891
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto :goto_10

    :cond_28
    if-eqz v9, :cond_29

    if-eqz v12, :cond_29

    if-eqz v14, :cond_29

    if-eqz v15, :cond_29

    if-nez v17, :cond_29

    if-nez v22, :cond_29

    if-nez v24, :cond_29

    .line 893
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto/16 :goto_d

    :cond_29
    if-eqz v24, :cond_2a

    if-eqz v17, :cond_2a

    if-eqz v22, :cond_2a

    if-nez v9, :cond_2a

    if-nez v12, :cond_2a

    if-nez v14, :cond_2a

    if-nez v15, :cond_2a

    .line 896
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCC:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto/16 :goto_10

    :cond_2a
    if-eqz v24, :cond_2b

    if-eqz v17, :cond_2b

    if-eqz v22, :cond_2b

    if-eqz v15, :cond_2b

    if-nez v9, :cond_2b

    if-nez v12, :cond_2b

    if-nez v14, :cond_2b

    .line 898
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCC:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto/16 :goto_d

    .line 905
    :cond_2b
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getComponents()[Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    move-result-object v2

    array-length v5, v2

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    move v9, v8

    move v12, v9

    const/4 v14, 0x0

    move v8, v7

    :goto_13
    if-ge v14, v5, :cond_30

    aget-object v15, v2, v14

    move-object/from16 v17, v2

    .line 906
    iget v2, v15, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->horizontalSamplingFactor:I

    if-le v9, v2, :cond_2c

    .line 907
    iget v2, v15, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->horizontalSamplingFactor:I

    move v9, v2

    .line 909
    :cond_2c
    iget v2, v15, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->horizontalSamplingFactor:I

    if-ge v7, v2, :cond_2d

    .line 910
    iget v2, v15, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->horizontalSamplingFactor:I

    move v7, v2

    .line 912
    :cond_2d
    iget v2, v15, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->verticalSamplingFactor:I

    if-le v12, v2, :cond_2e

    .line 913
    iget v2, v15, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->verticalSamplingFactor:I

    move v12, v2

    .line 915
    :cond_2e
    iget v2, v15, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->verticalSamplingFactor:I

    if-ge v8, v2, :cond_2f

    .line 916
    iget v2, v15, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->verticalSamplingFactor:I

    move v8, v2

    :cond_2f
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v17

    goto :goto_13

    :cond_30
    if-ne v9, v7, :cond_32

    if-eq v12, v8, :cond_31

    goto :goto_14

    :cond_31
    const/4 v2, 0x3

    const/16 v16, 0x0

    goto :goto_15

    :cond_32
    :goto_14
    const/4 v2, 0x3

    const/16 v16, 0x1

    :goto_15
    if-ne v0, v2, :cond_34

    if-eqz v16, :cond_33

    .line 923
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCbCr:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto/16 :goto_10

    .line 925
    :cond_33
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto/16 :goto_10

    :cond_34
    const/4 v2, 0x4

    if-ne v0, v2, :cond_36

    if-eqz v16, :cond_35

    .line 929
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCCK:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto/16 :goto_10

    .line 931
    :cond_35
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->CMYK:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto/16 :goto_10

    :cond_36
    :goto_16
    move-object/from16 v24, p0

    :goto_17
    const/16 v22, 0x0

    .line 939
    :goto_18
    sget-object v25, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->JPEG:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 941
    new-instance v0, Lorg/apache/commons/imaging/ImageInfo;

    move-object v7, v0

    const/4 v15, 0x1

    const/16 v23, 0x0

    const-string v12, "JPEG (Joint Photographic Experts Group) Format"

    const-string v14, "image/jpeg"

    move-object v8, v3

    move v9, v1

    move/from16 v16, v6

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v4

    invoke-direct/range {v7 .. v25}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V

    return-object v0

    .line 674
    :cond_37
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    invoke-direct {v0, v4}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 659
    :cond_38
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    invoke-direct {v0, v4}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

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

.method public getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 1
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

    const/16 p2, 0xd

    .line 603
    new-array p2, p2, [I

    fill-array-data p2, :array_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[IZ)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 621
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 625
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, v0, :cond_0

    const/4 p1, 0x0

    .line 629
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    .line 631
    new-instance p1, Ljava/awt/Dimension;

    iget p2, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->width:I

    iget p0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->height:I

    invoke-direct {p1, p2, p0}, Ljava/awt/Dimension;-><init>(II)V

    return-object p1

    .line 626
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Redundant JFIF Data Found."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 622
    :cond_1
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "No JFIF Data Found."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

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

.method public getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 1
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

    .line 312
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->getExifMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    move-result-object v0

    .line 314
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->getPhotoshopMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;

    move-result-object p0

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 321
    :cond_0
    new-instance p1, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;

    invoke-direct {p1, p0, v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;-><init>(Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;)V

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 80
    const-string p0, "Jpeg-Custom"

    return-object p0
.end method

.method public getPhotoshopMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0xffed

    .line 573
    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[IZ)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_5

    .line 576
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 582
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v0, p1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;

    .line 583
    check-cast v1, Lorg/apache/commons/imaging/formats/jpeg/segments/App13Segment;

    .line 585
    invoke-virtual {v1, p2}, Lorg/apache/commons/imaging/formats/jpeg/segments/App13Segment;->parsePhotoshopSegment(Ljava/util/Map;)Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;

    move-result-object v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    .line 587
    :cond_1
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Jpeg contains more than one Photoshop App13 segment."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    return-object p1

    .line 597
    :cond_4
    new-instance p0, Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;-><init>(Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;)V

    return-object p0

    :cond_5
    :goto_2
    return-object p1
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

    .line 527
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 529
    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$5;

    invoke-direct {v0, p0, p2}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$5;-><init>(Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;Ljava/util/List;)V

    .line 559
    new-instance p0, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;

    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;)V

    .line 561
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 564
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-gt p0, p1, :cond_1

    const/4 p0, 0x0

    .line 568
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 565
    :cond_1
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Jpeg file contains more than one XMP segment."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasExifSegment(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 399
    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 401
    new-instance v2, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$2;

    invoke-direct {v2, p0, v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$2;-><init>(Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;[Z)V

    .line 431
    new-instance p0, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;

    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;-><init>()V

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;)V

    .line 433
    aget-boolean p0, v0, v1

    return p0
.end method

.method public hasIptcSegment(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 438
    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 440
    new-instance v2, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$3;

    invoke-direct {v2, p0, v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$3;-><init>(Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;[Z)V

    .line 470
    new-instance p0, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;

    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;-><init>()V

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;)V

    .line 472
    aget-boolean p0, v0, v1

    return p0
.end method

.method public hasXmpSegment(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 477
    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 479
    new-instance v2, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$4;

    invoke-direct {v2, p0, v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$4;-><init>(Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;[Z)V

    .line 508
    new-instance p0, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;

    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;-><init>()V

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;)V

    .line 510
    aget-boolean p0, v0, v1

    return p0
.end method

.method public readSegments(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[IZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "[IZ)",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 272
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[IZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public readSegments(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[IZZ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "[IZZ)",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0xd

    .line 120
    new-array v5, v0, [I

    fill-array-data v5, :array_0

    .line 137
    new-instance v7, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p0

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;-><init>(Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;[ILjava/util/List;Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;[IZ)V

    .line 194
    new-instance p0, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;

    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;-><init>()V

    invoke-virtual {p0, p1, v7}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;)V

    return-object p4

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

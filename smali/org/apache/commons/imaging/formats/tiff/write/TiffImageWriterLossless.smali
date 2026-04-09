.class public Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;
.super Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;
.source "TiffImageWriterLossless.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$BufferOutputStream;
    }
.end annotation


# static fields
.field private static final ELEMENT_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/imaging/formats/tiff/TiffElement;",
            ">;"
        }
    .end annotation
.end field

.field private static final ITEM_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final exifBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$1;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$1;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->ELEMENT_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 54
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$2;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$2;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->ITEM_SIZE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;[B)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;-><init>(Ljava/nio/ByteOrder;)V

    .line 66
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->exifBytes:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->exifBytes:[B

    return-void
.end method

.method private analyzeOldTiff(Ljava/util/Map;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/TiffElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    :try_start_0
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->exifBytes:[B

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    .line 74
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object p0

    .line 75
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readContents(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object p0

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    .line 82
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    .line 83
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getDirectoryEntries()Ljava/util/List;

    move-result-object v3

    .line 86
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/imaging/formats/tiff/TiffField;

    .line 87
    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getOversizeValueElement()Lorg/apache/commons/imaging/formats/tiff/TiffElement;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 89
    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getTag()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    if-eqz v6, :cond_2

    .line 90
    invoke-virtual {v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->getSeperateValue()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->bytesEqual([B)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 93
    invoke-virtual {v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->getSeperateValue()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getOffset()I

    move-result v4

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->setOffset(J)V

    goto :goto_1

    .line 95
    :cond_2
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 100
    :cond_3
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getJpegImageData()Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 102
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_4
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getTiffImageData()Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData;->getImageData()[Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    move-result-object v1

    .line 108
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :cond_5
    sget-object p0, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 116
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v3, -0x1

    .line 122
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/tiff/TiffElement;

    .line 123
    iget-wide v5, v0, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    iget v1, v0, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    int-to-long v7, v1

    add-long/2addr v5, v7

    if-nez v2, :cond_6

    goto :goto_3

    .line 127
    :cond_6
    iget-wide v7, v0, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    sub-long/2addr v7, v3

    const-wide/16 v9, 0x3

    cmp-long v1, v7, v9

    if-lez v1, :cond_7

    .line 128
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/TiffElement$Stub;

    iget-wide v7, v2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    iget-wide v9, v2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    sub-long/2addr v3, v9

    long-to-int v2, v3

    invoke-direct {v1, v7, v8, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$Stub;-><init>(JI)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    move-object v2, v0

    :cond_7
    move-wide v3, v5

    goto :goto_2

    :cond_8
    if-eqz v2, :cond_9

    .line 137
    new-instance p1, Lorg/apache/commons/imaging/formats/tiff/TiffElement$Stub;

    iget-wide v0, v2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    iget-wide v5, v2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    sub-long/2addr v3, v5

    long-to-int v2, v3

    invoke-direct {p1, v0, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$Stub;-><init>(JI)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    return-object p0

    :catch_0
    move-exception p0

    .line 146
    new-instance p1, Lorg/apache/commons/imaging/ImageWriteException;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/ImageReadException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private updateOffsetsStep(Ljava/util/List;Ljava/util/List;)J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/TiffElement;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;",
            ">;)J"
        }
    .end annotation

    .line 204
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->exifBytes:[B

    array-length p0, p0

    int-to-long v0, p0

    .line 207
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 210
    sget-object p1, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 211
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 214
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 215
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/imaging/formats/tiff/TiffElement;

    .line 216
    iget-wide v3, p1, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    iget v5, p1, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    cmp-long v3, v3, v0

    if-nez v3, :cond_0

    .line 219
    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    int-to-long v3, p1

    sub-long/2addr v0, v3

    .line 220
    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 226
    :cond_0
    sget-object p1, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->ELEMENT_SIZE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 227
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 230
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 232
    sget-object p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->ITEM_SIZE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 233
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 235
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 237
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    .line 238
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->getItemLength()I

    move-result v3

    const/4 v4, 0x0

    .line 242
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/imaging/formats/tiff/TiffElement;

    .line 243
    iget v7, v6, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    if-lt v7, v3, :cond_2

    move-object v4, v6

    goto :goto_2

    :cond_2
    if-nez v4, :cond_3

    .line 251
    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->setOffset(J)V

    int-to-long v3, v3

    add-long/2addr v0, v3

    goto :goto_1

    .line 254
    :cond_3
    iget-wide v5, v4, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    invoke-virtual {p2, v5, v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->setOffset(J)V

    .line 255
    invoke-interface {p0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 257
    iget p2, v4, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    if-le p2, v3, :cond_1

    .line 259
    iget-wide v5, v4, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    int-to-long v7, v3

    add-long/2addr v5, v7

    .line 260
    iget p2, v4, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    sub-int/2addr p2, v3

    .line 261
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/TiffElement$Stub;

    invoke-direct {v3, v5, v6, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$Stub;-><init>(JI)V

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->ELEMENT_SIZE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 265
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_1

    :cond_4
    return-wide v0
.end method

.method private writeStep(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;Ljava/util/List;Ljava/util/List;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/TiffElement;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 304
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->getRootDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p2

    long-to-int p5, p5

    .line 306
    new-array p5, p5, [B

    .line 309
    iget-object p6, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->exifBytes:[B

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->exifBytes:[B

    array-length v0, v0

    array-length v1, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p6, v1, p5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    new-instance p6, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$BufferOutputStream;

    invoke-direct {p6, p5, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$BufferOutputStream;-><init>([BI)V

    .line 317
    new-instance v0, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->byteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v0, p6, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 318
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->getOffset()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->writeImageFileHeader(Lorg/apache/commons/imaging/common/BinaryOutputStream;J)V

    .line 323
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/commons/imaging/formats/tiff/TiffElement;

    move p6, v1

    .line 324
    :goto_0
    iget v0, p3, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    if-ge p6, v0, :cond_0

    .line 325
    iget-wide v2, p3, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    int-to-long v4, p6

    add-long/2addr v2, v4

    long-to-int v0, v2

    .line 326
    array-length v2, p5

    if-ge v0, v2, :cond_1

    .line 327
    aput-byte v1, p5, v0

    :cond_1
    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    .line 333
    :cond_2
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    .line 334
    new-instance p4, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$BufferOutputStream;

    invoke-virtual {p3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->getOffset()J

    move-result-wide v0

    long-to-int p6, v0

    invoke-direct {p4, p5, p6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$BufferOutputStream;-><init>([BI)V

    .line 336
    new-instance p6, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->byteOrder:Ljava/nio/ByteOrder;

    invoke-direct {p6, p4, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 337
    invoke-virtual {p3, p6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->writeItem(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V

    goto :goto_1

    .line 340
    :cond_3
    invoke-virtual {p1, p5}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public write(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 156
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_MAKER_NOTE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;

    invoke-virtual {p2, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->getSeperateValue()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 158
    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_MAKER_NOTE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;

    iget v2, v2, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;->tag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->analyzeOldTiff(Ljava/util/Map;)Ljava/util/List;

    move-result-object v6

    .line 161
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->exifBytes:[B

    array-length v1, v1

    .line 162
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string p1, "Couldn\'t analyze old tiff data."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 164
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    .line 165
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;

    .line 166
    iget-wide v3, v2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    const-wide/16 v7, 0x8

    cmp-long v3, v3, v7

    if-nez v3, :cond_2

    iget-wide v3, v2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    iget v2, v2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    int-to-long v9, v2

    add-long/2addr v3, v9

    add-long/2addr v3, v7

    int-to-long v1, v1

    cmp-long v1, v3, v1

    if-nez v1, :cond_2

    .line 170
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->byteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;-><init>(Ljava/nio/ByteOrder;)V

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;->write(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V

    return-void

    .line 174
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 175
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 176
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    .line 177
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->getSeperateValue()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->getOffset()J

    move-result-wide v3

    const-wide/16 v7, -0x1

    cmp-long v3, v3, v7

    if-eqz v3, :cond_3

    .line 178
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->getSeperateValue()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->getOffset()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 182
    :cond_4
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->validateDirectories(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;

    move-result-object v0

    .line 184
    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->getOutputItems(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;)Ljava/util/List;

    move-result-object v2

    .line 186
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    .line 188
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->getOffset()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 189
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 193
    :cond_6
    invoke-direct {p0, v6, v7}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->updateOffsetsStep(Ljava/util/List;Ljava/util/List;)J

    move-result-wide v8

    .line 195
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->updateOffsets(Ljava/nio/ByteOrder;)V

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 197
    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->writeStep(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;Ljava/util/List;Ljava/util/List;J)V

    return-void
.end method

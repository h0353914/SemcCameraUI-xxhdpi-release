.class public abstract Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;
.super Ljava/lang/Object;
.source "TiffImageWriterBase.java"


# instance fields
.field protected final byteOrder:Ljava/nio/ByteOrder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffConstants;->DEFAULT_TIFF_BYTE_ORDER:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->byteOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->byteOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method private combineUserExifIntoFinalExif(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 502
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->getDirectories()Ljava/util/List;

    move-result-object p0

    .line 504
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 505
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->getDirectories()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    .line 506
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    if-gez v1, :cond_1

    .line 509
    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->addDirectory(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;)V

    goto :goto_0

    .line 511
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    .line 513
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    .line 514
    iget-object v3, v2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tagInfo:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    invoke-virtual {v1, v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    move-result-object v3

    if-nez v3, :cond_2

    .line 515
    invoke-virtual {v1, v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private getStrips(Ljava/awt/image/BufferedImage;III)[[B
    .locals 21

    move/from16 v0, p3

    move/from16 v1, p4

    .line 524
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    .line 525
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    add-int v4, v3, v1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 527
    div-int/2addr v4, v1

    .line 531
    new-array v6, v4, [[B

    move v9, v3

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_6

    .line 536
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    sub-int/2addr v9, v10

    mul-int v11, v0, p2

    mul-int/2addr v11, v2

    add-int/lit8 v11, v11, 0x7

    const/16 v12, 0x8

    .line 540
    div-int/2addr v11, v12

    mul-int/2addr v10, v11

    .line 543
    new-array v10, v10, [B

    mul-int v11, v8, v1

    add-int v13, v11, v1

    const/4 v14, 0x0

    :goto_1
    if-ge v11, v3, :cond_5

    if-ge v11, v13, :cond_5

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_2
    if-ge v15, v2, :cond_3

    move-object/from16 v7, p1

    .line 553
    invoke-virtual {v7, v15, v11}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v12

    shr-int/lit8 v5, v12, 0x10

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v1, v12, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v12, v12, 0xff

    move/from16 v20, v2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    add-int/2addr v5, v1

    add-int/2addr v5, v12

    .line 559
    div-int/lit8 v5, v5, 0x3

    const/16 v1, 0x7f

    if-le v5, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_3

    :cond_0
    move v1, v2

    :goto_3
    shl-int/lit8 v5, v17, 0x1

    or-int/2addr v1, v5

    add-int/lit8 v5, v16, 0x1

    const/16 v12, 0x8

    if-ne v5, v12, :cond_1

    add-int/lit8 v5, v14, 0x1

    int-to-byte v1, v1

    .line 569
    aput-byte v1, v10, v14

    move v14, v5

    const/16 v16, 0x0

    const/16 v17, 0x0

    goto :goto_4

    :cond_1
    move/from16 v17, v1

    move/from16 v16, v5

    :goto_4
    move/from16 v18, v12

    goto :goto_5

    :cond_2
    const/16 v18, 0x8

    add-int/lit8 v19, v14, 0x1

    int-to-byte v5, v5

    .line 574
    aput-byte v5, v10, v14

    add-int/lit8 v5, v14, 0x2

    int-to-byte v1, v1

    .line 575
    aput-byte v1, v10, v19

    add-int/lit8 v14, v14, 0x3

    int-to-byte v1, v12

    .line 576
    aput-byte v1, v10, v5

    :goto_5
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, p4

    move v5, v2

    move/from16 v12, v18

    move/from16 v2, v20

    goto :goto_2

    :cond_3
    move-object/from16 v7, p1

    move/from16 v20, v2

    move v2, v5

    move/from16 v18, v12

    if-lez v16, :cond_4

    rsub-int/lit8 v1, v16, 0x8

    shl-int v1, v17, v1

    add-int/lit8 v5, v14, 0x1

    int-to-byte v1, v1

    .line 581
    aput-byte v1, v10, v14

    move v14, v5

    :cond_4
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p4

    move v5, v2

    move/from16 v12, v18

    move/from16 v2, v20

    goto :goto_1

    :cond_5
    move-object/from16 v7, p1

    move/from16 v20, v2

    move v2, v5

    .line 585
    aput-object v10, v6, v8

    add-int/lit8 v8, v8, 0x1

    move/from16 v1, p4

    move v5, v2

    move/from16 v2, v20

    goto/16 :goto_0

    :cond_6
    return-object v6
.end method

.method protected static imageDataPaddingLength(I)I
    .locals 0

    .line 59
    rem-int/lit8 p0, p0, 0x4

    rsub-int/lit8 p0, p0, 0x4

    rem-int/lit8 p0, p0, 0x4

    return p0
.end method


# virtual methods
.method protected validateDirectories(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 67
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->getDirectories()Ljava/util/List;

    move-result-object v1

    .line 69
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 81
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 82
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const-string v12, "."

    if-eqz v11, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    .line 83
    iget v13, v11, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->type:I

    .line 84
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v3, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-gez v13, :cond_7

    const/4 v12, -0x4

    if-eq v13, v12, :cond_5

    const/4 v12, -0x3

    if-eq v13, v12, :cond_3

    const/4 v12, -0x2

    if-ne v13, v12, :cond_2

    if-nez v7, :cond_1

    move-object v7, v11

    goto :goto_0

    .line 92
    :cond_1
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v1, "More than one EXIF directory."

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_2
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown directory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez v6, :cond_4

    move-object v6, v11

    goto :goto_0

    .line 100
    :cond_4
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v1, "More than one GPS directory."

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-nez v5, :cond_6

    move-object v5, v11

    goto :goto_0

    .line 108
    :cond_6
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v1, "More than one Interoperability directory."

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_7
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    .line 123
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :goto_0
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 128
    invoke-virtual {v11}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->getFields()Ljava/util/List;

    move-result-object v11

    .line 129
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_8
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    .line 130
    iget v14, v13, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tag:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    .line 135
    iget v14, v13, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tag:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 137
    iget v14, v13, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tag:I

    sget-object v15, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_EXIF_OFFSET:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    iget v15, v15, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;->tag:I

    if-ne v14, v15, :cond_a

    if-nez v9, :cond_9

    move-object v9, v13

    goto :goto_1

    .line 139
    :cond_9
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v1, "More than one Exif directory offset field."

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_a
    iget v14, v13, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tag:I

    sget-object v15, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_INTEROP_OFFSET:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    iget v15, v15, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;->tag:I

    if-ne v14, v15, :cond_c

    if-nez v8, :cond_b

    move-object v8, v13

    goto :goto_1

    .line 145
    :cond_b
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v1, "More than one Interoperability directory offset field."

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_c
    iget v14, v13, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tag:I

    sget-object v15, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_GPSINFO:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    iget v15, v15, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;->tag:I

    if-ne v14, v15, :cond_8

    if-nez v10, :cond_d

    move-object v10, v13

    goto :goto_1

    .line 151
    :cond_d
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v1, "More than one GPS directory offset field."

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_e
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tag ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v13, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tagInfo:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") appears twice in directory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_f
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "More than one directory with index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_10
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    .line 166
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v1, 0x0

    move v11, v1

    .line 169
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_13

    .line 170
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 171
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v14, v11, :cond_12

    .line 176
    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    if-eqz v4, :cond_11

    .line 178
    invoke-virtual {v4, v13}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->setNextDirectory(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;)V

    :cond_11
    add-int/lit8 v11, v11, 0x1

    move-object v4, v13

    goto :goto_2

    .line 172
    :cond_12
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing directory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    .line 187
    new-instance v2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;

    iget-object v4, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->byteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v2, v4, v1, v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;-><init>(Ljava/nio/ByteOrder;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;Ljava/util/Map;)V

    if-nez v5, :cond_15

    if-nez v8, :cond_14

    goto :goto_3

    .line 193
    :cond_14
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v1, "Output set has Interoperability Directory Offset field, but no Interoperability Directory"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_3
    if-eqz v5, :cond_18

    if-nez v7, :cond_16

    .line 197
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->addExifDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v3

    move-object v7, v3

    :cond_16
    if-nez v8, :cond_17

    .line 201
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_INTEROP_OFFSET:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    iget-object v4, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->byteOrder:Ljava/nio/ByteOrder;

    invoke-static {v3, v4}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->createOffsetField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Ljava/nio/ByteOrder;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    move-result-object v8

    .line 205
    invoke-virtual {v7, v8}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    .line 208
    :cond_17
    invoke-virtual {v2, v5, v8}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    :cond_18
    if-nez v7, :cond_1a

    if-nez v9, :cond_19

    goto :goto_4

    .line 215
    :cond_19
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v1, "Output set has Exif Directory Offset field, but no Exif Directory"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_4
    if-eqz v7, :cond_1c

    if-nez v9, :cond_1b

    .line 219
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_EXIF_OFFSET:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    iget-object v4, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->byteOrder:Ljava/nio/ByteOrder;

    invoke-static {v3, v4}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->createOffsetField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Ljava/nio/ByteOrder;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    move-result-object v9

    .line 221
    invoke-virtual {v1, v9}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    .line 224
    :cond_1b
    invoke-virtual {v2, v7, v9}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    :cond_1c
    if-nez v6, :cond_1e

    if-nez v10, :cond_1d

    goto :goto_5

    .line 229
    :cond_1d
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v1, "Output set has GPS Directory Offset field, but no GPS Directory"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    :goto_5
    if-eqz v6, :cond_20

    if-nez v10, :cond_1f

    .line 233
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_GPSINFO:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->byteOrder:Ljava/nio/ByteOrder;

    invoke-static {v3, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->createOffsetField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Ljava/nio/ByteOrder;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    move-result-object v10

    .line 235
    invoke-virtual {v1, v10}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    .line 238
    :cond_1f
    invoke-virtual {v2, v6, v10}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    :cond_20
    return-object v2

    .line 161
    :cond_21
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v1, "Missing root directory."

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_22
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v1, "No directories."

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract write(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 21
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

    move-object/from16 v0, p0

    .line 249
    new-instance v1, Ljava/util/HashMap;

    move-object/from16 v2, p3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 252
    const-string v2, "FORMAT"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 253
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_0
    const-string v2, "EXIF"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 258
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;

    goto :goto_0

    :cond_1
    move-object v2, v4

    .line 262
    :goto_0
    const-string v3, "XMP_XML"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 263
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 264
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_2
    const-string v3, "PIXEL_DENSITY"

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/PixelDensity;

    if-nez v3, :cond_3

    const-wide/high16 v5, 0x4052000000000000L    # 72.0

    .line 270
    invoke-static {v5, v6, v5, v6}, Lorg/apache/commons/imaging/PixelDensity;->createFromPixelsPerInch(DD)Lorg/apache/commons/imaging/PixelDensity;

    move-result-object v3

    .line 273
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v5

    .line 274
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v6

    .line 278
    const-string v7, "COMPRESSION"

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const/16 v10, 0x8

    const v11, 0xfa00

    if-eqz v8, :cond_8

    .line 279
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 281
    instance-of v12, v8, Ljava/lang/Number;

    if-eqz v12, :cond_4

    .line 286
    move-object v12, v8

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    goto :goto_1

    .line 282
    :cond_4
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid compression parameter, must be numeric: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v12, 0x5

    .line 288
    :goto_1
    invoke-interface {v1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v7, "PARAM_KEY_LZW_COMPRESSION_BLOCK_SIZE"

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 290
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 292
    instance-of v13, v11, Ljava/lang/Number;

    if-eqz v13, :cond_7

    .line 296
    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v8

    const/16 v11, 0x1f40

    if-lt v8, v11, :cond_6

    mul-int/lit8 v11, v8, 0x8

    .line 303
    invoke-interface {v1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 298
    :cond_6
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Block size parameter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is less than 8000 minimum"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_7
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid compression block-size parameter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v12, 0x5

    .line 306
    :cond_9
    :goto_2
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 307
    const-string v8, "T4_OPTIONS"

    invoke-interface {v1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v13, "T6_OPTIONS"

    invoke-interface {v1, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_24

    const/4 v1, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/4 v9, 0x1

    if-eq v12, v15, :cond_b

    if-eq v12, v14, :cond_b

    if-ne v12, v1, :cond_a

    goto :goto_3

    :cond_a
    move v1, v10

    move/from16 v18, v15

    goto :goto_4

    :cond_b
    :goto_3
    move v1, v9

    move v14, v1

    move/from16 v18, v16

    :goto_4
    mul-int v19, v5, v1

    mul-int v19, v19, v14

    .line 329
    div-int v11, v11, v19

    .line 330
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    move-object/from16 v9, p1

    .line 332
    invoke-direct {v0, v9, v14, v1, v11}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->getStrips(Ljava/awt/image/BufferedImage;III)[[B

    move-result-object v9

    if-ne v12, v15, :cond_d

    move/from16 v7, v16

    .line 343
    :goto_5
    array-length v8, v9

    if-ge v7, v8, :cond_c

    .line 344
    aget-object v8, v9, v7

    array-length v13, v8

    add-int/lit8 v17, v5, 0x7

    div-int/lit8 v17, v17, 0x8

    div-int v13, v13, v17

    invoke-static {v8, v5, v13}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->compressModifiedHuffman([BII)[B

    move-result-object v8

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_c
    move-object/from16 p3, v2

    goto/16 :goto_f

    :cond_d
    const/4 v15, 0x3

    if-ne v12, v15, :cond_14

    .line 348
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_e

    .line 350
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_6

    :cond_e
    move/from16 v7, v16

    :goto_6
    and-int/lit8 v8, v7, 0x7

    and-int/lit8 v13, v7, 0x1

    if-eqz v13, :cond_f

    const/4 v13, 0x1

    goto :goto_7

    :cond_f
    move/from16 v13, v16

    :goto_7
    and-int/lit8 v15, v7, 0x2

    if-nez v15, :cond_13

    const/4 v15, 0x4

    and-int/2addr v7, v15

    if-eqz v7, :cond_10

    const/4 v7, 0x1

    goto :goto_8

    :cond_10
    move/from16 v7, v16

    :goto_8
    move/from16 v15, v16

    .line 360
    :goto_9
    array-length v10, v9

    if-ge v15, v10, :cond_12

    if-eqz v13, :cond_11

    .line 362
    aget-object v10, v9, v15

    move/from16 p1, v8

    array-length v8, v10

    add-int/lit8 v20, v5, 0x7

    const/16 v17, 0x8

    div-int/lit8 v20, v20, 0x8

    div-int v8, v8, v20

    invoke-static {v10, v5, v8, v7, v11}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->compressT4_2D([BIIZI)[B

    move-result-object v8

    aput-object v8, v9, v15

    goto :goto_a

    :cond_11
    move/from16 p1, v8

    const/16 v17, 0x8

    .line 366
    aget-object v8, v9, v15

    array-length v10, v8

    add-int/lit8 v20, v5, 0x7

    div-int/lit8 v20, v20, 0x8

    div-int v10, v10, v20

    invoke-static {v8, v5, v10, v7}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->compressT4_1D([BIIZ)[B

    move-result-object v8

    aput-object v8, v9, v15

    :goto_a
    add-int/lit8 v15, v15, 0x1

    move/from16 v8, p1

    goto :goto_9

    :cond_12
    move/from16 p1, v8

    move-object/from16 p3, v2

    move/from16 v7, v16

    goto/16 :goto_10

    .line 356
    :cond_13
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v1, "T.4 compression with the uncompressed mode extension is not yet supported"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    const/4 v8, 0x4

    if-ne v12, v8, :cond_17

    .line 372
    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_15

    .line 374
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_b

    :cond_15
    move/from16 v7, v16

    :goto_b
    and-int/2addr v7, v8

    move/from16 v8, v16

    .line 382
    :goto_c
    array-length v10, v9

    if-ge v8, v10, :cond_16

    .line 383
    aget-object v10, v9, v8

    array-length v13, v10

    add-int/lit8 v15, v5, 0x7

    const/16 v17, 0x8

    div-int/lit8 v15, v15, 0x8

    div-int/2addr v13, v15

    invoke-static {v10, v5, v13}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->compressT6([BII)[B

    move-result-object v10

    aput-object v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_16
    move-object/from16 p3, v2

    move/from16 v8, v16

    goto :goto_10

    :cond_17
    const v7, 0x8005

    if-ne v12, v7, :cond_18

    move/from16 v7, v16

    .line 387
    :goto_d
    array-length v8, v9

    if-ge v7, v8, :cond_c

    .line 388
    new-instance v8, Lorg/apache/commons/imaging/common/PackBits;

    invoke-direct {v8}, Lorg/apache/commons/imaging/common/PackBits;-><init>()V

    aget-object v10, v9, v7

    invoke-virtual {v8, v10}, Lorg/apache/commons/imaging/common/PackBits;->compress([B)[B

    move-result-object v8

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_18
    const/4 v7, 0x5

    if-ne v12, v7, :cond_19

    move/from16 v7, v16

    .line 391
    :goto_e
    array-length v8, v9

    if-ge v7, v8, :cond_c

    .line 392
    aget-object v8, v9, v7

    .line 396
    new-instance v10, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;

    sget-object v13, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 p3, v2

    const/4 v2, 0x1

    const/16 v15, 0x8

    invoke-direct {v10, v15, v13, v2}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;-><init>(ILjava/nio/ByteOrder;Z)V

    .line 398
    invoke-virtual {v10, v8}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->compress([B)[B

    move-result-object v8

    .line 400
    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p3

    goto :goto_e

    :cond_19
    move-object/from16 p3, v2

    const/4 v2, 0x1

    if-ne v12, v2, :cond_23

    :goto_f
    move/from16 v7, v16

    move v8, v7

    .line 409
    :goto_10
    array-length v2, v9

    new-array v2, v2, [Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    move/from16 v10, v16

    .line 410
    :goto_11
    array-length v13, v9

    if-ge v10, v13, :cond_1a

    .line 411
    new-instance v13, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Data;

    aget-object v15, v9, v10

    move-object/from16 p1, v9

    array-length v9, v15

    move/from16 v17, v7

    move/from16 v20, v8

    const-wide/16 v7, 0x0

    invoke-direct {v13, v7, v8, v9, v15}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Data;-><init>(JI[B)V

    aput-object v13, v2, v10

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v9, p1

    move/from16 v7, v17

    move/from16 v8, v20

    goto :goto_11

    :cond_1a
    move/from16 v17, v7

    move/from16 v20, v8

    .line 414
    new-instance v7, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;

    iget-object v8, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->byteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v7, v8}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;-><init>(Ljava/nio/ByteOrder;)V

    .line 415
    invoke-virtual {v7}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->addRootDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v8

    .line 421
    sget-object v9, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_IMAGE_WIDTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    filled-new-array {v5}, [I

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;[I)V

    .line 422
    sget-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_IMAGE_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;[I)V

    .line 423
    sget-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_PHOTOMETRIC_INTERPRETATION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    move/from16 v15, v18

    int-to-short v6, v15

    const/4 v9, 0x1

    new-array v10, v9, [S

    aput-short v6, v10, v16

    invoke-virtual {v8, v5, v10}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;[S)V

    .line 425
    sget-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_COMPRESSION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    int-to-short v6, v12

    new-array v10, v9, [S

    aput-short v6, v10, v16

    invoke-virtual {v8, v5, v10}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;[S)V

    .line 427
    sget-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_SAMPLES_PER_PIXEL:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    int-to-short v6, v14

    new-array v10, v9, [S

    aput-short v6, v10, v16

    invoke-virtual {v8, v5, v10}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;[S)V

    const/4 v5, 0x3

    if-ne v14, v5, :cond_1b

    .line 431
    sget-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_BITS_PER_SAMPLE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    int-to-short v1, v1

    new-array v5, v5, [S

    aput-short v1, v5, v16

    aput-short v1, v5, v9

    const/4 v10, 0x2

    aput-short v1, v5, v10

    invoke-virtual {v8, v6, v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;[S)V

    goto :goto_12

    :cond_1b
    if-ne v14, v9, :cond_1c

    .line 435
    sget-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_BITS_PER_SAMPLE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    int-to-short v1, v1

    new-array v6, v9, [S

    aput-short v1, v6, v16

    invoke-virtual {v8, v5, v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;[S)V

    .line 451
    :cond_1c
    :goto_12
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_ROWS_PER_STRIP:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    filled-new-array {v11}, [I

    move-result-object v5

    invoke-virtual {v8, v1, v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;[I)V

    .line 453
    invoke-virtual {v3}, Lorg/apache/commons/imaging/PixelDensity;->isUnitless()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 454
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_RESOLUTION_UNIT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    new-array v5, v9, [S

    aput-short v16, v5, v16

    invoke-virtual {v8, v1, v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;[S)V

    .line 456
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_XRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    invoke-virtual {v3}, Lorg/apache/commons/imaging/PixelDensity;->getRawHorizontalDensity()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v5

    filled-new-array {v5}, [Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v5

    invoke-virtual {v8, v1, v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V

    .line 458
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_YRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    invoke-virtual {v3}, Lorg/apache/commons/imaging/PixelDensity;->getRawVerticalDensity()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v3

    filled-new-array {v3}, [Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V

    goto :goto_13

    .line 460
    :cond_1d
    invoke-virtual {v3}, Lorg/apache/commons/imaging/PixelDensity;->isInInches()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 461
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_RESOLUTION_UNIT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/4 v5, 0x1

    new-array v5, v5, [S

    const/4 v6, 0x2

    aput-short v6, v5, v16

    invoke-virtual {v8, v1, v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;[S)V

    .line 463
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_XRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    invoke-virtual {v3}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityInches()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v5

    filled-new-array {v5}, [Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v5

    invoke-virtual {v8, v1, v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V

    .line 465
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_YRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    invoke-virtual {v3}, Lorg/apache/commons/imaging/PixelDensity;->verticalDensityInches()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v3

    filled-new-array {v3}, [Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V

    goto :goto_13

    .line 468
    :cond_1e
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_RESOLUTION_UNIT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/4 v5, 0x1

    new-array v6, v5, [S

    aput-short v5, v6, v16

    invoke-virtual {v8, v1, v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;[S)V

    .line 470
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_XRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    invoke-virtual {v3}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityCentimetres()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v5

    filled-new-array {v5}, [Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v5

    invoke-virtual {v8, v1, v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V

    .line 472
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_YRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    invoke-virtual {v3}, Lorg/apache/commons/imaging/PixelDensity;->verticalDensityCentimetres()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v3

    filled-new-array {v3}, [Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V

    :goto_13
    if-eqz v20, :cond_1f

    .line 476
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_T4_OPTIONS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    filled-new-array/range {v20 .. v20}, [I

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;[I)V

    :cond_1f
    if-eqz v17, :cond_20

    .line 479
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_T6_OPTIONS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    filled-new-array/range {v17 .. v17}, [I

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;[I)V

    :cond_20
    if-eqz v4, :cond_21

    .line 483
    const-string v1, "utf-8"

    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 484
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_XMP:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    invoke-virtual {v8, v3, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;[B)V

    .line 489
    :cond_21
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;

    invoke-direct {v1, v2, v11}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;-><init>([Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;I)V

    .line 491
    invoke-virtual {v8, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->setTiffImageData(Lorg/apache/commons/imaging/formats/tiff/TiffImageData;)V

    if-eqz p3, :cond_22

    move-object/from16 v2, p3

    .line 494
    invoke-direct {v0, v2, v7}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->combineUserExifIntoFinalExif(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V

    :cond_22
    move-object/from16 v1, p2

    .line 497
    invoke-virtual {v0, v1, v7}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->write(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V

    return-void

    .line 405
    :cond_23
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v1, "Invalid compression parameter (Only CCITT 1D/Group 3/Group 4, LZW, Packbits and uncompressed supported)."

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_24
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 311
    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown parameter: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected writeImageFileHeader(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x8

    .line 597
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->writeImageFileHeader(Lorg/apache/commons/imaging/common/BinaryOutputStream;J)V

    return-void
.end method

.method protected writeImageFileHeader(Lorg/apache/commons/imaging/common/BinaryOutputStream;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 602
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_0

    const/16 p0, 0x49

    .line 603
    invoke-virtual {p1, p0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 604
    invoke-virtual {p1, p0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x4d

    .line 606
    invoke-virtual {p1, p0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 607
    invoke-virtual {p1, p0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    :goto_0
    const/16 p0, 0x2a

    .line 610
    invoke-virtual {p1, p0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    long-to-int p0, p2

    .line 612
    invoke-virtual {p1, p0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    return-void
.end method

.class public Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;
.super Lorg/apache/commons/imaging/common/GenericImageMetadata;
.source "TiffImageMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;,
        Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$TiffMetadataItem;,
        Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;
    }
.end annotation


# instance fields
.field public final contents:Lorg/apache/commons/imaging/formats/tiff/TiffContents;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/tiff/TiffContents;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/GenericImageMetadata;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->contents:Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    return-void
.end method


# virtual methods
.method public findDirectory(I)Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;
    .locals 2

    .line 431
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->getDirectories()Ljava/util/List;

    move-result-object p0

    .line 432
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;

    .line 433
    check-cast v0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;

    .line 434
    iget v1, v0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->type:I

    if-ne v1, p1, :cond_0

    .line 435
    invoke-static {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->access$000(Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;)Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 221
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Z)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    return-object p0
.end method

.method public findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Z)Lorg/apache/commons/imaging/formats/tiff/TiffField;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 227
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    invoke-static {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffTags;->getTagCount(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 230
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->getDirectories()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 231
    iget-object v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->directoryType:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    if-eq v2, v3, :cond_7

    .line 233
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;

    .line 234
    check-cast v3, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;

    .line 235
    iget v4, v3, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->type:I

    iget-object v5, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->directoryType:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    iget v5, v5, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->directoryType:I

    if-ne v4, v5, :cond_2

    .line 236
    invoke-virtual {v3, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_3
    if-nez p2, :cond_a

    const/4 p2, 0x1

    if-le v0, p2, :cond_4

    goto :goto_1

    .line 245
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;

    .line 246
    check-cast v0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;

    .line 247
    iget-object v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->directoryType:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->isImageDirectory()Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, v0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->type:I

    if-ltz v2, :cond_6

    .line 249
    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v0

    if-eqz v0, :cond_5

    return-object v0

    .line 253
    :cond_6
    iget-object v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->directoryType:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->isImageDirectory()Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, v0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->type:I

    if-gez v2, :cond_5

    .line 255
    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v0

    if-eqz v0, :cond_5

    return-object v0

    .line 263
    :cond_7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;

    .line 264
    check-cast p2, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;

    .line 265
    invoke-virtual {p2, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p2

    if-eqz p2, :cond_8

    return-object p2

    :cond_9
    return-object v1

    :cond_a
    :goto_1
    return-object v1
.end method

.method public getAllFields()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/TiffField;",
            ">;"
        }
    .end annotation

    .line 442
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 443
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->getDirectories()Ljava/util/List;

    move-result-object p0

    .line 444
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;

    .line 445
    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;

    .line 446
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->getAllFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getDirectories()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;",
            ">;"
        }
    .end annotation

    .line 166
    invoke-super {p0}, Lorg/apache/commons/imaging/common/GenericImageMetadata;->getItems()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 275
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 279
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 415
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 419
    :cond_0
    invoke-virtual {p1, p0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 423
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 427
    :cond_0
    invoke-virtual {p1, p0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;->getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 283
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 287
    :cond_0
    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;->dataTypes:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    .line 290
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object p0

    return-object p0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSByte;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 343
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 347
    :cond_0
    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSByte;->dataTypes:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    .line 350
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object p0

    return-object p0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;)[D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 403
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 407
    :cond_0
    iget-object v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;->dataTypes:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 410
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object v0

    .line 411
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;->getValue(Ljava/nio/ByteOrder;[B)[D

    move-result-object p0

    return-object p0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;)[F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 391
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 395
    :cond_0
    iget-object v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;->dataTypes:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 398
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object v0

    .line 399
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;->getValue(Ljava/nio/ByteOrder;[B)[F

    move-result-object p0

    return-object p0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 318
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 322
    :cond_0
    iget-object v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;->dataTypes:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 325
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object v0

    .line 326
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;->getValue(Ljava/nio/ByteOrder;[B)[I

    move-result-object p0

    return-object p0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLong;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 366
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 370
    :cond_0
    iget-object v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLong;->dataTypes:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 373
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object v0

    .line 374
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLong;->getValue(Ljava/nio/ByteOrder;[B)[I

    move-result-object p0

    return-object p0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 294
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 298
    :cond_0
    iget-object v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;->dataTypes:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 301
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object v0

    .line 302
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;->getValue(Ljava/nio/ByteOrder;[B)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;)[Lorg/apache/commons/imaging/common/RationalNumber;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 331
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 335
    :cond_0
    iget-object v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;->dataTypes:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 338
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object v0

    .line 339
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;->getValue(Ljava/nio/ByteOrder;[B)[Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object p0

    return-object p0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRational;)[Lorg/apache/commons/imaging/common/RationalNumber;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 379
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 383
    :cond_0
    iget-object v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRational;->dataTypes:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 386
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object v0

    .line 387
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRational;->getValue(Ljava/nio/ByteOrder;[B)[Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object p0

    return-object p0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;)[S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 354
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 358
    :cond_0
    iget-object v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;->dataTypes:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 361
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object v0

    .line 362
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;->getValue(Ljava/nio/ByteOrder;[B)[S

    move-result-object p0

    return-object p0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;)[S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 306
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 310
    :cond_0
    iget-object v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;->dataTypes:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 313
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object v0

    .line 314
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;->getValue(Ljava/nio/ByteOrder;[B)[S

    move-result-object p0

    return-object p0
.end method

.method public getGPS()Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, -0x3

    .line 452
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findDirectory(I)Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 458
    :cond_0
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_LATITUDE_REF:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    invoke-virtual {p0, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v1

    .line 460
    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_LATITUDE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    invoke-virtual {p0, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v2

    .line 462
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_LONGITUDE_REF:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    invoke-virtual {p0, v3}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v3

    .line 464
    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_LONGITUDE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    invoke-virtual {p0, v4}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    if-nez p0, :cond_1

    goto :goto_1

    .line 473
    :cond_1
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getStringValue()Ljava/lang/String;

    move-result-object v5

    .line 474
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/common/RationalNumber;

    .line 475
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getStringValue()Ljava/lang/String;

    move-result-object v6

    .line 476
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/commons/imaging/common/RationalNumber;

    .line 478
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    array-length v1, p0

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 482
    aget-object v7, v0, v1

    const/4 v2, 0x1

    .line 483
    aget-object v8, v0, v2

    const/4 v3, 0x2

    .line 484
    aget-object v9, v0, v3

    .line 486
    aget-object v10, p0, v1

    .line 487
    aget-object v11, p0, v2

    .line 488
    aget-object v12, p0, v3

    .line 490
    new-instance p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;

    move-object v4, p0

    invoke-direct/range {v4 .. v12}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/imaging/common/RationalNumber;Lorg/apache/commons/imaging/common/RationalNumber;Lorg/apache/commons/imaging/common/RationalNumber;Lorg/apache/commons/imaging/common/RationalNumber;Lorg/apache/commons/imaging/common/RationalNumber;Lorg/apache/commons/imaging/common/RationalNumber;)V

    return-object p0

    .line 479
    :cond_3
    :goto_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Expected three values for latitude and longitude."

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;",
            ">;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    invoke-super {p0}, Lorg/apache/commons/imaging/common/GenericImageMetadata;->getItems()Ljava/util/List;

    move-result-object p0

    .line 174
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;

    .line 175
    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;

    .line 176
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getOutputSet()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->contents:Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->header:Lorg/apache/commons/imaging/formats/tiff/TiffHeader;

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/TiffHeader;->byteOrder:Ljava/nio/ByteOrder;

    .line 199
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;

    invoke-direct {v1, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;-><init>(Ljava/nio/ByteOrder;)V

    .line 201
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->getDirectories()Ljava/util/List;

    move-result-object p0

    .line 202
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;

    .line 203
    check-cast v2, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;

    .line 205
    iget v3, v2, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->type:I

    invoke-virtual {v1, v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->findDirectory(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {v2, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->getOutputDirectory(Ljava/nio/ByteOrder;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v2

    .line 214
    invoke-virtual {v1, v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->addDirectory(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;)V

    goto :goto_0

    :cond_1
    return-object v1
.end method

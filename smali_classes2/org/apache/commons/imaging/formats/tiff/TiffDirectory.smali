.class public Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;
.super Lorg/apache/commons/imaging/formats/tiff/TiffElement;
.source "TiffDirectory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;
    }
.end annotation


# instance fields
.field public final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/TiffField;",
            ">;"
        }
    .end annotation
.end field

.field private jpegImageData:Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

.field public final nextDirectoryOffset:J

.field private tiffImageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

.field public final type:I


# direct methods
.method public constructor <init>(ILjava/util/List;JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/TiffField;",
            ">;JJ)V"
        }
    .end annotation

    .line 58
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x6

    invoke-direct {p0, p3, p4, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffElement;-><init>(JI)V

    .line 62
    iput p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->type:I

    .line 63
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->entries:Ljava/util/List;

    .line 64
    iput-wide p5, p0, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->nextDirectoryOffset:J

    return-void
.end method

.method public static description(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 109
    const-string p0, "Bad Type"

    return-object p0

    .line 101
    :pswitch_0
    const-string p0, "Thumbnail"

    return-object p0

    .line 99
    :pswitch_1
    const-string p0, "Sub"

    return-object p0

    .line 97
    :pswitch_2
    const-string p0, "Root"

    return-object p0

    .line 95
    :pswitch_3
    const-string p0, "Unknown"

    return-object p0

    .line 103
    :pswitch_4
    const-string p0, "Exif"

    return-object p0

    .line 105
    :pswitch_5
    const-string p0, "Gps"

    return-object p0

    .line 107
    :pswitch_6
    const-string p0, "Interoperability"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getRawImageDataElements(Lorg/apache/commons/imaging/formats/tiff/TiffField;Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/formats/tiff/TiffField;",
            "Lorg/apache/commons/imaging/formats/tiff/TiffField;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 631
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntArrayValue()[I

    move-result-object p0

    .line 632
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntArrayValue()[I

    move-result-object p1

    .line 634
    array-length p2, p0

    array-length v0, p1

    if-ne p2, v0, :cond_1

    .line 639
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 640
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 641
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;

    aget v2, p0, v0

    int-to-long v2, v2

    aget v4, p1, v0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;-><init>(JI)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p2

    .line 635
    :cond_1
    new-instance p2, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "offsets.length("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ") != byteCounts.length("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public description()Ljava/lang/String;
    .locals 0

    .line 68
    iget p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->type:I

    invoke-static {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->description(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public dump()V
    .locals 1

    .line 119
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->entries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/tiff/TiffField;

    .line 120
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->dump()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 162
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Z)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    return-object p0
.end method

.method public findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Z)Lorg/apache/commons/imaging/formats/tiff/TiffField;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 167
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->entries:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 171
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/TiffField;

    .line 172
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getTag()I

    move-result v2

    iget v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    if-ne v2, v3, :cond_1

    return-object v1

    :cond_2
    if-nez p2, :cond_3

    return-object v0

    .line 178
    :cond_3
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Missing expected field: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDirectoryEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/TiffField;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->entries:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getElementDescription(Z)Ljava/lang/String;
    .locals 10

    if-nez p1, :cond_0

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "TIFF Directory ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->description()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 77
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->offset:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->entries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/tiff/TiffField;

    .line 81
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getTagInfo()Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    move-result-object v4

    iget-object v4, v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->name:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getTag()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getTag()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getBytesLength()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValueDescription()Ljava/lang/String;

    move-result-object v9

    filled-new-array/range {v3 .. v9}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "\t[%d]: %s (%d, 0x%x), %s, %d: %s%n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0xc

    add-long/2addr v0, v2

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    .line 186
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 190
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 588
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    if-nez p0, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 591
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Required field \""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\" is missing"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 597
    :cond_1
    invoke-virtual {p1, p0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 602
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    if-nez p0, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 605
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Required field \""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\" is missing"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 611
    :cond_1
    invoke-virtual {p1, p0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;->getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;Z)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 310
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    .line 311
    const-string v0, "Required field \""

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p2, :cond_0

    return-object v1

    .line 313
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\" is missing"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 319
    :cond_1
    iget-object v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;->dataTypes:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez p2, :cond_2

    return-object v1

    .line 321
    :cond_2
    new-instance p2, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\" has incorrect type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 327
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object p0

    return-object p0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSByte;Z)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 451
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    .line 452
    const-string v0, "Required field \""

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p2, :cond_0

    return-object v1

    .line 454
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSByte;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\" is missing"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 460
    :cond_1
    iget-object v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSByte;->dataTypes:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez p2, :cond_2

    return-object v1

    .line 462
    :cond_2
    new-instance p2, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSByte;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\" has incorrect type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 468
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object p0

    return-object p0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;Z)[D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 565
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    .line 566
    const-string v0, "Required field \""

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p2, :cond_0

    return-object v1

    .line 568
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\" is missing"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 574
    :cond_1
    iget-object v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;->dataTypes:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez p2, :cond_2

    return-object v1

    .line 576
    :cond_2
    new-instance p2, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\" has incorrect type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 582
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object p2

    .line 583
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;->getValue(Ljava/nio/ByteOrder;[B)[D

    move-result-object p0

    return-object p0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;Z)[F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 542
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    .line 543
    const-string v0, "Required field \""

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p2, :cond_0

    return-object v1

    .line 545
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\" is missing"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 551
    :cond_1
    iget-object v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;->dataTypes:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez p2, :cond_2

    return-object v1

    .line 553
    :cond_2
    new-instance p2, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\" has incorrect type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 559
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object p2

    .line 560
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;->getValue(Ljava/nio/ByteOrder;[B)[F

    move-result-object p0

    return-object p0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;Z)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 378
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    .line 379
    const-string v0, "Required field \""

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p2, :cond_0

    return-object v1

    .line 381
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\" is missing"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 387
    :cond_1
    iget-object v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;->dataTypes:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez p2, :cond_2

    return-object v1

    .line 389
    :cond_2
    new-instance p2, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\" has incorrect type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 395
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object p2

    .line 396
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;->getValue(Ljava/nio/ByteOrder;[B)[I

    move-result-object p0

    return-object p0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLong;Z)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 496
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    .line 497
    const-string v0, "Required field \""

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p2, :cond_0

    return-object v1

    .line 499
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLong;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\" is missing"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 505
    :cond_1
    iget-object v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLong;->dataTypes:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez p2, :cond_2

    return-object v1

    .line 507
    :cond_2
    new-instance p2, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLong;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\" has incorrect type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 513
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object p2

    .line 514
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLong;->getValue(Ljava/nio/ByteOrder;[B)[I

    move-result-object p0

    return-object p0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;Z)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 401
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    .line 402
    const-string v0, "Required field \""

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p2, :cond_0

    return-object v1

    .line 404
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\" is missing"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 410
    :cond_1
    iget-object v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;->dataTypes:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez p2, :cond_2

    return-object v1

    .line 412
    :cond_2
    new-instance p2, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\" has incorrect type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 418
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object p1

    .line 419
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object p2

    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    if-ne p2, v0, :cond_4

    .line 420
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16s([BLjava/nio/ByteOrder;)[I

    move-result-object p0

    return-object p0

    .line 422
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/apache/commons/imaging/common/ByteConversions;->toInts([BLjava/nio/ByteOrder;)[I

    move-result-object p0

    return-object p0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;Z)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 332
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    .line 333
    const-string v0, "Required field \""

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p2, :cond_0

    return-object v1

    .line 335
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\" is missing"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 341
    :cond_1
    iget-object v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;->dataTypes:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez p2, :cond_2

    return-object v1

    .line 343
    :cond_2
    new-instance p2, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\" has incorrect type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 349
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object p2

    .line 350
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;->getValue(Ljava/nio/ByteOrder;[B)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;Z)[Lorg/apache/commons/imaging/common/RationalNumber;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 428
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    .line 429
    const-string v0, "Required field \""

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p2, :cond_0

    return-object v1

    .line 431
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\" is missing"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 437
    :cond_1
    iget-object v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;->dataTypes:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez p2, :cond_2

    return-object v1

    .line 439
    :cond_2
    new-instance p2, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\" has incorrect type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 445
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object p2

    .line 446
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;->getValue(Ljava/nio/ByteOrder;[B)[Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object p0

    return-object p0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRational;Z)[Lorg/apache/commons/imaging/common/RationalNumber;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 519
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    .line 520
    const-string v0, "Required field \""

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p2, :cond_0

    return-object v1

    .line 522
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRational;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\" is missing"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 528
    :cond_1
    iget-object v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRational;->dataTypes:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez p2, :cond_2

    return-object v1

    .line 530
    :cond_2
    new-instance p2, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRational;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\" has incorrect type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 536
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object p2

    .line 537
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRational;->getValue(Ljava/nio/ByteOrder;[B)[Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object p0

    return-object p0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;Z)[S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 473
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    .line 474
    const-string v0, "Required field \""

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p2, :cond_0

    return-object v1

    .line 476
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\" is missing"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 482
    :cond_1
    iget-object v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;->dataTypes:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez p2, :cond_2

    return-object v1

    .line 484
    :cond_2
    new-instance p2, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\" has incorrect type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 490
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object p2

    .line 491
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;->getValue(Ljava/nio/ByteOrder;[B)[S

    move-result-object p0

    return-object p0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;Z)[S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 355
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    .line 356
    const-string v0, "Required field \""

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p2, :cond_0

    return-object v1

    .line 358
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\" is missing"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 364
    :cond_1
    iget-object v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;->dataTypes:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez p2, :cond_2

    return-object v1

    .line 366
    :cond_2
    new-instance p2, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\" has incorrect type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 372
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object p2

    .line 373
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;->getValue(Ljava/nio/ByteOrder;[B)[S

    move-result-object p0

    return-object p0
.end method

.method public getJpegImageData()Lorg/apache/commons/imaging/formats/tiff/JpegImageData;
    .locals 0

    .line 704
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->jpegImageData:Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    return-object p0
.end method

.method public getJpegRawImageDataElement()Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 678
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_JPEG_INTERCHANGE_FORMAT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v0

    .line 679
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    invoke-virtual {p0, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 682
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntArrayValue()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 683
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntArrayValue()[I

    move-result-object p0

    aget p0, p0, v1

    .line 685
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;

    int-to-long v2, v0

    invoke-direct {v1, v2, v3, p0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;-><init>(JI)V

    return-object v1

    .line 687
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Couldn\'t find image data."

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSingleFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;)B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 194
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;Z)[B

    move-result-object p0

    .line 195
    array-length v1, p0

    if-ne v1, v0, :cond_0

    const/4 p1, 0x0

    .line 199
    aget-byte p0, p0, p1

    return p0

    .line 196
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\" has incorrect length "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSingleFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSByte;)B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 251
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSByte;Z)[B

    move-result-object p0

    .line 252
    array-length v1, p0

    if-ne v1, v0, :cond_0

    const/4 p1, 0x0

    .line 256
    aget-byte p0, p0, p1

    return p0

    .line 253
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSByte;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\" has incorrect length "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSingleFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 300
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;Z)[D

    move-result-object p0

    .line 301
    array-length v1, p0

    if-ne v1, v0, :cond_0

    const/4 p1, 0x0

    .line 305
    aget-wide p0, p0, p1

    return-wide p0

    .line 302
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\" has incorrect length "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSingleFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;)F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 290
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;Z)[F

    move-result-object p0

    .line 291
    array-length v1, p0

    if-ne v1, v0, :cond_0

    const/4 p1, 0x0

    .line 295
    aget p0, p0, p1

    return p0

    .line 292
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\" has incorrect length "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSingleFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 223
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;Z)[I

    move-result-object p0

    .line 224
    array-length v1, p0

    if-ne v1, v0, :cond_0

    const/4 p1, 0x0

    .line 228
    aget p0, p0, p1

    return p0

    .line 225
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\" has incorrect length "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSingleFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLong;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 270
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLong;Z)[I

    move-result-object p0

    .line 271
    array-length v1, p0

    if-ne v1, v0, :cond_0

    const/4 p1, 0x0

    .line 275
    aget p0, p0, p1

    return p0

    .line 272
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLong;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\" has incorrect length "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSingleFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 232
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;Z)[I

    move-result-object p0

    .line 233
    array-length v1, p0

    if-ne v1, v0, :cond_0

    const/4 p1, 0x0

    .line 237
    aget p0, p0, p1

    return p0

    .line 234
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\" has incorrect length "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSingleFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 204
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;Z)[Ljava/lang/String;

    move-result-object p0

    .line 205
    array-length v1, p0

    if-ne v1, v0, :cond_0

    const/4 p1, 0x0

    .line 209
    aget-object p0, p0, p1

    return-object p0

    .line 206
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\" has incorrect length "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSingleFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;)Lorg/apache/commons/imaging/common/RationalNumber;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 242
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;Z)[Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object p0

    .line 243
    array-length v1, p0

    if-ne v1, v0, :cond_0

    const/4 p1, 0x0

    .line 247
    aget-object p0, p0, p1

    return-object p0

    .line 244
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\" has incorrect length "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSingleFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRational;)Lorg/apache/commons/imaging/common/RationalNumber;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 280
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRational;Z)[Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object p0

    .line 281
    array-length v1, p0

    if-ne v1, v0, :cond_0

    const/4 p1, 0x0

    .line 285
    aget-object p0, p0, p1

    return-object p0

    .line 282
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRational;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\" has incorrect length "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSingleFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;)S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 261
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;Z)[S

    move-result-object p0

    .line 262
    array-length v1, p0

    if-ne v1, v0, :cond_0

    const/4 p1, 0x0

    .line 266
    aget-short p0, p0, p1

    return p0

    .line 263
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\" has incorrect length "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSingleFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;)S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 214
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;Z)[S

    move-result-object p0

    .line 215
    array-length v1, p0

    if-ne v1, v0, :cond_0

    const/4 p1, 0x0

    .line 219
    aget-short p0, p0, p1

    return p0

    .line 216
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\" has incorrect length "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTiffImage(Ljava/nio/ByteOrder;)Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getTiffImage(Ljava/nio/ByteOrder;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public getTiffImage(Ljava/nio/ByteOrder;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 153
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->tiffImageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 157
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->getBufferedImage(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Ljava/nio/ByteOrder;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public getTiffImageData()Lorg/apache/commons/imaging/formats/tiff/TiffImageData;
    .locals 0

    .line 696
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->tiffImageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    return-object p0
.end method

.method public getTiffRawImageDataElements()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 648
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_TILE_OFFSETS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v0

    .line 649
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_TILE_BYTE_COUNTS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {p0, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v1

    .line 650
    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_STRIP_OFFSETS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {p0, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v2

    .line 651
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_STRIP_BYTE_COUNTS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {p0, v3}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v3

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 654
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getRawImageDataElements(Lorg/apache/commons/imaging/formats/tiff/TiffField;Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 656
    invoke-direct {p0, v2, v3}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getRawImageDataElements(Lorg/apache/commons/imaging/formats/tiff/TiffField;Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 658
    :cond_1
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Couldn\'t find image data."

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasJpegImageData()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 126
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_JPEG_INTERCHANGE_FORMAT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasTiffImageData()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 134
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_TILE_OFFSETS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 138
    :cond_0
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_STRIP_OFFSETS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public imageDataInStrips()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 663
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_TILE_OFFSETS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v0

    .line 664
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_TILE_BYTE_COUNTS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {p0, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v1

    .line 665
    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_STRIP_OFFSETS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {p0, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v2

    .line 666
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_STRIP_BYTE_COUNTS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {p0, v3}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz v2, :cond_1

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 673
    :cond_1
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Couldn\'t find image data."

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setJpegImageData(Lorg/apache/commons/imaging/formats/tiff/JpegImageData;)V
    .locals 0

    .line 700
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->jpegImageData:Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    return-void
.end method

.method public setTiffImageData(Lorg/apache/commons/imaging/formats/tiff/TiffImageData;)V
    .locals 0

    .line 692
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->tiffImageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    return-void
.end method

.class public Lorg/apache/commons/imaging/formats/tiff/TiffContents;
.super Ljava/lang/Object;
.source "TiffContents.java"


# instance fields
.field public final directories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;",
            ">;"
        }
    .end annotation
.end field

.field public final header:Lorg/apache/commons/imaging/formats/tiff/TiffHeader;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/tiff/TiffHeader;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/formats/tiff/TiffHeader;",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->header:Lorg/apache/commons/imaging/formats/tiff/TiffHeader;

    .line 33
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public dissect(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->getElements()Ljava/util/List;

    move-result-object p0

    .line 77
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 80
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;

    .line 81
    iget-wide v3, v2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    cmp-long v3, v3, v0

    if-lez v3, :cond_0

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\tgap: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    .line 84
    :cond_0
    iget-wide v3, v2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    cmp-long v0, v3, v0

    if-gez v0, :cond_1

    .line 85
    const-string v0, "\toverlap"

    invoke-static {v0}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    .line 88
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "element, start: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, v2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    iget v1, v2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->getElementDescription(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 93
    invoke-virtual {v2, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->getElementDescription(Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 95
    invoke-static {v0}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    .line 99
    :cond_2
    iget-wide v0, v2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    iget v2, v2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto/16 :goto_0

    .line 101
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "end: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lorg/apache/commons/imaging/util/Debug;->debug()V

    return-void
.end method

.method public findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 64
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    .line 65
    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getElements()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/TiffElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->header:Lorg/apache/commons/imaging/formats/tiff/TiffHeader;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v2, v1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->entries:Ljava/util/List;

    .line 45
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/tiff/TiffField;

    .line 46
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getOversizeValueElement()Lorg/apache/commons/imaging/formats/tiff/TiffElement;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 48
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->hasTiffImageData()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 53
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getTiffRawImageDataElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 55
    :cond_3
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->hasJpegImageData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getJpegRawImageDataElement()Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

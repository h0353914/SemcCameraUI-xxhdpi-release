.class public Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;
.super Ljava/lang/Object;
.source "TagInfo.java"


# static fields
.field public static final LENGTH_UNKNOWN:I = -0x1


# instance fields
.field public final dataTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;",
            ">;"
        }
    .end annotation
.end field

.field public final directoryType:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field private final isOffset:Z

.field public final length:I

.field public final name:Ljava/lang/String;

.field public final tag:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/List;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;",
            ">;I",
            "Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 64
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;-><init>(Ljava/lang/String;ILjava/util/List;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;",
            ">;I",
            "Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;",
            "Z)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->name:Ljava/lang/String;

    .line 70
    iput p2, p0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->dataTypes:Ljava/util/List;

    .line 73
    iput p4, p0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    .line 74
    iput-object p5, p0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->directoryType:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    .line 75
    iput-boolean p6, p0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->isOffset:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;)V
    .locals 6

    const/4 v4, -0x1

    .line 58
    sget-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I)V
    .locals 6

    .line 53
    filled-new-array {p3}, [Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sget-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;-><init>(Ljava/lang/String;ILjava/util/List;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V
    .locals 6

    .line 43
    filled-new-array {p3}, [Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;-><init>(Ljava/lang/String;ILjava/util/List;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;Z)V
    .locals 7

    .line 48
    filled-new-array {p3}, [Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;-><init>(Ljava/lang/String;ILjava/util/List;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;Z)V

    return-void
.end method


# virtual methods
.method public encodeValue(Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;Ljava/lang/Object;Ljava/nio/ByteOrder;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 90
    invoke-virtual {p1, p2, p3}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "): "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isOffset()Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->isOffset:Z

    return p0
.end method

.method public isText()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[TagInfo. tag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

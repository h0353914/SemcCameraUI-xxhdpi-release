.class public final Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;
.super Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;
.source "TiffOutputDirectory.java"


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final byteOrder:Ljava/nio/ByteOrder;

.field private final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;",
            ">;"
        }
    .end annotation
.end field

.field private jpegImageData:Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

.field private nextDirectory:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

.field private tiffImageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory$1;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory$1;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(ILjava/nio/ByteOrder;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/List;

    .line 83
    iput p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->type:I

    .line 84
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method private removeFieldIfPresent(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V
    .locals 0

    .line 539
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 541
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;[Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;->encodeValue(Ljava/nio/ByteOrder;[Ljava/lang/String;)[B

    move-result-object v6

    .line 103
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;->length:I

    if-lez v0, :cond_1

    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;->length:I

    array-length v1, v6

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tag expects "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " byte(s), not "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 107
    :cond_1
    :goto_0
    new-instance p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    array-length v5, v6

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 110
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrByte;[Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 368
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrByte;->encodeValue(Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v7

    .line 370
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrByte;->length:I

    if-lez v0, :cond_1

    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrByte;->length:I

    array-length v1, v7

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 371
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tag expects "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrByte;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " byte(s), not "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 374
    :cond_1
    :goto_0
    new-instance p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrByte;->tag:I

    sget-object v5, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    array-length v6, v7

    move-object v2, p2

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 377
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;[Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 382
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;->encodeValue(Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v7

    .line 384
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;->length:I

    if-lez v0, :cond_1

    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;->length:I

    array-length v1, v7

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tag expects "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " byte(s), not "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 388
    :cond_1
    :goto_0
    new-instance p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;->tag:I

    sget-object v5, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    array-length v6, v7

    move-object v2, p2

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 391
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 396
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;->length:I

    if-lez v0, :cond_1

    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;->length:I

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tag expects "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " value(s), not "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 400
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->RATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;->encodeValue(Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v7

    .line 402
    new-instance p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;->tag:I

    sget-object v5, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->RATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    array-length v6, v7

    move-object v2, p2

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 405
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 89
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;->length:I

    if-lez v0, :cond_1

    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;->length:I

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tag expects "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " value(s), not "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 93
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;->encodeValue(Ljava/nio/ByteOrder;[B)[B

    move-result-object v6

    .line 94
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->BYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 97
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 232
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;->length:I

    if-lez v0, :cond_1

    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;->length:I

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tag expects "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " value(s), not "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 236
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;->encodeValue(Ljava/nio/ByteOrder;[B)[B

    move-result-object v6

    .line 237
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->BYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 240
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;[S)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 245
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;->length:I

    if-lez v0, :cond_1

    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;->length:I

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tag expects "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " value(s), not "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 249
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;->encodeValue(Ljava/nio/ByteOrder;[S)[B

    move-result-object v6

    .line 250
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 253
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;[D)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 219
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;->length:I

    if-lez v0, :cond_1

    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;->length:I

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tag expects "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " value(s), not "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 223
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;->encodeValue(Ljava/nio/ByteOrder;[D)[B

    move-result-object v6

    .line 224
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->DOUBLE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeDouble;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 227
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;[F)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 206
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;->length:I

    if-lez v0, :cond_1

    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;->length:I

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tag expects "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " value(s), not "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 210
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;->encodeValue(Ljava/nio/ByteOrder;[F)[B

    move-result-object v6

    .line 211
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->FLOAT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeFloat;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 214
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 349
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->UNDEFINED:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->encodeValue(Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v7

    .line 351
    new-instance p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->tag:I

    iget-object v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->dataTypes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    array-length v6, v7

    move-object v2, p2

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 353
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;[I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 128
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;->length:I

    if-lez v0, :cond_1

    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;->length:I

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tag expects "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " value(s), not "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 132
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;->encodeValue(Ljava/nio/ByteOrder;[I)[B

    move-result-object v6

    .line 133
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 136
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 141
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;->length:I

    if-lez v0, :cond_1

    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;->length:I

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tag expects "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " value(s), not "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 145
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;->encodeValue(Ljava/nio/ByteOrder;[Lorg/apache/commons/imaging/common/RationalNumber;)[B

    move-result-object v6

    .line 146
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->RATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 149
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSByte;[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 154
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSByte;->length:I

    if-lez v0, :cond_1

    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSByte;->length:I

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tag expects "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSByte;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " value(s), not "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 158
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSByte;->encodeValue(Ljava/nio/ByteOrder;[B)[B

    move-result-object v6

    .line 159
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSByte;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SBYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 162
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLong;[I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 180
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLong;->length:I

    if-lez v0, :cond_1

    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLong;->length:I

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tag expects "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLong;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " value(s), not "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 184
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLong;->encodeValue(Ljava/nio/ByteOrder;[I)[B

    move-result-object v6

    .line 185
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLong;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SLONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 188
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 193
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRational;->length:I

    if-lez v0, :cond_1

    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRational;->length:I

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tag expects "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRational;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " value(s), not "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 197
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRational;->encodeValue(Ljava/nio/ByteOrder;[Lorg/apache/commons/imaging/common/RationalNumber;)[B

    move-result-object v6

    .line 198
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRational;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SRATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 201
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;[S)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 167
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;->length:I

    if-lez v0, :cond_1

    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;->length:I

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tag expects "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " value(s), not "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 171
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;->encodeValue(Ljava/nio/ByteOrder;[S)[B

    move-result-object v6

    .line 172
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SSHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 175
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;[S)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 115
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;->length:I

    if-lez v0, :cond_1

    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;->length:I

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tag expects "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " value(s), not "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 119
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;->encodeValue(Ljava/nio/ByteOrder;[S)[B

    move-result-object v6

    .line 120
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 123
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;[I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 271
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;->length:I

    if-lez v0, :cond_1

    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;->length:I

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tag expects "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " value(s), not "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 275
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;->encodeValue(Ljava/nio/ByteOrder;[I)[B

    move-result-object v6

    .line 276
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 279
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;[S)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 258
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;->length:I

    if-lez v0, :cond_1

    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;->length:I

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tag expects "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " value(s), not "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 262
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;->encodeValue(Ljava/nio/ByteOrder;[S)[B

    move-result-object v6

    .line 263
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 266
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;[I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 297
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->length:I

    if-lez v0, :cond_1

    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->length:I

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tag expects "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " value(s), not "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 301
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->encodeValue(Ljava/nio/ByteOrder;[I)[B

    move-result-object v6

    .line 302
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 305
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 310
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->length:I

    if-lez v0, :cond_1

    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->length:I

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tag expects "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " value(s), not "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 314
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->encodeValue(Ljava/nio/ByteOrder;[Lorg/apache/commons/imaging/common/RationalNumber;)[B

    move-result-object v6

    .line 315
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->RATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 318
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;[S)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 284
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->length:I

    if-lez v0, :cond_1

    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->length:I

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tag expects "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " value(s), not "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 288
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->encodeValue(Ljava/nio/ByteOrder;[S)[B

    move-result-object v6

    .line 289
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 292
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 336
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;->length:I

    if-lez v0, :cond_1

    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;->length:I

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tag expects "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " value(s), not "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 340
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;->encodeValue(Ljava/nio/ByteOrder;[Lorg/apache/commons/imaging/common/RationalNumber;)[B

    move-result-object v6

    .line 341
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->RATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 344
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;[S)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 323
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;->length:I

    if-lez v0, :cond_1

    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;->length:I

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tag expects "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " value(s), not "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 327
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;->encodeValue(Ljava/nio/ByteOrder;[S)[B

    move-result-object v6

    .line 328
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 331
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 358
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->BYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;->encodeValue(Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v7

    .line 360
    new-instance p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;->tag:I

    sget-object v5, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->BYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    array-length v6, v7

    move-object v2, p2

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 363
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V
    .locals 0

    .line 409
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public description()Ljava/lang/String;
    .locals 0

    .line 478
    iget p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->type:I

    invoke-static {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->description(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public findField(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;
    .locals 2

    .line 457
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    .line 458
    iget v1, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tag:I

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;
    .locals 0

    .line 442
    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->findField(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    move-result-object p0

    return-object p0
.end method

.method public getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;",
            ">;"
        }
    .end annotation

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getItemDescription()Ljava/lang/String;
    .locals 3

    .line 534
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->type:I

    invoke-static {v0}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->getExifDirectoryType(I)Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    move-result-object v0

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Directory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->type:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getItemLength()I
    .locals 0

    .line 528
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0xc

    add-int/lit8 p0, p0, 0x6

    return p0
.end method

.method protected getOutputItems(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 549
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_JPEG_INTERCHANGE_FORMAT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeFieldIfPresent(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 550
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeFieldIfPresent(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 553
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->jpegImageData:Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 554
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_JPEG_INTERCHANGE_FORMAT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    const/4 v4, 0x4

    new-array v4, v4, [B

    const/4 v5, 0x1

    invoke-direct {v0, v2, v3, v5, v4}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 557
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    .line 559
    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    iget-object v3, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->jpegImageData:Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    iget v3, v3, Lorg/apache/commons/imaging/formats/tiff/JpegImageData;->length:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;->writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v2

    .line 563
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    sget-object v6, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    invoke-direct {v3, v4, v6, v5, v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 566
    invoke-virtual {p0, v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 572
    :goto_0
    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_STRIP_OFFSETS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-direct {p0, v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeFieldIfPresent(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 573
    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_STRIP_BYTE_COUNTS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-direct {p0, v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeFieldIfPresent(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 574
    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_TILE_OFFSETS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    invoke-direct {p0, v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeFieldIfPresent(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 575
    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_TILE_BYTE_COUNTS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-direct {p0, v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeFieldIfPresent(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 579
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->tiffImageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    if-eqz v2, :cond_3

    .line 580
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData;->stripsNotTiles()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 585
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_STRIP_OFFSETS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    .line 586
    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_STRIP_BYTE_COUNTS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    goto :goto_1

    .line 588
    :cond_1
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_TILE_OFFSETS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    .line 589
    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_TILE_BYTE_COUNTS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    .line 594
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->tiffImageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData;->getImageData()[Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    move-result-object v3

    .line 598
    array-length v4, v3

    new-array v5, v4, [I

    .line 599
    array-length v6, v3

    new-array v7, v6, [I

    const/4 v8, 0x0

    .line 600
    :goto_2
    array-length v9, v3

    if-ge v8, v9, :cond_2

    .line 601
    aget-object v9, v3, v8

    iget v9, v9, Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;->length:I

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 607
    :cond_2
    new-instance v8, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    sget-object v9, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    sget-object v10, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    iget-object v11, p1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v5, v11}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;->writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v10

    invoke-direct {v8, v1, v9, v4, v10}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 611
    invoke-virtual {p0, v8}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    .line 615
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    iget-object v4, p1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v7, v4}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;->writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v1

    .line 616
    new-instance v4, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    sget-object v7, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    invoke-direct {v4, v2, v7, v6, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 619
    invoke-virtual {p0, v4}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    .line 623
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;

    invoke-direct {v1, v3, v5, v8}, Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;-><init>([Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;[ILorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    .line 628
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 629
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->sortFields()V

    .line 632
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    .line 633
    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->isLocalValue()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    .line 637
    :cond_4
    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->getSeperateValue()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    move-result-object v4

    .line 638
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_6

    .line 643
    iget-object v3, v1, Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;->outputItems:[Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 645
    invoke-virtual {p1, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->addTiffImageData(Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;)V

    .line 648
    :cond_6
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->jpegImageData:Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    if-eqz v1, :cond_7

    .line 649
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->jpegImageData:Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/JpegImageData;->getData()[B

    move-result-object p0

    const-string v3, "JPEG image data"

    invoke-direct {v1, v3, p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;-><init>(Ljava/lang/String;[B)V

    .line 651
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    invoke-virtual {p1, v1, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    :cond_7
    return-object v2
.end method

.method public getRawJpegImageData()Lorg/apache/commons/imaging/formats/tiff/JpegImageData;
    .locals 0

    .line 515
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->jpegImageData:Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    return-object p0
.end method

.method public getRawTiffImageData()Lorg/apache/commons/imaging/formats/tiff/TiffImageData;
    .locals 0

    .line 523
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->tiffImageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    return-object p0
.end method

.method public removeField(I)V
    .locals 4

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 422
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    .line 423
    iget v3, v2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tag:I

    if-ne v3, p1, :cond_0

    .line 424
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 427
    :cond_1
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V
    .locals 0

    .line 417
    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(I)V

    return-void
.end method

.method public setJpegImageData(Lorg/apache/commons/imaging/formats/tiff/JpegImageData;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->jpegImageData:Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    return-void
.end method

.method public setNextDirectory(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->nextDirectory:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    return-void
.end method

.method public setTiffImageData(Lorg/apache/commons/imaging/formats/tiff/TiffImageData;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->tiffImageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    return-void
.end method

.method public sortFields()V
    .locals 1

    .line 466
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory$2;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory$2;-><init>(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;)V

    .line 474
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/List;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public writeItem(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 488
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    .line 489
    invoke-virtual {v1, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->writeField(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V

    goto :goto_0

    .line 498
    :cond_0
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->nextDirectory:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    if-eqz p0, :cond_1

    .line 499
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->getOffset()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_2

    const/4 p0, 0x0

    .line 504
    invoke-virtual {p1, p0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    goto :goto_2

    :cond_2
    long-to-int p0, v0

    .line 506
    invoke-virtual {p1, p0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    :goto_2
    return-void
.end method

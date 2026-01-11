.class public Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;
.super Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;
.source "FieldTypeShort.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;-><init>(ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/Object;
    .locals 4

    .line 32
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object p0

    .line 33
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toShort([BLjava/nio/ByteOrder;)S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 36
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toShorts([BLjava/nio/ByteOrder;)[S

    move-result-object p0

    return-object p0
.end method

.method public writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 41
    instance-of p0, p1, Ljava/lang/Short;

    if-eqz p0, :cond_0

    .line 42
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p0

    invoke-static {p0, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(SLjava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0

    .line 43
    :cond_0
    instance-of p0, p1, [S

    if-eqz p0, :cond_1

    .line 44
    check-cast p1, [S

    check-cast p1, [S

    .line 45
    invoke-static {p1, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([SLjava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0

    .line 46
    :cond_1
    instance-of p0, p1, [Ljava/lang/Short;

    if-eqz p0, :cond_3

    .line 47
    check-cast p1, [Ljava/lang/Short;

    check-cast p1, [Ljava/lang/Short;

    .line 48
    array-length p0, p1

    new-array v0, p0, [S

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_2

    .line 50
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_2
    invoke-static {v0, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([SLjava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0

    .line 54
    :cond_3
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string p2, "Invalid data"

    invoke-direct {p0, p2, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw p0
.end method

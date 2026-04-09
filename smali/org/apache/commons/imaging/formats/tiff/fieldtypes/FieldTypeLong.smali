.class public Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;
.super Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;
.source "FieldTypeLong.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

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

    invoke-static {p0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toInt([BLjava/nio/ByteOrder;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 37
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toInts([BLjava/nio/ByteOrder;)[I

    move-result-object p0

    return-object p0
.end method

.method public writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 42
    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 43
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(ILjava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0

    .line 44
    :cond_0
    instance-of p0, p1, [I

    if-eqz p0, :cond_1

    .line 45
    check-cast p1, [I

    .line 46
    invoke-static {p1, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([ILjava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0

    .line 47
    :cond_1
    instance-of p0, p1, [Ljava/lang/Integer;

    if-eqz p0, :cond_3

    .line 48
    check-cast p1, [Ljava/lang/Integer;

    .line 49
    array-length p0, p1

    new-array p0, p0, [I

    const/4 v0, 0x0

    .line 50
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 51
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_2
    invoke-static {p0, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([ILjava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0

    .line 55
    :cond_3
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string p2, "Invalid data"

    invoke-direct {p0, p2, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw p0
.end method

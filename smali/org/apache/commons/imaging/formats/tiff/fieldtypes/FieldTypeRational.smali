.class public Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;
.super Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;
.source "FieldTypeRational.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x8

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;-><init>(ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/Object;
    .locals 4

    .line 33
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object p0

    .line 34
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toRational([BLjava/nio/ByteOrder;)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object p0

    return-object p0

    .line 38
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toRationals([BLjava/nio/ByteOrder;)[Lorg/apache/commons/imaging/common/RationalNumber;

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

    .line 43
    instance-of p0, p1, Lorg/apache/commons/imaging/common/RationalNumber;

    if-eqz p0, :cond_0

    .line 44
    check-cast p1, Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-static {p1, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0

    .line 45
    :cond_0
    instance-of p0, p1, [Lorg/apache/commons/imaging/common/RationalNumber;

    if-eqz p0, :cond_1

    .line 46
    check-cast p1, [Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-static {p1, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0

    .line 47
    :cond_1
    instance-of p0, p1, Ljava/lang/Number;

    if-eqz p0, :cond_2

    .line 48
    check-cast p1, Ljava/lang/Number;

    .line 49
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object p0

    .line 50
    invoke-static {p0, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0

    .line 51
    :cond_2
    instance-of p0, p1, [Ljava/lang/Number;

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 52
    check-cast p1, [Ljava/lang/Number;

    .line 53
    array-length p0, p1

    new-array p0, p0, [Lorg/apache/commons/imaging/common/RationalNumber;

    .line 54
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 55
    aget-object v1, p1, v0

    .line 56
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v1

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_3
    invoke-static {p0, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0

    .line 59
    :cond_4
    instance-of p0, p1, [D

    if-eqz p0, :cond_6

    .line 60
    check-cast p1, [D

    .line 61
    array-length p0, p1

    new-array p0, p0, [Lorg/apache/commons/imaging/common/RationalNumber;

    .line 62
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_5

    .line 63
    aget-wide v1, p1, v0

    .line 64
    invoke-static {v1, v2}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v1

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    :cond_5
    invoke-static {p0, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0

    .line 68
    :cond_6
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string p2, "Invalid data"

    invoke-direct {p0, p2, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw p0
.end method

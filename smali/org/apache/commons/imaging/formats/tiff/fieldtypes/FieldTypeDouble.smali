.class public Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeDouble;
.super Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;
.source "FieldTypeDouble.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x8

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

    invoke-static {p0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toDouble([BLjava/nio/ByteOrder;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 37
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toDoubles([BLjava/nio/ByteOrder;)[D

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

    .line 42
    instance-of p0, p1, Ljava/lang/Double;

    if-eqz p0, :cond_0

    .line 43
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(DLjava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0

    .line 45
    :cond_0
    instance-of p0, p1, [D

    if-eqz p0, :cond_1

    .line 46
    check-cast p1, [D

    .line 47
    invoke-static {p1, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([DLjava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0

    .line 48
    :cond_1
    instance-of p0, p1, [Ljava/lang/Double;

    if-eqz p0, :cond_3

    .line 49
    check-cast p1, [Ljava/lang/Double;

    .line 50
    array-length p0, p1

    new-array p0, p0, [D

    const/4 v0, 0x0

    .line 51
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 52
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_2
    invoke-static {p0, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([DLjava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0

    .line 56
    :cond_3
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string p2, "Invalid data"

    invoke-direct {p0, p2, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw p0
.end method

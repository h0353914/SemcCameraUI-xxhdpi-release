.class public Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;
.super Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;
.source "FieldTypeByte.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;-><init>(ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/Object;
    .locals 4

    .line 31
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object p0

    .line 32
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 33
    aget-byte p0, p0, p1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 40
    instance-of p0, p1, Ljava/lang/Byte;

    if-eqz p0, :cond_0

    .line 41
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    const/4 p1, 0x1

    new-array p1, p1, [B

    const/4 p2, 0x0

    aput-byte p0, p1, p2

    return-object p1

    .line 42
    :cond_0
    instance-of p0, p1, [B

    if-eqz p0, :cond_1

    .line 43
    check-cast p1, [B

    check-cast p1, [B

    return-object p1

    .line 45
    :cond_1
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string p2, "Invalid data"

    invoke-direct {p0, p2, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw p0
.end method

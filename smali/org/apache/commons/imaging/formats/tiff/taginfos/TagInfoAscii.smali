.class public Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;
.super Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;
.source "TagInfoAscii.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V
    .locals 6

    .line 29
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    return-void
.end method


# virtual methods
.method public varargs encodeValue(Ljava/nio/ByteOrder;[Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 71
    sget-object p0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;->writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0
.end method

.method public getValue(Ljava/nio/ByteOrder;[B)[Ljava/lang/String;
    .locals 6

    const/4 p0, 0x0

    move p1, p0

    move v0, p1

    .line 34
    :goto_0
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_1

    .line 35
    aget-byte v1, p2, p1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 39
    new-array p1, v0, [Ljava/lang/String;

    const-string v0, ""

    .line 41
    aput-object v0, p1, p0

    move v0, p0

    move v1, v0

    .line 46
    :goto_1
    array-length v2, p2

    if-ge p0, v2, :cond_3

    .line 47
    aget-byte v2, p2, p0

    if-nez v2, :cond_2

    .line 49
    :try_start_0
    new-instance v2, Ljava/lang/String;

    sub-int v3, p0, v0

    const-string v4, "UTF-8"

    invoke-direct {v2, p2, v0, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    .line 51
    :try_start_1
    aput-object v2, p1, v1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move v0, v1

    :catch_1
    :goto_2
    add-int/lit8 v1, p0, 0x1

    move v5, v1

    move v1, v0

    move v0, v5

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 57
    :cond_3
    array-length p0, p2

    if-ge v0, p0, :cond_4

    .line 60
    :try_start_2
    new-instance p0, Ljava/lang/String;

    array-length v2, p2

    sub-int/2addr v2, v0

    const-string v3, "UTF-8"

    invoke-direct {p0, p2, v0, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 62
    aput-object p0, p1, v1
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_4
    return-object p1
.end method

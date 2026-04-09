.class public Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;
.super Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;
.source "FieldTypeAscii.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;-><init>(ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/Object;
    .locals 9

    .line 34
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    move v1, p1

    move v2, v0

    .line 36
    :goto_0
    array-length v3, p0

    sub-int/2addr v3, v0

    if-ge v1, v3, :cond_1

    .line 37
    aget-byte v3, p0, v1

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_1
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, ""

    .line 43
    aput-object v2, v1, p1

    move v2, p1

    move v3, v2

    move v4, v3

    .line 48
    :goto_1
    array-length v5, p0

    if-ge v2, v5, :cond_3

    .line 49
    aget-byte v5, p0, v2

    if-nez v5, :cond_2

    .line 51
    :try_start_0
    new-instance v5, Ljava/lang/String;

    sub-int v6, v2, v3

    const-string v7, "UTF-8"

    invoke-direct {v5, p0, v3, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v4, 0x1

    .line 53
    :try_start_1
    aput-object v5, v1, v4
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move v3, v4

    :catch_1
    :goto_2
    add-int/lit8 v4, v2, 0x1

    move v8, v4

    move v4, v3

    move v3, v8

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 59
    :cond_3
    array-length v2, p0

    if-ge v3, v2, :cond_4

    .line 62
    :try_start_2
    new-instance v2, Ljava/lang/String;

    array-length v5, p0

    sub-int/2addr v5, v3

    const-string v6, "UTF-8"

    invoke-direct {v2, p0, v3, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 64
    aput-object v2, v1, v4
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 68
    :catch_2
    :cond_4
    array-length p0, v1

    if-ne p0, v0, :cond_5

    .line 69
    aget-object p0, v1, p1

    return-object p0

    :cond_5
    return-object v1
.end method

.method public writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 76
    instance-of p0, p1, [B

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    .line 77
    check-cast p1, [B

    .line 78
    array-length p0, p1

    add-int/lit8 p0, p0, 0x1

    new-array p0, p0, [B

    .line 79
    array-length v0, p1

    invoke-static {p1, p2, p0, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    aput-byte p2, p0, p1

    return-object p0

    .line 82
    :cond_0
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 85
    :try_start_0
    check-cast p1, Ljava/lang/String;

    const-string p0, "UTF-8"

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    array-length p1, p0

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [B

    .line 90
    array-length v0, p0

    invoke-static {p0, p2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    aput-byte p2, p1, p0

    return-object p1

    :catch_0
    move-exception p0

    .line 87
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Your Java doesn\'t support UTF-8"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 93
    :cond_1
    instance-of p0, p1, [Ljava/lang/String;

    if-eqz p0, :cond_4

    .line 94
    check-cast p1, [Ljava/lang/String;

    .line 96
    array-length p0, p1

    move v0, p2

    move v1, v0

    :goto_0
    if-ge v0, p0, :cond_2

    aget-object v2, p1, v0

    :try_start_1
    const-string v3, "UTF-8"

    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 101
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Your Java doesn\'t support UTF-8"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 105
    :cond_2
    new-array p0, v1, [B

    .line 107
    array-length v0, p1

    move v1, p2

    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v3, p1, v1

    :try_start_2
    const-string v4, "UTF-8"

    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 114
    array-length v4, v3

    invoke-static {v3, p2, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_2
    move-exception p0

    .line 112
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Your Java doesn\'t support UTF-8"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    return-object p0

    .line 119
    :cond_4
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown data type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

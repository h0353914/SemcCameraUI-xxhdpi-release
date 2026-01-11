.class public final Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;
.super Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;
.source "TagInfoGpsText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;
    }
.end annotation


# static fields
.field private static final TEXT_ENCODINGS:[Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

.field private static final TEXT_ENCODING_ASCII:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

.field private static final TEXT_ENCODING_JIS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

.field private static final TEXT_ENCODING_UNDEFINED:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

.field private static final TEXT_ENCODING_UNICODE_BE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

.field private static final TEXT_ENCODING_UNICODE_LE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 37
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    const/16 v1, 0x8

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    const-string v3, "US-ASCII"

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;-><init>([BLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_ASCII:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    .line 40
    new-instance v2, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    new-array v3, v1, [B

    fill-array-data v3, :array_1

    const-string v4, "JIS"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;-><init>([BLjava/lang/String;)V

    sput-object v2, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_JIS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    .line 43
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    new-array v4, v1, [B

    fill-array-data v4, :array_2

    const-string v5, "UTF-16LE"

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;-><init>([BLjava/lang/String;)V

    sput-object v3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_UNICODE_LE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    .line 46
    new-instance v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    new-array v5, v1, [B

    fill-array-data v5, :array_3

    const-string v6, "UTF-16BE"

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;-><init>([BLjava/lang/String;)V

    sput-object v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_UNICODE_BE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    .line 49
    new-instance v5, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v6, "ISO-8859-1"

    invoke-direct {v5, v1, v6}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;-><init>([BLjava/lang/String;)V

    sput-object v5, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_UNDEFINED:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    .line 53
    filled-new-array {v0, v2, v3, v4, v5}, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODINGS:[Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x4at
        0x49t
        0x53t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x55t
        0x4et
        0x49t
        0x43t
        0x4ft
        0x44t
        0x45t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x55t
        0x4et
        0x49t
        0x43t
        0x4ft
        0x44t
        0x45t
        0x0t
    .end array-data

    :array_4
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V
    .locals 6

    .line 63
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->UNDEFINED:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    return-void
.end method


# virtual methods
.method public encodeValue(Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;Ljava/lang/Object;Ljava/nio/ByteOrder;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 84
    instance-of p0, p2, Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 87
    check-cast p2, Ljava/lang/String;

    .line 91
    :try_start_0
    sget-object p0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_ASCII:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    iget-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->encodingName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 92
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->encodingName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 93
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 95
    array-length p2, p1

    iget-object p3, p0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    array-length p3, p3

    add-int/2addr p2, p3

    new-array p2, p2, [B

    .line 97
    iget-object p3, p0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    array-length v0, v0

    invoke-static {p3, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    array-length p0, p0

    array-length p3, p1

    invoke-static {p1, v1, p2, p0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 105
    :cond_0
    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, p0, :cond_1

    .line 106
    sget-object p0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_UNICODE_BE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    goto :goto_0

    .line 108
    :cond_1
    sget-object p0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_UNICODE_LE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    .line 110
    :goto_0
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->encodingName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 111
    array-length p2, p1

    iget-object p3, p0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    array-length p3, p3

    add-int/2addr p2, p3

    new-array p2, p2, [B

    .line 112
    iget-object p3, p0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    array-length v0, v0

    invoke-static {p3, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    array-length p0, p0

    array-length p3, p1

    invoke-static {p1, v1, p2, p0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 116
    new-instance p1, Lorg/apache/commons/imaging/ImageWriteException;

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 85
    :cond_2
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string p1, "GPS text value not String"

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw p0
.end method

.method public bridge synthetic getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 122
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object p0

    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_2

    .line 123
    sget-object p0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;->getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/Object;

    move-result-object p0

    .line 124
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 125
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 126
    :cond_0
    instance-of p1, p0, [Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 132
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    aget-object p0, p0, v1

    return-object p0

    .line 134
    :cond_1
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Unexpected ASCII type decoded"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 136
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object p0

    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->UNDEFINED:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    if-ne p0, v0, :cond_3

    goto :goto_0

    .line 138
    :cond_3
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object p0

    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->BYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    if-ne p0, v0, :cond_7

    .line 148
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object p0

    .line 149
    array-length p1, p0

    const/16 v0, 0x8

    const-string v2, "US-ASCII"

    if-ge p1, v0, :cond_4

    .line 152
    :try_start_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 154
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "GPS text field missing encoding prefix."

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 158
    :cond_4
    sget-object p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODINGS:[Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    array-length v0, p1

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_6

    aget-object v4, p1, v3

    .line 159
    iget-object v5, v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    iget-object v6, v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    array-length v6, v6

    invoke-static {p0, v1, v5, v1, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->compareBytes([BI[BII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 162
    :try_start_1
    new-instance v5, Ljava/lang/String;

    iget-object v6, v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    array-length v6, v6

    array-length v7, p0

    iget-object v8, v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    array-length v8, v8

    sub-int/2addr v7, v8

    iget-object v8, v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->encodingName:Ljava/lang/String;

    invoke-direct {v5, p0, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 166
    iget-object v6, v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->encodingName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 168
    iget-object v4, v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    array-length v4, v4

    array-length v7, v6

    invoke-static {p0, v4, v6, v1, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->compareBytes([BI[BII)Z

    move-result v4
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_5

    return-object v5

    :catch_1
    move-exception p0

    .line 174
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 181
    :cond_6
    :try_start_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catch_2
    move-exception p0

    .line 183
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Unknown GPS text encoding prefix."

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 141
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "entry.type: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    .line 142
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "entry.directoryType: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getDirectoryType()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    .line 143
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getDescriptionWithoutValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    .line 144
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    .line 145
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "GPS text field not encoded as bytes."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isText()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

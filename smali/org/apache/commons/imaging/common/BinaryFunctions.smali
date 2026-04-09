.class public final Lorg/apache/commons/imaging/common/BinaryFunctions;
.super Ljava/lang/Object;
.source "BinaryFunctions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charsToQuad(CCCC)I
    .locals 1

    const/16 v0, 0xff

    and-int/2addr p0, v0

    shl-int/lit8 p0, p0, 0x18

    and-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    and-int p1, v0, p2

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    and-int p1, v0, p3

    shl-int/lit8 p1, p1, 0x0

    or-int/2addr p0, p1

    return p0
.end method

.method public static compareBytes([BI[BII)Z
    .locals 4

    .line 170
    array-length v0, p0

    add-int v1, p1, p4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 173
    :cond_0
    array-length v0, p2

    add-int v1, p3, p4

    if-ge v0, v1, :cond_1

    return v2

    :cond_1
    move v0, v2

    :goto_0
    if-ge v0, p4, :cond_3

    add-int v1, p1, v0

    .line 178
    aget-byte v1, p0, v1

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    .line 308
    new-array v0, v0, [B

    .line 310
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 311
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static findNull([B)I
    .locals 1

    const/4 v0, 0x0

    .line 270
    invoke-static {p0, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->findNull([BI)I

    move-result p0

    return p0
.end method

.method public static findNull([BI)I
    .locals 1

    .line 274
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    .line 275
    aget-byte v0, p0, p1

    if-nez v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getRAFBytes(Ljava/io/RandomAccessFile;JILjava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    new-array v0, p3, [B

    .line 286
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p3, :cond_1

    sub-int p2, p3, p1

    .line 290
    invoke-virtual {p0, v0, p1, p2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p2

    if-gez p2, :cond_0

    .line 292
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, p4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    add-int/2addr p1, p2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getStreamBytes(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 317
    invoke-static {p0, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 318
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static head([BI)[B
    .locals 1

    .line 162
    array-length v0, p0

    if-le p1, v0, :cond_0

    .line 163
    array-length p1, p0

    :cond_0
    const/4 v0, 0x0

    .line 165
    invoke-static {p0, v0, p1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->slice([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static printByteBits(Ljava/lang/String;B)V
    .locals 2

    .line 262
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xff

    and-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 2

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 p1, p2, 0x18

    const/16 v1, 0xff

    and-int/2addr p1, v1

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 p1, p2, 0x10

    and-int/2addr p1, v1

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 p1, p2, 0x8

    and-int/2addr p1, v1

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 p1, p2, 0x0

    and-int/2addr p1, v1

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static printCharQuad(Ljava/lang/String;I)V
    .locals 3

    .line 248
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 p0, p1, 0x18

    const/16 v2, 0xff

    and-int/2addr p0, v2

    int-to-char p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 p0, p1, 0x10

    and-int/2addr p0, v2

    int-to-char p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 p0, p1, 0x8

    and-int/2addr p0, v2

    int-to-char p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 p0, p1, 0x0

    and-int/2addr p0, v2

    int-to-char p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p0

    .line 232
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    or-int v0, p0, p1

    if-gez v0, :cond_0

    .line 234
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 238
    :cond_0
    sget-object p2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, p2, :cond_1

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, p1

    goto :goto_0

    :cond_1
    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method public static read3Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p0

    .line 211
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 212
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    or-int v1, p0, v0

    or-int/2addr v1, p1

    if-gez v1, :cond_0

    .line 214
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 218
    :cond_0
    sget-object p2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, p2, :cond_1

    shl-int/lit8 p0, p0, 0x10

    shl-int/lit8 p2, v0, 0x8

    or-int/2addr p0, p2

    shl-int/lit8 p1, p1, 0x0

    or-int/2addr p0, p1

    goto :goto_0

    :cond_1
    shl-int/lit8 p1, p1, 0x10

    shl-int/lit8 p2, v0, 0x8

    or-int/2addr p1, p2

    shl-int/lit8 p0, p0, 0x0

    or-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method public static read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p0

    .line 189
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 190
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 191
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    or-int v2, p0, v0

    or-int/2addr v2, v1

    or-int/2addr v2, p1

    if-gez v2, :cond_0

    .line 193
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 197
    :cond_0
    sget-object p2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, p2, :cond_1

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p2, v0, 0x10

    or-int/2addr p0, p2

    shl-int/lit8 p2, v1, 0x8

    or-int/2addr p0, p2

    shl-int/lit8 p1, p1, 0x0

    or-int/2addr p0, p1

    goto :goto_0

    :cond_1
    shl-int/lit8 p1, p1, 0x18

    shl-int/lit8 p2, v1, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, v0, 0x8

    or-int/2addr p1, p2

    shl-int/lit8 p0, p0, 0x0

    or-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method public static readAndVerifyBytes(Ljava/io/InputStream;Lorg/apache/commons/imaging/common/BinaryConstant;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 125
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/BinaryConstant;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 126
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0xff

    and-int/2addr v2, v1

    int-to-byte v2, v2

    if-gez v1, :cond_0

    .line 130
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Unexpected EOF."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 133
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/common/BinaryConstant;->get(I)B

    move-result v1

    if-eq v2, v1, :cond_1

    .line 134
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static readAndVerifyBytes(Ljava/io/InputStream;[BLjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-byte v2, p1, v1

    .line 109
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    const/16 v4, 0xff

    and-int/2addr v4, v3

    int-to-byte v4, v4

    if-gez v3, :cond_0

    .line 113
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Unexpected EOF."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-eq v4, v2, :cond_1

    .line 117
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p0

    if-gez p0, :cond_0

    .line 74
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/16 p1, 0xff

    and-int/2addr p0, p1

    int-to-byte p0, p0

    return p0
.end method

.method public static readBytes(Ljava/io/InputStream;I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    const-string v1, "Unexpected EOF"

    .line 103
    invoke-static {v0, p0, p1, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static readBytes(Ljava/lang/String;Ljava/io/InputStream;I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " could not be read."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    new-array p0, p2, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    sub-int v1, p2, v0

    .line 90
    invoke-virtual {p1, p0, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gez v1, :cond_0

    .line 92
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " count: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " read: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " length: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static remainingBytes(Ljava/lang/String;[BI)[B
    .locals 0

    .line 152
    array-length p0, p1

    sub-int/2addr p0, p2

    invoke-static {p1, p2, p0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->slice([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static skipBytes(Ljava/io/InputStream;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Couldn\'t skip bytes"

    .line 303
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;JLjava/lang/String;)V

    return-void
.end method

.method public static skipBytes(Ljava/io/InputStream;JLjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    sub-long v2, p1, v0

    .line 143
    invoke-virtual {p0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 145
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static slice([BII)[B
    .locals 2

    .line 156
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 157
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static startsWith([BLorg/apache/commons/imaging/common/BinaryConstant;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 57
    array-length v1, p0

    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/BinaryConstant;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    .line 61
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/BinaryConstant;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 62
    aget-byte v2, p0, v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/imaging/common/BinaryConstant;->get(I)B

    move-result v3

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public static startsWith([B[B)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_1

    return v0

    .line 43
    :cond_1
    array-length v1, p1

    array-length v2, p0

    if-le v1, v2, :cond_2

    return v0

    :cond_2
    move v1, v0

    .line 47
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 48
    aget-byte v2, p1, v1

    aget-byte v3, p0, v1

    if-eq v2, v3, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

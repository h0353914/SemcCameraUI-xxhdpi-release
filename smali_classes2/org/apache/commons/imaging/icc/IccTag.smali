.class public Lorg/apache/commons/imaging/icc/IccTag;
.super Ljava/lang/Object;
.source "IccTag.java"


# instance fields
.field private data:[B

.field private dataTypeSignature:I

.field public final fIccTagType:Lorg/apache/commons/imaging/icc/IccTagType;

.field private itdt:Lorg/apache/commons/imaging/icc/IccTagDataType;

.field public final length:I

.field public final offset:I

.field public final signature:I


# direct methods
.method public constructor <init>(IIILorg/apache/commons/imaging/icc/IccTagType;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lorg/apache/commons/imaging/icc/IccTag;->signature:I

    .line 45
    iput p2, p0, Lorg/apache/commons/imaging/icc/IccTag;->offset:I

    .line 46
    iput p3, p0, Lorg/apache/commons/imaging/icc/IccTag;->length:I

    .line 47
    iput-object p4, p0, Lorg/apache/commons/imaging/icc/IccTag;->fIccTagType:Lorg/apache/commons/imaging/icc/IccTagType;

    return-void
.end method

.method private getIccTagDataType(I)Lorg/apache/commons/imaging/icc/IccTagDataType;
    .locals 4

    .line 72
    invoke-static {}, Lorg/apache/commons/imaging/icc/IccTagDataTypes;->values()[Lorg/apache/commons/imaging/icc/IccTagDataTypes;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 73
    invoke-interface {v2}, Lorg/apache/commons/imaging/icc/IccTagDataType;->getSignature()I

    move-result v3

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tag signature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/imaging/icc/IccTag;->signature:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    iget v3, p0, Lorg/apache/commons/imaging/icc/IccTag;->signature:I

    shr-int/lit8 v4, v3, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    shr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    shr-int/lit8 v6, v3, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v7, 0x4

    new-array v8, v7, [B

    const/4 v9, 0x0

    aput-byte v4, v8, v9

    const/4 v4, 0x1

    aput-byte v5, v8, v4

    const/4 v5, 0x2

    aput-byte v6, v8, v5

    const/4 v6, 0x3

    aput-byte v3, v8, v6

    const-string v3, "US-ASCII"

    invoke-direct {v2, v8, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lorg/apache/commons/imaging/icc/IccTag;->data:[B

    const-string v8, "data: "

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lorg/apache/commons/imaging/icc/IccTag;->data:[B

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, p0, Lorg/apache/commons/imaging/icc/IccTag;->data:[B

    array-length v8, v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "data type signature: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v8, p0, Lorg/apache/commons/imaging/icc/IccTag;->dataTypeSignature:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget v8, p0, Lorg/apache/commons/imaging/icc/IccTag;->dataTypeSignature:I

    shr-int/lit8 v10, v8, 0x18

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    shr-int/lit8 v11, v8, 0x10

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    shr-int/lit8 v12, v8, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    new-array v7, v7, [B

    aput-byte v10, v7, v9

    aput-byte v11, v7, v4

    aput-byte v12, v7, v5

    aput-byte v8, v7, v6

    invoke-direct {v1, v7, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lorg/apache/commons/imaging/icc/IccTag;->itdt:Lorg/apache/commons/imaging/icc/IccTagDataType;

    if-nez v0, :cond_1

    .line 119
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "IccTagType : unknown"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "IccTagType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/imaging/icc/IccTag;->itdt:Lorg/apache/commons/imaging/icc/IccTagDataType;

    invoke-interface {v1}, Lorg/apache/commons/imaging/icc/IccTagDataType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lorg/apache/commons/imaging/icc/IccTag;->itdt:Lorg/apache/commons/imaging/icc/IccTagDataType;

    iget-object p0, p0, Lorg/apache/commons/imaging/icc/IccTag;->data:[B

    invoke-interface {v0, p2, p0}, Lorg/apache/commons/imaging/icc/IccTagDataType;->dump(Ljava/lang/String;[B)V

    .line 127
    :goto_0
    const-string p0, ""

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public dump(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 84
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/imaging/icc/IccTag;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public setData([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lorg/apache/commons/imaging/icc/IccTag;->data:[B

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 56
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 57
    :try_start_1
    const-string p1, "data type signature"

    const-string v1, "ICC: corrupt tag data"

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v3, v1, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/icc/IccTag;->dataTypeSignature:I

    .line 60
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/icc/IccTag;->getIccTagDataType(I)Lorg/apache/commons/imaging/icc/IccTagDataType;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/imaging/icc/IccTag;->itdt:Lorg/apache/commons/imaging/icc/IccTagDataType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    new-array p0, v0, [Ljava/io/Closeable;

    aput-object v3, p0, v2

    invoke-static {v0, p0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v1, p1, v2

    invoke-static {v2, p1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0
.end method

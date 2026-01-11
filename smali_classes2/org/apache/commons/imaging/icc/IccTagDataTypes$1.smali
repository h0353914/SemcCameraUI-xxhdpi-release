.class final enum Lorg/apache/commons/imaging/icc/IccTagDataTypes$1;
.super Lorg/apache/commons/imaging/icc/IccTagDataTypes;
.source "IccTagDataTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/icc/IccTagDataTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 30
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/icc/IccTagDataTypes;-><init>(Ljava/lang/String;ILjava/lang/String;ILorg/apache/commons/imaging/icc/IccTagDataTypes$1;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    const-string p0, "ICC: corrupt tag data"

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 38
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    :try_start_1
    const-string v1, "type_signature"

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v1, v3, p0, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    .line 42
    const-string v1, "ignore"

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v1, v3, p0, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    .line 43
    const-string v1, "stringLength"

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v1, v3, p0, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result p0

    .line 46
    new-instance v1, Ljava/lang/String;

    sub-int/2addr p0, v0

    const-string v4, "US-ASCII"

    const/16 v5, 0xc

    invoke-direct {v1, p2, v5, p0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 47
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "s: \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
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

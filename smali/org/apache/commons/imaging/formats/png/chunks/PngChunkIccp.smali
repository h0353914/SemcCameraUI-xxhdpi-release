.class public Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIccp;
.super Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;
.source "PngChunkIccp.java"


# instance fields
.field private final compressedProfile:[B

.field public final compressionMethod:I

.field public final profileName:Ljava/lang/String;

.field private final uncompressedProfile:[B


# direct methods
.method public constructor <init>(III[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;-><init>(III[B)V

    .line 45
    invoke-static {p4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->findNull([B)I

    move-result p1

    if-gez p1, :cond_0

    .line 47
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "PngChunkIccp: No Profile Name"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 49
    :cond_0
    new-array p2, p1, [B

    const/4 p3, 0x0

    .line 50
    invoke-static {p4, p3, p2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    new-instance v0, Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIccp;->profileName:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    .line 53
    aget-byte p2, p4, p1

    iput p2, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIccp;->compressionMethod:I

    .line 55
    array-length p2, p4

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr p2, p1

    .line 56
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIccp;->compressedProfile:[B

    .line 57
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIccp;->compressedProfile:[B

    invoke-static {p4, p1, v0, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIccp;->getDebug()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 60
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ProfileName: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIccp;->profileName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ProfileName.length(): "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIccp;->profileName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 62
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CompressionMethod: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIccp;->compressionMethod:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CompressedProfileLength: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bytes.length: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, p4

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    :cond_1
    new-instance p1, Ljava/util/zip/InflaterInputStream;

    new-instance p2, Ljava/io/ByteArrayInputStream;

    iget-object p3, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIccp;->compressedProfile:[B

    invoke-direct {p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p1, p2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->getStreamBytes(Ljava/io/InputStream;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIccp;->uncompressedProfile:[B

    .line 69
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIccp;->getDebug()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 70
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "UncompressedProfile: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getUncompressedProfile()[B
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIccp;->uncompressedProfile:[B

    return-object p0
.end method

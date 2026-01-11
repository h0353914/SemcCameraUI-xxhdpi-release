.class public abstract Lorg/apache/commons/imaging/common/bytesource/ByteSource;
.super Ljava/lang/Object;
.source "ByteSource.java"


# instance fields
.field protected final filename:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->filename:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getAll()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getBlock(II)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0xffffffffL

    int-to-long v2, p1

    and-long/2addr v0, v2

    .line 49
    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getBlock(JI)[B

    move-result-object p0

    return-object p0
.end method

.method public abstract getBlock(JI)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public final getFilename()Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->filename:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getInputStream(J)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    :try_start_1
    invoke-static {p0, p1, p2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    .line 40
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    throw p1
.end method

.method public abstract getLength()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

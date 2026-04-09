.class Lorg/apache/commons/imaging/icc/CachingInputStream;
.super Ljava/io/InputStream;
.source "CachingInputStream.java"


# instance fields
.field private final baos:Ljava/io/ByteArrayOutputStream;

.field private final is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 26
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/imaging/icc/CachingInputStream;->baos:Ljava/io/ByteArrayOutputStream;

    .line 29
    iput-object p1, p0, Lorg/apache/commons/imaging/icc/CachingInputStream;->is:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object p0, p0, Lorg/apache/commons/imaging/icc/CachingInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    return p0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object p0, p0, Lorg/apache/commons/imaging/icc/CachingInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getCache()[B
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/apache/commons/imaging/icc/CachingInputStream;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/apache/commons/imaging/icc/CachingInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 39
    iget-object p0, p0, Lorg/apache/commons/imaging/icc/CachingInputStream;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return v0
.end method

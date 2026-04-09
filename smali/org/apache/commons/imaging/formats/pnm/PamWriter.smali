.class Lorg/apache/commons/imaging/formats/pnm/PamWriter;
.super Ljava/lang/Object;
.source "PamWriter.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/pnm/PnmWriter;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/image/BufferedImage;",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p0, 0x50

    .line 32
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write(I)V

    const/16 p0, 0x37

    .line 33
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write(I)V

    const/16 p0, 0xa

    .line 34
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write(I)V

    .line 36
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p3

    .line 37
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WIDTH "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 40
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write(I)V

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HEIGHT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 43
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write(I)V

    const-string v1, "DEPTH 4"

    const-string v2, "US-ASCII"

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 46
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write(I)V

    const-string v1, "MAXVAL 255"

    const-string v2, "US-ASCII"

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 49
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write(I)V

    const-string v1, "TUPLTYPE RGB_ALPHA"

    const-string v2, "US-ASCII"

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 52
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write(I)V

    const-string v1, "ENDHDR"

    const-string v2, "US-ASCII"

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 55
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write(I)V

    const/4 p0, 0x0

    move v1, p0

    :goto_0
    if-ge v1, v0, :cond_1

    move v2, p0

    :goto_1
    if-ge v2, p3, :cond_0

    .line 59
    invoke-virtual {p1, v2, v1}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v3

    shr-int/lit8 v4, v3, 0x18

    const/16 v5, 0xff

    and-int/2addr v4, v5

    shr-int/lit8 v6, v3, 0x10

    and-int/2addr v6, v5

    shr-int/lit8 v7, v3, 0x8

    and-int/2addr v7, v5

    shr-int/2addr v3, p0

    and-int/2addr v3, v5

    int-to-byte v5, v6

    .line 65
    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    int-to-byte v5, v7

    .line 66
    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    int-to-byte v3, v3

    .line 67
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    int-to-byte v3, v4

    .line 68
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

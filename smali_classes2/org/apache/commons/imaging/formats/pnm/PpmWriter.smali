.class Lorg/apache/commons/imaging/formats/pnm/PpmWriter;
.super Ljava/lang/Object;
.source "PpmWriter.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/pnm/PnmWriter;


# instance fields
.field private rawbits:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p1, p0, Lorg/apache/commons/imaging/formats/pnm/PpmWriter;->rawbits:Z

    return-void
.end method


# virtual methods
.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 11
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

    const/16 p3, 0x50

    .line 38
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    .line 39
    iget-boolean p3, p0, Lorg/apache/commons/imaging/formats/pnm/PpmWriter;->rawbits:Z

    if-eqz p3, :cond_0

    const/16 p3, 0x36

    goto :goto_0

    :cond_0
    const/16 p3, 0x33

    :goto_0
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    const/16 p3, 0x20

    .line 40
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    .line 42
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    .line 43
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "US-ASCII"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    .line 46
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    .line 49
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    const/16 v2, 0xff

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write([B)V

    const/16 v4, 0xa

    .line 52
    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v1, :cond_3

    move v6, v4

    :goto_2
    if-ge v6, v0, :cond_2

    .line 56
    invoke-virtual {p1, v6, v5}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v7

    shr-int/lit8 v8, v7, 0x10

    and-int/2addr v8, v2

    shr-int/lit8 v9, v7, 0x8

    and-int/2addr v9, v2

    and-int/2addr v7, v2

    .line 61
    iget-boolean v10, p0, Lorg/apache/commons/imaging/formats/pnm/PpmWriter;->rawbits:Z

    if-eqz v10, :cond_1

    int-to-byte v8, v8

    .line 62
    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write(I)V

    int-to-byte v8, v9

    .line 63
    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write(I)V

    int-to-byte v7, v7

    .line 64
    invoke-virtual {p2, v7}, Ljava/io/OutputStream;->write(I)V

    goto :goto_3

    .line 66
    :cond_1
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write([B)V

    .line 68
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    .line 69
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write([B)V

    .line 72
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    .line 73
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/OutputStream;->write([B)V

    .line 75
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

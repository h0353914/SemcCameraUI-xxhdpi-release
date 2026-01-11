.class Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;
.super Ljava/lang/Object;
.source "JpegInputStream.java"


# instance fields
.field private b:I

.field private cnt:I

.field private final is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->is:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public nextBit()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 35
    iget v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->cnt:I

    if-nez v0, :cond_3

    .line 36
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->b:I

    .line 37
    const-string v1, "Premature End of File"

    if-ltz v0, :cond_2

    const/16 v2, 0x8

    .line 40
    iput v2, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->cnt:I

    const/16 v2, 0xff

    if-ne v0, v2, :cond_3

    .line 42
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_1

    if-eqz v0, :cond_3

    const/16 p0, 0xdc

    if-ne v0, p0, :cond_0

    .line 48
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "DNL not yet supported"

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 50
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Invalid marker found in entropy data"

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 44
    :cond_1
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_2
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 55
    :cond_3
    iget v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->b:I

    shr-int/lit8 v1, v0, 0x7

    and-int/lit8 v1, v1, 0x1

    .line 56
    iget v2, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->cnt:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->cnt:I

    shl-int/lit8 v0, v0, 0x1

    .line 57
    iput v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->b:I

    return v1
.end method

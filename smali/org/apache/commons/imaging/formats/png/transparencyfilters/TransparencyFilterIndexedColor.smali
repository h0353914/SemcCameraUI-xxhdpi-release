.class public Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterIndexedColor;
.super Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;
.source "TransparencyFilterIndexedColor.java"


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;-><init>([B)V

    return-void
.end method


# virtual methods
.method public filter(II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterIndexedColor;->getLength()I

    move-result v0

    if-lt p2, v0, :cond_0

    return p1

    :cond_0
    if-ltz p2, :cond_2

    if-le p2, v0, :cond_1

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterIndexedColor;->getByte(I)B

    move-result p0

    const/16 p2, 0xff

    and-int/2addr p0, p2

    shl-int/lit8 p0, p0, 0x18

    const p2, 0xffffff

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0

    .line 37
    :cond_2
    :goto_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransparencyFilterIndexedColor index: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", bytes.length: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.class public abstract Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;
.super Lorg/apache/commons/imaging/common/BinaryFileParser;
.source "TransparencyFilter.java"


# instance fields
.field private final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;->bytes:[B

    return-void
.end method


# virtual methods
.method public abstract filter(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getByte(I)B
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;->bytes:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public getLength()I
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;->bytes:[B

    array-length p0, p0

    return p0
.end method

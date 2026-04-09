.class Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;
.super Lorg/apache/commons/imaging/formats/pnm/FileInfo;
.source "PbmFileInfo.java"


# instance fields
.field private bitcache:I

.field private bitsInCache:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public getBitDepth()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getColorType()Lorg/apache/commons/imaging/ImageInfo$ColorType;
    .locals 0

    .line 56
    sget-object p0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->BW:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    return-object p0
.end method

.method public getImageType()Lorg/apache/commons/imaging/ImageFormat;
    .locals 0

    .line 51
    sget-object p0, Lorg/apache/commons/imaging/ImageFormats;->PBM:Lorg/apache/commons/imaging/ImageFormats;

    return-object p0
.end method

.method public getImageTypeDescription()Ljava/lang/String;
    .locals 0

    const-string p0, "PBM: portable bitmap fileformat"

    return-object p0
.end method

.method public getMIMEType()Ljava/lang/String;
    .locals 0

    const-string p0, "image/x-portable-bitmap"

    return-object p0
.end method

.method public getNumComponents()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getRGB(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget v0, p0, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;->bitsInCache:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 78
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    if-gez p1, :cond_0

    .line 80
    new-instance p0, Ljava/io/IOException;

    const-string p1, "PBM: Unexpected EOF"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/16 v0, 0xff

    and-int/2addr p1, v0

    .line 82
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;->bitcache:I

    .line 83
    iget p1, p0, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;->bitsInCache:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;->bitsInCache:I

    .line 86
    :cond_1
    iget p1, p0, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;->bitcache:I

    shr-int/lit8 p1, p1, 0x7

    and-int/2addr p1, v1

    .line 87
    iget v0, p0, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;->bitcache:I

    shl-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;->bitcache:I

    .line 88
    iget v0, p0, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;->bitsInCache:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;->bitsInCache:I

    if-nez p1, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    if-ne p1, v1, :cond_3

    const/high16 p0, -0x1000000

    return p0

    .line 96
    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PBM: bad bit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRGB(Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/high16 p0, -0x1000000

    return p0

    :cond_0
    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    const/4 p0, -0x1

    return p0

    .line 108
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PBM: bad bit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasAlpha()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected newline()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;->bitcache:I

    .line 72
    iput v0, p0, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;->bitsInCache:I

    return-void
.end method

.class Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;
.super Lorg/apache/commons/imaging/formats/pnm/FileInfo;
.source "PgmFileInfo.java"


# instance fields
.field private final bytesPerSample:I

.field private final max:I

.field private final scale:F


# direct methods
.method public constructor <init>(IIZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;-><init>(IIZ)V

    if-gtz p4, :cond_0

    .line 35
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PGM maxVal "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is out of range [1;65535]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/16 p1, 0xff

    if-gt p4, p1, :cond_1

    const/high16 p1, 0x437f0000    # 255.0f

    .line 38
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;->scale:F

    const/4 p1, 0x1

    .line 39
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;->bytesPerSample:I

    goto :goto_0

    :cond_1
    const p1, 0xffff

    if-gt p4, p1, :cond_2

    const p1, 0x477fff00    # 65535.0f

    .line 41
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;->scale:F

    const/4 p1, 0x2

    .line 42
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;->bytesPerSample:I

    .line 47
    :goto_0
    iput p4, p0, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;->max:I

    return-void

    .line 44
    :cond_2
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PGM maxVal "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is out of range [1;65535]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getBitDepth()I
    .locals 0

    .line 62
    iget p0, p0, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;->max:I

    return p0
.end method

.method public getColorType()Lorg/apache/commons/imaging/ImageInfo$ColorType;
    .locals 0

    .line 82
    sget-object p0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->GRAYSCALE:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    return-object p0
.end method

.method public getImageType()Lorg/apache/commons/imaging/ImageFormat;
    .locals 0

    .line 67
    sget-object p0, Lorg/apache/commons/imaging/ImageFormats;->PGM:Lorg/apache/commons/imaging/ImageFormats;

    return-object p0
.end method

.method public getImageTypeDescription()Ljava/lang/String;
    .locals 0

    const-string p0, "PGM: portable graymap file format"

    return-object p0
.end method

.method public getMIMEType()Ljava/lang/String;
    .locals 0

    const-string p0, "image/x-portable-graymap"

    return-object p0
.end method

.method public getNumComponents()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getRGB(Ljava/io/InputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget v0, p0, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;->bytesPerSample:I

    invoke-static {p1, v0}, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;->readSample(Ljava/io/InputStream;I)I

    move-result p1

    .line 89
    iget v0, p0, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;->scale:F

    iget p0, p0, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;->max:I

    invoke-static {p1, v0, p0}, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;->scaleSample(IFI)I

    move-result p0

    const/16 p1, 0xff

    and-int/2addr p0, p1

    shl-int/lit8 p1, p0, 0x10

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    shl-int/lit8 v0, p0, 0x8

    or-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x0

    or-int/2addr p0, p1

    return p0
.end method

.method public getRGB(Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 103
    iget v0, p0, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;->scale:F

    iget p0, p0, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;->max:I

    invoke-static {p1, v0, p0}, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;->scaleSample(IFI)I

    move-result p0

    const/16 p1, 0xff

    and-int/2addr p0, p1

    shl-int/lit8 p1, p0, 0x10

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    shl-int/lit8 v0, p0, 0x8

    or-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x0

    or-int/2addr p0, p1

    return p0
.end method

.method public hasAlpha()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

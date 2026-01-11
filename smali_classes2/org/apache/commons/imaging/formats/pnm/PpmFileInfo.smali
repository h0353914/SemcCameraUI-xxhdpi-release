.class Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;
.super Lorg/apache/commons/imaging/formats/pnm/FileInfo;
.source "PpmFileInfo.java"


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

    .line 34
    const-string p1, " is out of range [1;65535]"

    const-string p2, "PPM maxVal "

    if-lez p4, :cond_2

    const/16 p3, 0xff

    if-gt p4, p3, :cond_0

    const/high16 p1, 0x437f0000    # 255.0f

    .line 37
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scale:F

    const/4 p1, 0x1

    .line 38
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->bytesPerSample:I

    goto :goto_0

    :cond_0
    const p3, 0xffff

    if-gt p4, p3, :cond_1

    const p1, 0x477fff00    # 65535.0f

    .line 40
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scale:F

    const/4 p1, 0x2

    .line 41
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->bytesPerSample:I

    .line 45
    :goto_0
    iput p4, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->max:I

    return-void

    .line 43
    :cond_1
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    :cond_2
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getBitDepth()I
    .locals 0

    .line 60
    iget p0, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->max:I

    return p0
.end method

.method public getColorType()Lorg/apache/commons/imaging/ImageInfo$ColorType;
    .locals 0

    .line 80
    sget-object p0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    return-object p0
.end method

.method public getImageType()Lorg/apache/commons/imaging/ImageFormat;
    .locals 0

    .line 65
    sget-object p0, Lorg/apache/commons/imaging/ImageFormats;->PPM:Lorg/apache/commons/imaging/ImageFormats;

    return-object p0
.end method

.method public getImageTypeDescription()Ljava/lang/String;
    .locals 0

    .line 70
    const-string p0, "PPM: portable pixmap file format"

    return-object p0
.end method

.method public getMIMEType()Ljava/lang/String;
    .locals 0

    .line 75
    const-string p0, "image/x-portable-pixmap"

    return-object p0
.end method

.method public getNumComponents()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getRGB(Ljava/io/InputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget v0, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->bytesPerSample:I

    invoke-static {p1, v0}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->readSample(Ljava/io/InputStream;I)I

    move-result v0

    .line 86
    iget v1, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->bytesPerSample:I

    invoke-static {p1, v1}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->readSample(Ljava/io/InputStream;I)I

    move-result v1

    .line 87
    iget v2, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->bytesPerSample:I

    invoke-static {p1, v2}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->readSample(Ljava/io/InputStream;I)I

    move-result p1

    .line 89
    iget v2, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scale:F

    iget v3, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->max:I

    invoke-static {v0, v2, v3}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scaleSample(IFI)I

    move-result v0

    .line 90
    iget v2, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scale:F

    iget v3, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->max:I

    invoke-static {v1, v2, v3}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scaleSample(IFI)I

    move-result v1

    .line 91
    iget v2, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scale:F

    iget p0, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->max:I

    invoke-static {p1, v2, p0}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scaleSample(IFI)I

    move-result p0

    and-int/lit16 p1, v0, 0xff

    shl-int/lit8 p1, p1, 0x10

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    and-int/lit16 v0, v1, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method public getRGB(Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 103
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 104
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 106
    iget v2, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scale:F

    iget v3, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->max:I

    invoke-static {v0, v2, v3}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scaleSample(IFI)I

    move-result v0

    .line 107
    iget v2, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scale:F

    iget v3, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->max:I

    invoke-static {v1, v2, v3}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scaleSample(IFI)I

    move-result v1

    .line 108
    iget v2, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scale:F

    iget p0, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->max:I

    invoke-static {p1, v2, p0}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scaleSample(IFI)I

    move-result p0

    and-int/lit16 p1, v0, 0xff

    shl-int/lit8 p1, p1, 0x10

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    and-int/lit16 v0, v1, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method public hasAlpha()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

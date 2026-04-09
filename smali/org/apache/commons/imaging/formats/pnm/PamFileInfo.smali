.class Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;
.super Lorg/apache/commons/imaging/formats/pnm/FileInfo;
.source "PamFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;,
        Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;,
        Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;
    }
.end annotation


# instance fields
.field private final bytesPerSample:I

.field private final depth:I

.field private final hasAlpha:Z

.field private final maxval:I

.field private final scale:F

.field private final tupleReader:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;


# direct methods
.method constructor <init>(IIIILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;-><init>(IIZ)V

    .line 38
    iput p3, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->depth:I

    .line 39
    iput p4, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->maxval:I

    if-gtz p4, :cond_0

    .line 41
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PAM maxVal "

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

    .line 44
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->scale:F

    .line 45
    iput v0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->bytesPerSample:I

    goto :goto_0

    :cond_1
    const p1, 0xffff

    if-gt p4, p1, :cond_8

    const p1, 0x477fff00    # 65535.0f

    .line 47
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->scale:F

    const/4 p1, 0x2

    .line 48
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->bytesPerSample:I

    :goto_0
    const-string p1, "_ALPHA"

    .line 54
    invoke-virtual {p5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->hasAlpha:Z

    const-string p1, "BLACKANDWHITE"

    .line 55
    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "BLACKANDWHITE_ALPHA"

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_3

    :cond_2
    const-string p1, "GRAYSCALE"

    .line 57
    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "GRAYSCALE_ALPHA"

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const-string p1, "RGB"

    .line 59
    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "RGB_ALPHA"

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 62
    :cond_4
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown PAM tupletype \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 60
    :cond_5
    :goto_1
    new-instance p1, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;-><init>(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$1;)V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->tupleReader:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;

    goto :goto_4

    .line 58
    :cond_6
    :goto_2
    new-instance p1, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;

    sget-object p2, Lorg/apache/commons/imaging/ImageInfo$ColorType;->GRAYSCALE:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    invoke-direct {p1, p0, p2}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;-><init>(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;Lorg/apache/commons/imaging/ImageInfo$ColorType;)V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->tupleReader:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;

    goto :goto_4

    .line 56
    :cond_7
    :goto_3
    new-instance p1, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;

    sget-object p2, Lorg/apache/commons/imaging/ImageInfo$ColorType;->BW:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    invoke-direct {p1, p0, p2}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;-><init>(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;Lorg/apache/commons/imaging/ImageInfo$ColorType;)V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->tupleReader:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;

    :goto_4
    return-void

    .line 50
    :cond_8
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PAM maxVal "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is out of range [1;65535]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$200(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)I
    .locals 0

    .line 28
    iget p0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->bytesPerSample:I

    return p0
.end method

.method static synthetic access$300(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)F
    .locals 0

    .line 28
    iget p0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->scale:F

    return p0
.end method

.method static synthetic access$400(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)I
    .locals 0

    .line 28
    iget p0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->maxval:I

    return p0
.end method

.method static synthetic access$500(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->hasAlpha:Z

    return p0
.end method


# virtual methods
.method public getBitDepth()I
    .locals 0

    .line 78
    iget p0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->maxval:I

    return p0
.end method

.method public getColorType()Lorg/apache/commons/imaging/ImageInfo$ColorType;
    .locals 0

    .line 98
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->tupleReader:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;->getColorType()Lorg/apache/commons/imaging/ImageInfo$ColorType;

    move-result-object p0

    return-object p0
.end method

.method public getImageType()Lorg/apache/commons/imaging/ImageFormat;
    .locals 0

    .line 83
    sget-object p0, Lorg/apache/commons/imaging/ImageFormats;->PAM:Lorg/apache/commons/imaging/ImageFormats;

    return-object p0
.end method

.method public getImageTypeDescription()Ljava/lang/String;
    .locals 0

    const-string p0, "PAM: portable arbitrary map file format"

    return-object p0
.end method

.method public getMIMEType()Ljava/lang/String;
    .locals 0

    const-string p0, "image/x-portable-arbitrary-map"

    return-object p0
.end method

.method public getNumComponents()I
    .locals 0

    .line 73
    iget p0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->depth:I

    return p0
.end method

.method public getRGB(Ljava/io/InputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->tupleReader:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;->getRGB(Ljava/io/InputStream;)I

    move-result p0

    return p0
.end method

.method public getRGB(Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "PAM files are only ever binary"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasAlpha()Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->hasAlpha:Z

    return p0
.end method

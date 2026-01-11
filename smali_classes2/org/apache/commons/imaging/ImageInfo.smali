.class public Lorg/apache/commons/imaging/ImageInfo;
.super Ljava/lang/Object;
.source "ImageInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;,
        Lorg/apache/commons/imaging/ImageInfo$ColorType;
    }
.end annotation


# instance fields
.field private final bitsPerPixel:I

.field private final colorType:Lorg/apache/commons/imaging/ImageInfo$ColorType;

.field private final comments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final compressionAlgorithm:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field private final format:Lorg/apache/commons/imaging/ImageFormat;

.field private final formatDetails:Ljava/lang/String;

.field private final formatName:Ljava/lang/String;

.field private final height:I

.field private final mimeType:Ljava/lang/String;

.field private final numberOfImages:I

.field private final physicalHeightDpi:I

.field private final physicalHeightInch:F

.field private final physicalWidthDpi:I

.field private final physicalWidthInch:F

.field private final progressive:Z

.field private final transparent:Z

.field private final usesPalette:Z

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/commons/imaging/ImageFormat;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "IIFIFIZZZ",
            "Lorg/apache/commons/imaging/ImageInfo$ColorType;",
            "Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 111
    iput-object v1, v0, Lorg/apache/commons/imaging/ImageInfo;->formatDetails:Ljava/lang/String;

    move v1, p2

    .line 113
    iput v1, v0, Lorg/apache/commons/imaging/ImageInfo;->bitsPerPixel:I

    move-object v1, p3

    .line 114
    iput-object v1, v0, Lorg/apache/commons/imaging/ImageInfo;->comments:Ljava/util/List;

    move-object v1, p4

    .line 116
    iput-object v1, v0, Lorg/apache/commons/imaging/ImageInfo;->format:Lorg/apache/commons/imaging/ImageFormat;

    move-object v1, p5

    .line 117
    iput-object v1, v0, Lorg/apache/commons/imaging/ImageInfo;->formatName:Ljava/lang/String;

    move v1, p6

    .line 118
    iput v1, v0, Lorg/apache/commons/imaging/ImageInfo;->height:I

    move-object v1, p7

    .line 119
    iput-object v1, v0, Lorg/apache/commons/imaging/ImageInfo;->mimeType:Ljava/lang/String;

    move v1, p8

    .line 121
    iput v1, v0, Lorg/apache/commons/imaging/ImageInfo;->numberOfImages:I

    move v1, p9

    .line 122
    iput v1, v0, Lorg/apache/commons/imaging/ImageInfo;->physicalHeightDpi:I

    move v1, p10

    .line 123
    iput v1, v0, Lorg/apache/commons/imaging/ImageInfo;->physicalHeightInch:F

    move v1, p11

    .line 124
    iput v1, v0, Lorg/apache/commons/imaging/ImageInfo;->physicalWidthDpi:I

    move v1, p12

    .line 125
    iput v1, v0, Lorg/apache/commons/imaging/ImageInfo;->physicalWidthInch:F

    move v1, p13

    .line 126
    iput v1, v0, Lorg/apache/commons/imaging/ImageInfo;->width:I

    move/from16 v1, p14

    .line 127
    iput-boolean v1, v0, Lorg/apache/commons/imaging/ImageInfo;->progressive:Z

    move/from16 v1, p15

    .line 129
    iput-boolean v1, v0, Lorg/apache/commons/imaging/ImageInfo;->transparent:Z

    move/from16 v1, p16

    .line 130
    iput-boolean v1, v0, Lorg/apache/commons/imaging/ImageInfo;->usesPalette:Z

    move-object/from16 v1, p17

    .line 132
    iput-object v1, v0, Lorg/apache/commons/imaging/ImageInfo;->colorType:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    move-object/from16 v1, p18

    .line 133
    iput-object v1, v0, Lorg/apache/commons/imaging/ImageInfo;->compressionAlgorithm:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 1

    .line 277
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/ImageInfo;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method public getBitsPerPixel()I
    .locals 0

    .line 140
    iget p0, p0, Lorg/apache/commons/imaging/ImageInfo;->bitsPerPixel:I

    return p0
.end method

.method public getColorType()Lorg/apache/commons/imaging/ImageInfo$ColorType;
    .locals 0

    .line 273
    iget-object p0, p0, Lorg/apache/commons/imaging/ImageInfo;->colorType:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    return-object p0
.end method

.method public getComments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/apache/commons/imaging/ImageInfo;->comments:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCompressionAlgorithm()Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;
    .locals 0

    .line 351
    iget-object p0, p0, Lorg/apache/commons/imaging/ImageInfo;->compressionAlgorithm:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    return-object p0
.end method

.method public getFormat()Lorg/apache/commons/imaging/ImageFormat;
    .locals 0

    .line 161
    iget-object p0, p0, Lorg/apache/commons/imaging/ImageInfo;->format:Lorg/apache/commons/imaging/ImageFormat;

    return-object p0
.end method

.method public getFormatDetails()Ljava/lang/String;
    .locals 0

    .line 330
    iget-object p0, p0, Lorg/apache/commons/imaging/ImageInfo;->formatDetails:Ljava/lang/String;

    return-object p0
.end method

.method public getFormatName()Ljava/lang/String;
    .locals 0

    .line 170
    iget-object p0, p0, Lorg/apache/commons/imaging/ImageInfo;->formatName:Ljava/lang/String;

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    .line 179
    iget p0, p0, Lorg/apache/commons/imaging/ImageInfo;->height:I

    return p0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 0

    .line 188
    iget-object p0, p0, Lorg/apache/commons/imaging/ImageInfo;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public getNumberOfImages()I
    .locals 0

    .line 198
    iget p0, p0, Lorg/apache/commons/imaging/ImageInfo;->numberOfImages:I

    return p0
.end method

.method public getPhysicalHeightDpi()I
    .locals 0

    .line 211
    iget p0, p0, Lorg/apache/commons/imaging/ImageInfo;->physicalHeightDpi:I

    return p0
.end method

.method public getPhysicalHeightInch()F
    .locals 0

    .line 224
    iget p0, p0, Lorg/apache/commons/imaging/ImageInfo;->physicalHeightInch:F

    return p0
.end method

.method public getPhysicalWidthDpi()I
    .locals 0

    .line 237
    iget p0, p0, Lorg/apache/commons/imaging/ImageInfo;->physicalWidthDpi:I

    return p0
.end method

.method public getPhysicalWidthInch()F
    .locals 0

    .line 250
    iget p0, p0, Lorg/apache/commons/imaging/ImageInfo;->physicalWidthInch:F

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 259
    iget p0, p0, Lorg/apache/commons/imaging/ImageInfo;->width:I

    return p0
.end method

.method public isProgressive()Z
    .locals 0

    .line 266
    iget-boolean p0, p0, Lorg/apache/commons/imaging/ImageInfo;->progressive:Z

    return p0
.end method

.method public isTransparent()Z
    .locals 0

    .line 337
    iget-boolean p0, p0, Lorg/apache/commons/imaging/ImageInfo;->transparent:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 283
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 284
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 286
    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/imaging/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 289
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 291
    :catch_0
    const-string p0, "Image Data: Error"

    return-object p0
.end method

.method public toString(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    .line 296
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Format Details: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/commons/imaging/ImageInfo;->formatDetails:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Bits Per Pixel: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/commons/imaging/ImageInfo;->bitsPerPixel:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Comments: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/commons/imaging/ImageInfo;->comments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 300
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/ImageInfo;->comments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 301
    iget-object v0, p0, Lorg/apache/commons/imaging/ImageInfo;->comments:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 305
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Format: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/commons/imaging/ImageInfo;->format:Lorg/apache/commons/imaging/ImageFormat;

    invoke-interface {v0}, Lorg/apache/commons/imaging/ImageFormat;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Format Name: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/commons/imaging/ImageInfo;->formatName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Compression Algorithm: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/commons/imaging/ImageInfo;->compressionAlgorithm:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Height: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/commons/imaging/ImageInfo;->height:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "MimeType: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/commons/imaging/ImageInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Number Of Images: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/commons/imaging/ImageInfo;->numberOfImages:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 311
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Physical Height Dpi: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/commons/imaging/ImageInfo;->physicalHeightDpi:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Physical Height Inch: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/commons/imaging/ImageInfo;->physicalHeightInch:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Physical Width Dpi: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/commons/imaging/ImageInfo;->physicalWidthDpi:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Physical Width Inch: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/commons/imaging/ImageInfo;->physicalWidthInch:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Width: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/commons/imaging/ImageInfo;->width:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Is Progressive: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/apache/commons/imaging/ImageInfo;->progressive:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Is Transparent: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/apache/commons/imaging/ImageInfo;->transparent:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Color Type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/commons/imaging/ImageInfo;->colorType:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/ImageInfo$ColorType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Uses Palette: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lorg/apache/commons/imaging/ImageInfo;->usesPalette:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public usesPalette()Z
    .locals 0

    .line 344
    iget-boolean p0, p0, Lorg/apache/commons/imaging/ImageInfo;->usesPalette:Z

    return p0
.end method

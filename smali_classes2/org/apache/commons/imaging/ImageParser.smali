.class public abstract Lorg/apache/commons/imaging/ImageParser;
.super Lorg/apache/commons/imaging/common/BinaryFileParser;
.source "ImageParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;-><init>()V

    return-void
.end method

.method public static getAllImageParsers()[Lorg/apache/commons/imaging/ImageParser;
    .locals 3

    const/16 v0, 0xf

    .line 107
    new-array v0, v0, [Lorg/apache/commons/imaging/ImageParser;

    new-instance v1, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/dcx/DcxImageParser;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/dcx/DcxImageParser;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/gif/GifImageParser;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;-><init>()V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/png/PngImageParser;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/png/PngImageParser;-><init>()V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;-><init>()V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;-><init>()V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/rgbe/RgbeImageParser;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/rgbe/RgbeImageParser;-><init>()V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;-><init>()V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser;-><init>()V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser;-><init>()V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;-><init>()V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static isStrict(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 983
    const-string v0, "STRICT"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 986
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected final canAcceptExtension(Ljava/io/File;)Z
    .locals 0

    .line 918
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/ImageParser;->canAcceptExtension(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected final canAcceptExtension(Ljava/lang/String;)Z
    .locals 6

    .line 929
    invoke-virtual {p0}, Lorg/apache/commons/imaging/ImageParser;->getAcceptedExtensions()[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x2e

    .line 934
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_2

    .line 936
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 937
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 939
    array-length v1, p0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    .line 940
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 941
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public canAcceptType(Lorg/apache/commons/imaging/ImageFormat;)Z
    .locals 4

    .line 900
    invoke-virtual {p0}, Lorg/apache/commons/imaging/ImageParser;->getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;

    move-result-object p0

    .line 902
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 903
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final dumpImageFile(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 811
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/ImageParser;->canAcceptExtension(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 815
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/ImageParser;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 816
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/imaging/ImageParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 819
    :cond_1
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/ImageParser;->dumpImageFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final dumpImageFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 835
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 836
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 838
    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/imaging/ImageParser;->dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z

    .line 840
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 842
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final dumpImageFile([B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 795
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/ImageParser;->dumpImageFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method protected abstract getAcceptedExtensions()[Ljava/lang/String;
.end method

.method protected abstract getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
.end method

.method public final getAllBufferedImages(Ljava/io/File;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/awt/image/BufferedImage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/ImageParser;->canAcceptExtension(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 490
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/ImageParser;->getAllBufferedImages(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllBufferedImages(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            ")",
            "Ljava/util/List<",
            "Ljava/awt/image/BufferedImage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 448
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/ImageParser;->getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    .line 450
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 453
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final getAllBufferedImages([B)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/awt/image/BufferedImage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/ImageParser;->getAllBufferedImages(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getBufferedImage(Ljava/io/File;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/image/BufferedImage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 548
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/ImageParser;->canAcceptExtension(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 552
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/imaging/ImageParser;->getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public abstract getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/image/BufferedImage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getBufferedImage([BLjava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/image/BufferedImage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/imaging/ImageParser;->getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method protected getBufferedImageFactory(Ljava/util/Map;)Lorg/apache/commons/imaging/common/BufferedImageFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/common/BufferedImageFactory;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 959
    new-instance p0, Lorg/apache/commons/imaging/common/SimpleBufferedImageFactory;

    invoke-direct {p0}, Lorg/apache/commons/imaging/common/SimpleBufferedImageFactory;-><init>()V

    return-object p0

    .line 962
    :cond_0
    const-string p0, "BUFFERED_IMAGE_FACTORY"

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/common/BufferedImageFactory;

    if-eqz p0, :cond_1

    return-object p0

    .line 969
    :cond_1
    new-instance p0, Lorg/apache/commons/imaging/common/SimpleBufferedImageFactory;

    invoke-direct {p0}, Lorg/apache/commons/imaging/common/SimpleBufferedImageFactory;-><init>()V

    return-object p0
.end method

.method public abstract getDefaultExtension()Ljava/lang/String;
.end method

.method public final getFormatCompliance(Ljava/io/File;)Lorg/apache/commons/imaging/FormatCompliance;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/ImageParser;->canAcceptExtension(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 432
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/ImageParser;->getFormatCompliance(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object p0

    return-object p0
.end method

.method public getFormatCompliance(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/FormatCompliance;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFormatCompliance([B)Lorg/apache/commons/imaging/FormatCompliance;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/ImageParser;->getFormatCompliance(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object p0

    return-object p0
.end method

.method public final getICCProfileBytes(Ljava/io/File;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 736
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/ImageParser;->getICCProfileBytes(Ljava/io/File;Ljava/util/Map;)[B

    move-result-object p0

    return-object p0
.end method

.method public final getICCProfileBytes(Ljava/io/File;Ljava/util/Map;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 755
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/ImageParser;->canAcceptExtension(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 759
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/ImageParser;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 760
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/imaging/ImageParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 763
    :cond_1
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/imaging/ImageParser;->getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)[B

    move-result-object p0

    return-object p0
.end method

.method public abstract getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getICCProfileBytes([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 701
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/ImageParser;->getICCProfileBytes([BLjava/util/Map;)[B

    move-result-object p0

    return-object p0
.end method

.method public final getICCProfileBytes([BLjava/util/Map;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 720
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/imaging/ImageParser;->getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)[B

    move-result-object p0

    return-object p0
.end method

.method public final getImageInfo(Ljava/io/File;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/ImageInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/ImageParser;->canAcceptExtension(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 386
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/imaging/ImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 324
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/ImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object p0

    return-object p0
.end method

.method public abstract getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/ImageInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getImageInfo([BLjava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/ImageInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/imaging/ImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getImageSize(Ljava/io/File;)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 628
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/ImageParser;->getImageSize(Ljava/io/File;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object p0

    return-object p0
.end method

.method public final getImageSize(Ljava/io/File;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/Dimension;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 646
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/ImageParser;->canAcceptExtension(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 650
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/imaging/ImageParser;->getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object p0

    return-object p0
.end method

.method public abstract getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/Dimension;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getImageSize([B)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 597
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/ImageParser;->getImageSize([BLjava/util/Map;)Ljava/awt/Dimension;

    move-result-object p0

    return-object p0
.end method

.method public final getImageSize([BLjava/util/Map;)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/Dimension;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 614
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/imaging/ImageParser;->getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object p0

    return-object p0
.end method

.method public final getMetadata(Ljava/io/File;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 239
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/ImageParser;->getMetadata(Ljava/io/File;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object p0

    return-object p0
.end method

.method public final getMetadata(Ljava/io/File;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/common/ImageMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Lorg/apache/commons/imaging/ImageParser;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/imaging/ImageParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".getMetadata: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 274
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/ImageParser;->canAcceptExtension(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 278
    :cond_1
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/imaging/ImageParser;->getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object p0

    return-object p0
.end method

.method public final getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/ImageParser;->getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object p0

    return-object p0
.end method

.method public abstract getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/common/ImageMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getMetadata([B)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/ImageParser;->getMetadata([BLjava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object p0

    return-object p0
.end method

.method public final getMetadata([BLjava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/common/ImageMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/imaging/ImageParser;->getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object p0

    return-object p0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 0
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

    .line 580
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 582
    new-instance p1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "This image format ("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/imaging/ImageParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ") cannot be written."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

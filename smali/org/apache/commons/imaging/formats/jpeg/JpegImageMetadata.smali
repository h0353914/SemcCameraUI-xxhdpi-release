.class public Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;
.super Ljava/lang/Object;
.source "JpegImageMetadata.java"

# interfaces
.implements Lorg/apache/commons/imaging/common/ImageMetadata;


# static fields
.field private static final NEWLINE:Ljava/lang/String;


# instance fields
.field private final exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

.field private final photoshop:Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    .line 42
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->NEWLINE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->photoshop:Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;

    .line 47
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 0

    .line 238
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public findEXIFValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;
    .locals 2

    const/4 v0, 0x0

    .line 60
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0

    :catch_0
    return-object v0
.end method

.method public findEXIFValueWithExactMatch(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;
    .locals 2

    const/4 v0, 0x0

    .line 68
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Z)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0

    :catch_0
    return-object v0
.end method

.method public getEXIFThumbnail()Ljava/awt/image/BufferedImage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 134
    :cond_0
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->getDirectories()Ljava/util/List;

    move-result-object p0

    .line 135
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;

    .line 136
    check-cast v0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;

    .line 138
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->getThumbnail()Ljava/awt/image/BufferedImage;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    .line 143
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->getJpegImageData()Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/JpegImageData;->getData()[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/imaging/Imaging;->getBufferedImage([B)Ljava/awt/image/BufferedImage;

    move-result-object v2
    :try_end_0
    .catch Lorg/apache/commons/imaging/ImagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 156
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/JpegImageData;->getData()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 158
    invoke-static {v1}, Ljavax/imageio/ImageIO;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    .line 159
    throw p0

    .line 156
    :catch_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/JpegImageData;->getData()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    :catch_1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/JpegImageData;->getData()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 158
    :goto_0
    invoke-static {v2}, Ljavax/imageio/ImageIO;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_1

    return-object v2

    :cond_3
    return-object v1
.end method

.method public getEXIFThumbnailData()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 102
    :cond_0
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->getDirectories()Ljava/util/List;

    move-result-object p0

    .line 103
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;

    .line 104
    check-cast v0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;

    .line 107
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->getJpegImageData()Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 108
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->getJpegImageData()Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/JpegImageData;->getData()[B

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_3
    return-object v1
.end method

.method public getEXIFThumbnailSize()Ljava/awt/Dimension;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->getEXIFThumbnailData()[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 86
    invoke-static {p0}, Lorg/apache/commons/imaging/Imaging;->getImageSize([B)Ljava/awt/Dimension;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExif()Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    return-object p0
.end method

.method public getItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;",
            ">;"
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 194
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->photoshop:Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;

    if-eqz v1, :cond_1

    .line 195
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->photoshop:Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public getPhotoshop()Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->photoshop:Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;

    return-object p0
.end method

.method public getRawImageData()Lorg/apache/commons/imaging/formats/tiff/TiffImageData;
    .locals 2

    .line 171
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 174
    :cond_0
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->getDirectories()Ljava/util/List;

    move-result-object p0

    .line 175
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;

    .line 176
    check-cast v0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;

    .line 178
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->getTiffImageData()Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_2
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    if-nez v1, :cond_1

    const-string v1, "No Exif metadata."

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "Exif metadata:"

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    sget-object v1, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :goto_0
    sget-object v1, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->photoshop:Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;

    if-nez p1, :cond_2

    const-string p0, "No Photoshop (IPTC) metadata."

    .line 227
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string p1, "Photoshop (IPTC) metadata:"

    .line 229
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    sget-object p1, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->photoshop:Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;

    const-string p1, "\t"

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

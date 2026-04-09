.class public Lcom/sonyericsson/cameracommon/storage/JpegMetadata;
.super Ljava/lang/Object;
.source "JpegMetadata.java"


# instance fields
.field private mMetadata:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

.field private mOutput:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->parse(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->mMetadata:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->parse(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->mMetadata:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    return-void
.end method

.method private checkHasRoot()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 1050
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getOutputSet()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->getRootDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1052
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getOutputSet()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->addRootDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    :cond_0
    return-void
.end method

.method private getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 1005
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getOutputSet()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;

    move-result-object v0

    .line 1007
    iget-object v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->directoryType:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    if-ne v1, v2, :cond_0

    const/4 p1, -0x2

    goto :goto_0

    .line 1010
    :cond_0
    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->directoryType:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->directoryType:I

    .line 1012
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->checkHasRoot()V

    .line 1013
    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->findDirectory(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    if-nez p0, :cond_1

    .line 1015
    new-instance p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    iget-object v1, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->byteOrder:Ljava/nio/ByteOrder;

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;-><init>(ILjava/nio/ByteOrder;)V

    .line 1016
    invoke-virtual {v0, p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->addDirectory(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;)V

    :cond_1
    return-object p0
.end method

.method private getOutputSet()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 1065
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->mOutput:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;

    if-nez v0, :cond_1

    .line 1066
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->mMetadata:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    if-nez v0, :cond_0

    .line 1067
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->mOutput:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;

    goto :goto_0

    .line 1069
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->mMetadata:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->getOutputSet()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->mOutput:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;

    .line 1072
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->mOutput:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;

    return-object p0
.end method

.method private parse(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1084
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 1085
    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;-><init>()V

    .line 1086
    invoke-virtual {v0, p1, p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->getExifMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    move-result-object p0

    return-object p0
.end method

.method private rewrite(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1033
    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;-><init>()V

    .line 1034
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->hasMetadata()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    .line 1036
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getOutputSet()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->updateExifMetadataLossy(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V

    goto :goto_0

    .line 1038
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getOutputSet()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->updateExifMetadataLossless(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V

    goto :goto_0

    .line 1041
    :cond_1
    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->removeExifMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;)V

    :goto_0
    return-void
.end method


# virtual methods
.method varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 313
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;[Ljava/lang/String;)V

    return-void
.end method

.method varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrByte;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 577
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrByte;[Ljava/lang/String;)V

    return-void
.end method

.method varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 590
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;[Ljava/lang/String;)V

    return-void
.end method

.method varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 603
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V

    return-void
.end method

.method varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 301
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;[B)V

    return-void
.end method

.method varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 436
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;[B)V

    return-void
.end method

.method varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;[S)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 449
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;[S)V

    return-void
.end method

.method varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;[D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 423
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;[D)V

    return-void
.end method

.method varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;[F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 411
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;[F)V

    return-void
.end method

.method add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 552
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;Ljava/lang/String;)V

    return-void
.end method

.method varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 337
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;[I)V

    return-void
.end method

.method varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 350
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V

    return-void
.end method

.method varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSByte;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 362
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSByte;[B)V

    return-void
.end method

.method varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLong;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 386
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLong;[I)V

    return-void
.end method

.method varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 399
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V

    return-void
.end method

.method varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;[S)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 374
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;[S)V

    return-void
.end method

.method varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;[S)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 325
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;[S)V

    return-void
.end method

.method varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 475
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;[I)V

    return-void
.end method

.method varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;[S)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 462
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;[S)V

    return-void
.end method

.method varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 501
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;[I)V

    return-void
.end method

.method varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 514
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V

    return-void
.end method

.method varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;[S)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 488
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;[S)V

    return-void
.end method

.method varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 540
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V

    return-void
.end method

.method varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;[S)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 527
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;[S)V

    return-void
.end method

.method add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 564
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;Ljava/lang/String;)V

    return-void
.end method

.method add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 614
    iget-object v0, p1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tagInfo:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method contains(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->mOutput:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 190
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->mOutput:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    move-result-object p0

    if-eqz p0, :cond_1

    :goto_0
    move v2, v1

    goto :goto_1

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->mMetadata:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    if-eqz v0, :cond_1

    .line 192
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->mMetadata:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method getOriginalInputField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->mMetadata:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    if-eqz v0, :cond_0

    .line 174
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->mMetadata:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Z)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method hasMetadata()Z
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->mMetadata:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 154
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->mMetadata:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    invoke-virtual {p0, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findDirectory(I)Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 156
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->mOutput:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method remove(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->mMetadata:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->mOutput:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;

    if-eqz v0, :cond_1

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getOutputSet()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;

    move-result-object p0

    .line 208
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method rewrite(Ljava/io/File;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 247
    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->rewrite(Ljava/io/File;Ljava/io/OutputStream;Z)V

    return-void
.end method

.method rewrite(Ljava/io/File;Ljava/io/OutputStream;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    .line 289
    invoke-direct {p0, v0, p2, p3}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->rewrite(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Z)V

    return-void
.end method

.method rewrite(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 230
    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->rewrite(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    return-void
.end method

.method rewrite(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 268
    invoke-direct {p0, v0, p2, p3}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->rewrite(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Z)V

    return-void
.end method

.method varargs set(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 640
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    .line 641
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 642
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;[Ljava/lang/String;)V

    return-void
.end method

.method varargs set(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrByte;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 946
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    .line 947
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 948
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrByte;[Ljava/lang/String;)V

    return-void
.end method

.method varargs set(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 961
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    .line 962
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 963
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;[Ljava/lang/String;)V

    return-void
.end method

.method varargs set(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 976
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    .line 977
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 978
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V

    return-void
.end method

.method varargs set(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 626
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    .line 627
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 628
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;[B)V

    return-void
.end method

.method varargs set(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 783
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    .line 784
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 785
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;[B)V

    return-void
.end method

.method varargs set(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;[S)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 798
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    .line 799
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 800
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;[S)V

    return-void
.end method

.method varargs set(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;[D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 768
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    .line 769
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 770
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;[D)V

    return-void
.end method

.method varargs set(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;[F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 754
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    .line 755
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 756
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;[F)V

    return-void
.end method

.method set(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 917
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    .line 918
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 919
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;Ljava/lang/String;)V

    return-void
.end method

.method varargs set(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 668
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    .line 669
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 670
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;[I)V

    return-void
.end method

.method varargs set(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 683
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    .line 684
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 685
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V

    return-void
.end method

.method varargs set(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSByte;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 697
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    .line 698
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 699
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSByte;[B)V

    return-void
.end method

.method varargs set(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLong;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 725
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    .line 726
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 727
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLong;[I)V

    return-void
.end method

.method varargs set(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 740
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    .line 741
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 742
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V

    return-void
.end method

.method varargs set(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;[S)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 711
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    .line 712
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 713
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;[S)V

    return-void
.end method

.method varargs set(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;[S)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 654
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    .line 655
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 656
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;[S)V

    return-void
.end method

.method varargs set(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 828
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    .line 829
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 830
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;[I)V

    return-void
.end method

.method varargs set(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;[S)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 813
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    .line 814
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 815
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;[S)V

    return-void
.end method

.method varargs set(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 858
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    .line 859
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 860
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;[I)V

    return-void
.end method

.method varargs set(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 873
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    .line 874
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 875
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V

    return-void
.end method

.method varargs set(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;[S)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 843
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    .line 844
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 845
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;[S)V

    return-void
.end method

.method varargs set(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 903
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    .line 904
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 905
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V

    return-void
.end method

.method varargs set(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;[S)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 888
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    .line 889
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 890
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;[S)V

    return-void
.end method

.method set(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 931
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    .line 932
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 933
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;Ljava/lang/String;)V

    return-void
.end method

.method set(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 988
    iget-object v0, p1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tagInfo:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->getDirectoryForTag(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    .line 989
    iget-object v0, p1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tagInfo:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 990
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

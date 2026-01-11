.class Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ExifOutputStream.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final EXIF_HEADER:I = 0x45786966

.field private static final MAX_EXIF_SIZE:I = 0xffff

.field private static final STATE_FRAME_HEADER:I = 0x1

.field private static final STATE_JPEG_DATA:I = 0x2

.field private static final STATE_SOI:I = 0x0

.field private static final STREAMBUFFER_SIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "ExifOutputStream"

.field private static final TAG_SIZE:S = 0xcs

.field private static final TIFF_BIG_ENDIAN:S = 0x4d4ds

.field private static final TIFF_HEADER:S = 0x2as

.field private static final TIFF_HEADER_SIZE:S = 0x8s

.field private static final TIFF_LITTLE_ENDIAN:S = 0x4949s


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mByteToCopy:I

.field private mByteToSkip:I

.field private mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

.field private final mInterface:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;

.field private mSingleByteArray:[B

.field private mSize:I

.field private mState:I


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;)V
    .locals 2

    .line 88
    new-instance v0, Ljava/io/BufferedOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    .line 78
    iput p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mState:I

    const/4 v0, 0x1

    .line 81
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mSingleByteArray:[B

    const/4 v0, 0x4

    .line 82
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    .line 85
    iput p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mSize:I

    .line 89
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mInterface:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;

    return-void
.end method

.method private calculateAllOffset()I
    .locals 6

    .line 445
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getIfdData(I)Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;

    move-result-object v0

    const/16 v2, 0x8

    .line 446
    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;I)I

    move-result v2

    .line 447
    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->getTag(S)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue(I)Z

    .line 449
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getIfdData(I)Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;

    move-result-object v3

    .line 450
    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;I)I

    move-result v2

    .line 452
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getIfdData(I)Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 454
    sget v5, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->getTag(S)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object v3

    .line 455
    invoke-virtual {v3, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue(I)Z

    .line 456
    invoke-direct {p0, v4, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;I)I

    move-result v2

    .line 459
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getIfdData(I)Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 461
    sget v4, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->getTag(S)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue(I)Z

    .line 462
    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;I)I

    move-result v2

    .line 465
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getIfdData(I)Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 467
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->setOffsetToNextIfd(I)V

    .line 468
    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;I)I

    move-result v2

    .line 472
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 473
    sget v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->getTag(S)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object v0

    .line 474
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue(I)Z

    .line 475
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object p0

    array-length p0, p0

    add-int/2addr v2, p0

    goto :goto_1

    .line 476
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->hasUncompressedStrip()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 477
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getStripCount()I

    move-result v0

    .line 478
    new-array v0, v0, [J

    .line 479
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getStripCount()I

    move-result v4

    if-ge v1, v4, :cond_4

    int-to-long v4, v2

    .line 480
    aput-wide v4, v0, v1

    .line 481
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {v4, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getStrip(I)[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 483
    :cond_4
    sget p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result p0

    invoke-virtual {v3, p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->getTag(S)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue([J)Z

    :cond_5
    :goto_1
    return v2
.end method

.method private calculateOffsetOfIfd(Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;I)I
    .locals 4

    .line 319
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->getTagCount()I

    move-result p0

    mul-int/lit8 p0, p0, 0xc

    add-int/lit8 p0, p0, 0x6

    add-int/2addr p2, p0

    .line 320
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->getAllTags()[Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object p0

    .line 321
    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, p0, v0

    .line 322
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getDataSize()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    .line 323
    invoke-virtual {v1, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setOffset(I)V

    .line 324
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getDataSize()I

    move-result v1

    add-int/2addr p2, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method private createRequiredIfdAndTag()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getIfdData(I)Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;-><init>(I)V

    .line 335
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->addIfdData(Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;)V

    .line 337
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mInterface:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->buildUninitializedTag(I)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object v2

    .line 338
    const-string v3, "No definition for crucial exif tag: "

    if-eqz v2, :cond_10

    .line 342
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->setTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    .line 345
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getIfdData(I)Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;

    move-result-object v2

    if-nez v2, :cond_1

    .line 347
    new-instance v2, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;

    invoke-direct {v2, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;-><init>(I)V

    .line 348
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {v4, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->addIfdData(Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;)V

    .line 352
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getIfdData(I)Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 354
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mInterface:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;

    sget v5, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->buildUninitializedTag(I)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 359
    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->setTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    goto :goto_0

    .line 356
    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 363
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getIfdData(I)Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 365
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mInterface:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;

    sget v4, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 366
    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->buildUninitializedTag(I)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 371
    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->setTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    goto :goto_1

    .line 368
    :cond_4
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 374
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getIfdData(I)Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;

    move-result-object v0

    .line 377
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez v0, :cond_6

    .line 380
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;

    invoke-direct {v0, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;-><init>(I)V

    .line 381
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->addIfdData(Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;)V

    .line 384
    :cond_6
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mInterface:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;

    sget v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 385
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->buildUninitializedTag(I)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 391
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->setTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    .line 392
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mInterface:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;

    sget v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 393
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->buildUninitializedTag(I)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 399
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object p0

    array-length p0, p0

    invoke-virtual {v1, p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue(I)Z

    .line 400
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->setTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    .line 403
    sget p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->removeTag(S)V

    .line 404
    sget p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->removeTag(S)V

    goto/16 :goto_3

    .line 395
    :cond_7
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 387
    :cond_8
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 405
    :cond_9
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->hasUncompressedStrip()Z

    move-result v4

    if-eqz v4, :cond_e

    if-nez v0, :cond_a

    .line 407
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;

    invoke-direct {v0, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;-><init>(I)V

    .line 408
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->addIfdData(Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;)V

    .line 410
    :cond_a
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getStripCount()I

    move-result v2

    .line 411
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mInterface:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;

    sget v5, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->buildUninitializedTag(I)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 416
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mInterface:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;

    sget v6, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 417
    invoke-virtual {v5, v6}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->buildUninitializedTag(I)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 422
    new-array v2, v2, [J

    .line 423
    :goto_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getStripCount()I

    move-result v3

    if-ge v1, v3, :cond_b

    .line 424
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getStrip(I)[B

    move-result-object v3

    array-length v3, v3

    int-to-long v6, v3

    aput-wide v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 426
    :cond_b
    invoke-virtual {v5, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue([J)Z

    .line 427
    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->setTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    .line 428
    invoke-virtual {v0, v5}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->setTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    .line 430
    sget p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->removeTag(S)V

    .line 431
    sget p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 432
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result p0

    .line 431
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->removeTag(S)V

    goto :goto_3

    .line 419
    :cond_c
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 413
    :cond_d
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    if-eqz v0, :cond_f

    .line 435
    sget p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->removeTag(S)V

    .line 436
    sget p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->removeTag(S)V

    .line 437
    sget p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->removeTag(S)V

    .line 438
    sget p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 439
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result p0

    .line 438
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->removeTag(S)V

    :cond_f
    :goto_3
    return-void

    .line 339
    :cond_10
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private requestByteToBuffer(I[BII)I
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr p1, v0

    if-le p4, p1, :cond_0

    move p4, p1

    .line 111
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return p4
.end method

.method private stripNullValueTags(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 253
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getAllTags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    .line 255
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getTagId()S

    move-result v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->isOffsetTag(S)Z

    move-result v2

    if-nez v2, :cond_0

    .line 256
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getTagId()S

    move-result v2

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getIfd()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->removeTag(SI)V

    .line 257
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private writeAllTags(Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getIfdData(I)Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->writeIfd(Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;)V

    .line 275
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getIfdData(I)Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->writeIfd(Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;)V

    .line 276
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getIfdData(I)Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->writeIfd(Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;)V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getIfdData(I)Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 282
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->writeIfd(Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;)V

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getIfdData(I)Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getIfdData(I)Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->writeIfd(Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;)V

    :cond_2
    return-void
.end method

.method private writeExifData()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    if-nez v0, :cond_0

    return-void

    .line 224
    :cond_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->stripNullValueTags(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;)Ljava/util/ArrayList;

    move-result-object v0

    .line 225
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->createRequiredIfdAndTag()V

    .line 226
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->calculateAllOffset()I

    move-result v1

    const/16 v2, 0x8

    add-int/2addr v1, v2

    const v3, 0xffff

    if-gt v1, v3, :cond_3

    .line 230
    new-instance v3, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {v3, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 231
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    const/16 v4, -0x1f

    .line 232
    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeShort(S)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    int-to-short v1, v1

    .line 233
    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeShort(S)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    const v1, 0x45786966

    .line 234
    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeInt(I)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    const/4 v1, 0x0

    .line 235
    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeShort(S)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    .line 236
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v4, :cond_1

    const/16 v1, 0x4d4d

    .line 237
    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeShort(S)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    goto :goto_0

    :cond_1
    const/16 v1, 0x4949

    .line 239
    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeShort(S)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    .line 241
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    const/16 v1, 0x2a

    .line 242
    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeShort(S)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    .line 243
    invoke-virtual {v3, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeInt(I)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    .line 244
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->writeAllTags(Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;)V

    .line 245
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->writeThumbnail(Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;)V

    .line 246
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    .line 247
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->addTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    goto :goto_1

    .line 249
    :cond_2
    iget v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mSize:I

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mSize:I

    return-void

    .line 228
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Exif header is too large (>64Kb)"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private writeIfd(Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->getAllTags()[Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object p0

    .line 293
    array-length v0, p0

    int-to-short v0, v0

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeShort(S)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    .line 294
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v0, :cond_2

    aget-object v4, p0, v2

    .line 295
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getTagId()S

    move-result v5

    invoke-virtual {p2, v5}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeShort(S)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    .line 296
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getDataType()S

    move-result v5

    invoke-virtual {p2, v5}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeShort(S)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    .line 297
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getComponentCount()I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeInt(I)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    .line 301
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getDataSize()I

    move-result v5

    if-le v5, v3, :cond_0

    .line 302
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getOffset()I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeInt(I)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    goto :goto_2

    .line 304
    :cond_0
    invoke-static {v4, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->writeTagValue(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;)V

    .line 305
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getDataSize()I

    move-result v4

    sub-int/2addr v3, v4

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_1

    .line 306
    invoke-virtual {p2, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 310
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->getOffsetToNextIfd()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeInt(I)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    .line 311
    array-length p1, p0

    :goto_3
    if-ge v1, p1, :cond_4

    aget-object v0, p0, v1

    .line 312
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getDataSize()I

    move-result v2

    if-le v2, v3, :cond_3

    .line 313
    invoke-static {v0, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->writeTagValue(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method static writeTagValue(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 510
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getComponentCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 511
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getRational(I)Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeRational(Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 504
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getComponentCount()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 505
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValueAt(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeInt(I)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 521
    :pswitch_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getComponentCount()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_1

    .line 522
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValueAt(I)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeShort(S)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 493
    :pswitch_4
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getStringByte()[B

    move-result-object v0

    .line 494
    array-length v2, v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getComponentCount()I

    move-result p0

    if-ne v2, p0, :cond_0

    .line 495
    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    aput-byte v1, v0, p0

    .line 496
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->write([B)V

    goto :goto_3

    .line 498
    :cond_0
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->write([B)V

    .line 499
    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->write(I)V

    goto :goto_3

    .line 516
    :pswitch_5
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [B

    .line 517
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getBytes([B)V

    .line 518
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->write([B)V

    :cond_1
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private writeThumbnail(Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->write([B)V

    goto :goto_1

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->hasUncompressedStrip()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 267
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getStripCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getStrip(I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->write([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method protected getExifData()Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    return-object p0
.end method

.method protected setExifData(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mExifData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    return-void
.end method

.method size()I
    .locals 0

    .line 529
    iget p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mSize:I

    return p0
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mSingleByteArray:[B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 206
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->write([B)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 214
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    :goto_0
    iget v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mByteToSkip:I

    const/4 v1, 0x2

    if-gtz v0, :cond_0

    iget v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mByteToCopy:I

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mState:I

    if-eq v2, v1, :cond_e

    :cond_0
    if-lez p3, :cond_e

    if-lez v0, :cond_2

    if-le p3, v0, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, p3

    :goto_1
    sub-int/2addr p3, v2

    sub-int/2addr v0, v2

    .line 126
    iput v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mByteToSkip:I

    add-int/2addr p2, v2

    .line 129
    :cond_2
    iget v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mByteToCopy:I

    if-lez v0, :cond_4

    if-le p3, v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, p3

    .line 131
    :goto_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 132
    iget v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mSize:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mSize:I

    sub-int/2addr p3, v0

    .line 134
    iget v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mByteToCopy:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mByteToCopy:I

    add-int/2addr p2, v0

    :cond_4
    if-nez p3, :cond_5

    return-void

    .line 140
    :cond_5
    iget v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    if-eq v0, v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x4

    .line 161
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->requestByteToBuffer(I[BII)I

    move-result v2

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    .line 165
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-ne v2, v1, :cond_7

    .line 166
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const/16 v4, -0x27

    if-ne v2, v4, :cond_7

    .line 168
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 169
    iget v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mSize:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mSize:I

    .line 170
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 173
    :cond_7
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-ge v2, v0, :cond_8

    return-void

    .line 176
    :cond_8
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 177
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const/16 v4, -0x1f

    const v5, 0xffff

    if-ne v2, v4, :cond_9

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v5

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mByteToSkip:I

    .line 180
    iput v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mState:I

    goto :goto_3

    .line 181
    :cond_9
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/JpegHeader;->isSofMarker(S)Z

    move-result v2

    if-nez v2, :cond_a

    .line 182
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 183
    iget v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mSize:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mSize:I

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v5

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mByteToCopy:I

    goto :goto_3

    .line 186
    :cond_a
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 187
    iget v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mSize:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mSize:I

    .line 188
    iput v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mState:I

    .line 190
    :goto_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 142
    :cond_b
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->requestByteToBuffer(I[BII)I

    move-result v0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-ge v0, v1, :cond_c

    return-void

    .line 148
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const/16 v4, -0x28

    if-ne v0, v4, :cond_d

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0, v4, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 153
    iget v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mSize:I

    .line 154
    iput v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mState:I

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 156
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->writeExifData()V

    goto/16 :goto_0

    .line 150
    :cond_d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Not a valid jpeg image, cannot write exif"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    if-lez p3, :cond_f

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 195
    iget p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mSize:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->mSize:I

    :cond_f
    return-void
.end method

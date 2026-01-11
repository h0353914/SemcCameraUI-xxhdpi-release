.class public Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;
.super Ljava/io/FilterOutputStream;
.source "MpoOutputStream.java"


# static fields
.field private static final DC_CROP_INFO:Ljava/lang/String; = "Qualcomm Dual Camera Attributes"

.field private static final DC_CROP_INFO_BYTE_SIZE:I = 0x1f

.field private static final DEBUG:Z = true

.field private static final MAX_EXIF_SIZE:I = 0xffff

.field private static final STATE_FRAME_HEADER:I = 0x1

.field private static final STATE_JPEG_DATA:I = 0x3

.field private static final STATE_SKIP_CROP:I = 0x2

.field private static final STATE_SOI:I = 0x0

.field private static final STREAMBUFFER_SIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "MpoOutputStream"

.field private static final TIFF_BIG_ENDIAN:S = 0x4d4ds

.field private static final TIFF_HEADER:S = 0x2as

.field private static final TIFF_LITTLE_ENDIAN:S = 0x4949s


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mByteToCopy:I

.field private mByteToSkip:I

.field private mCropInfo:Ljava/nio/ByteBuffer;

.field private mCurrentImageData:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

.field private mMpoData:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;

.field private mMpoOffsetStart:I

.field private mSingleByteArray:[B

.field private mSize:I

.field private mSkipCropData:Z

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    .line 65
    new-instance v0, Ljava/io/BufferedOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mState:I

    const/4 v0, 0x1

    .line 57
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mSingleByteArray:[B

    const/4 v0, 0x4

    .line 58
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    .line 59
    sget v0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->DC_CROP_INFO_BYTE_SIZE:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mMpoOffsetStart:I

    .line 61
    iput p1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mSize:I

    .line 62
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mSkipCropData:Z

    return-void
.end method

.method private isDualCamCropInfo()Z
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sget v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->DC_CROP_INFO_BYTE_SIZE:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move v0, v2

    :goto_0
    const/16 v1, 0x1f

    if-ge v0, v1, :cond_2

    .line 99
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    int-to-char v1, v1

    .line 101
    const-string v3, "Qualcomm Dual Camera Attributes"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private requestByteToBuffer(Ljava/nio/ByteBuffer;I[BII)I
    .locals 0

    .line 85
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    sub-int/2addr p2, p0

    if-le p5, p2, :cond_0

    move p5, p2

    .line 87
    :cond_0
    invoke-virtual {p1, p3, p4, p5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return p5
.end method

.method private resetStates()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mState:I

    .line 79
    iput v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mByteToSkip:I

    .line 80
    iput v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mByteToCopy:I

    .line 81
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-void
.end method

.method private updateIndexIfdOffsets(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;I)V
    .locals 3

    .line 317
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mMpoData:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->getPrimaryMpoImage()Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    move-result-object p0

    sget p1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_MP_ENTRY:I

    int-to-short p1, p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->getTag(SI)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    move-result-object p0

    .line 319
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->getMpEntryValue()Ljava/util/List;

    move-result-object p1

    .line 320
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 322
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;

    .line 323
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;->getImageOffset()I

    move-result v2

    sub-int/2addr v2, p2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;->setImageOffset(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->setValue(Ljava/util/List;)Z

    return-void
.end method

.method private writeAllTags(Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mCurrentImageData:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->getIndexIfdData()Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->getTagCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 332
    iget v1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mMpoOffsetStart:I

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->updateIndexIfdOffsets(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;I)V

    .line 333
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->writeIfd(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;)V

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mCurrentImageData:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->getAttribIfdData()Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->getTagCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 338
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->writeIfd(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;)V

    :cond_1
    return-void
.end method

.method private writeIfd(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->getAllTags()[Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    move-result-object p0

    .line 344
    array-length v0, p0

    int-to-short v0, v0

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeShort(S)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    .line 345
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v0, :cond_2

    aget-object v4, p0, v2

    .line 346
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->getTagId()S

    move-result v5

    invoke-virtual {p2, v5}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeShort(S)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    .line 347
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->getDataType()S

    move-result v5

    invoke-virtual {p2, v5}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeShort(S)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    .line 348
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->getComponentCount()I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeInt(I)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    .line 350
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MpoOutputStream"

    filled-new-array {v6, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 352
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->getDataSize()I

    move-result v5

    if-le v5, v3, :cond_0

    .line 353
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->getOffset()I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeInt(I)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    goto :goto_2

    .line 355
    :cond_0
    invoke-static {v4, p2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->writeTagValue(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;)V

    .line 356
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->getDataSize()I

    move-result v4

    sub-int/2addr v3, v4

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_1

    .line 357
    invoke-virtual {p2, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 361
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->getOffsetToNextIfd()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeInt(I)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    .line 362
    array-length p1, p0

    :goto_3
    if-ge v1, p1, :cond_4

    aget-object v0, p0, v1

    .line 363
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->getDataSize()I

    move-result v2

    if-le v2, v3, :cond_3

    .line 364
    invoke-static {v0, p2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->writeTagValue(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method private writeMpoData()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mMpoData:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;

    if-nez v0, :cond_0

    return-void

    .line 285
    :cond_0
    const-string v0, "MpoOutputStream"

    const-string v1, "Writing mpo data..."

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mCurrentImageData:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->calculateAllIfdOffsets()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    const v1, 0xffff

    if-gt v0, v1, :cond_4

    .line 291
    new-instance v1, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 292
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    const/16 v2, -0x1e

    .line 293
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeShort(S)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    int-to-short v2, v0

    .line 294
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeShort(S)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    const v2, 0x4d504600    # 2.18390528E8f

    .line 295
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeInt(I)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    .line 296
    iget v2, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mMpoOffsetStart:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 297
    iget v2, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mSize:I

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mMpoOffsetStart:I

    .line 299
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mCurrentImageData:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_2

    const/16 v2, 0x4d4d

    .line 300
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeShort(S)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    goto :goto_0

    :cond_2
    const/16 v2, 0x4949

    .line 302
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeShort(S)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    .line 304
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mCurrentImageData:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    const/16 v2, 0x2a

    .line 305
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeShort(S)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    const/16 v2, 0xe

    if-le v0, v2, :cond_3

    const/16 v0, 0x8

    .line 307
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeInt(I)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    .line 308
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->writeAllTags(Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 310
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeInt(I)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    .line 312
    :goto_1
    iget v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mSize:I

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mSize:I

    return-void

    .line 289
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Exif header is too large (>64Kb)"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static writeTagValue(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->getDataType()S

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 390
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->getComponentCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 391
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->getRational(I)Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeRational(Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->getComponentCount()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 385
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->getValueAt(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeInt(I)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 401
    :pswitch_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->getComponentCount()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_1

    .line 402
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->getValueAt(I)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->writeShort(S)Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 373
    :pswitch_4
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->getStringByte()[B

    move-result-object v0

    .line 374
    array-length v2, v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->getComponentCount()I

    move-result p0

    if-ne v2, p0, :cond_0

    .line 375
    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    aput-byte v1, v0, p0

    .line 376
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->write([B)V

    goto :goto_3

    .line 378
    :cond_0
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->write([B)V

    .line 379
    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/OrderedDataOutputStream;->write(I)V

    goto :goto_3

    .line 396
    :pswitch_5
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [B

    .line 397
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->getBytes([B)V

    .line 398
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


# virtual methods
.method protected setMpoData(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mMpoData:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;

    .line 74
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->updateAllTags()V

    return-void
.end method

.method size()I
    .locals 0

    .line 409
    iget p0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mSize:I

    return p0
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mSingleByteArray:[B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 269
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->write([B)V

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

    .line 277
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v0, p2

    move/from16 v1, p3

    .line 134
    :goto_0
    iget v2, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mByteToSkip:I

    const/4 v8, 0x3

    if-gtz v2, :cond_0

    iget v3, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mByteToCopy:I

    if-gtz v3, :cond_0

    iget v3, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mState:I

    if-eq v3, v8, :cond_15

    :cond_0
    if-lez v1, :cond_15

    if-lez v2, :cond_2

    if-le v1, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    sub-int/2addr v1, v3

    sub-int/2addr v2, v3

    .line 138
    iput v2, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mByteToSkip:I

    add-int/2addr v0, v3

    .line 141
    :cond_2
    iget v2, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mByteToCopy:I

    if-lez v2, :cond_4

    if-le v1, v2, :cond_3

    goto :goto_2

    :cond_3
    move v2, v1

    .line 143
    :goto_2
    iget-object v3, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v7, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 144
    iget v3, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mSize:I

    add-int/2addr v3, v2

    iput v3, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mSize:I

    sub-int/2addr v1, v2

    .line 146
    iget v3, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mByteToCopy:I

    sub-int/2addr v3, v2

    iput v3, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mByteToCopy:I

    add-int/2addr v0, v2

    :cond_4
    move v9, v0

    move v10, v1

    if-nez v10, :cond_5

    return-void

    .line 152
    :cond_5
    iget v0, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mState:I

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x2

    if-eqz v0, :cond_12

    const/16 v14, -0x27

    const v15, 0xffff

    const/4 v5, 0x4

    if-eq v0, v11, :cond_c

    if-eq v0, v13, :cond_6

    :goto_3
    move v0, v9

    move v1, v10

    goto :goto_0

    .line 203
    :cond_6
    iget-object v1, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move v4, v9

    move v8, v5

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->requestByteToBuffer(Ljava/nio/ByteBuffer;I[BII)I

    move-result v0

    .line 205
    iget-object v1, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-ne v1, v13, :cond_7

    .line 206
    iget-object v1, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    if-ne v1, v14, :cond_7

    .line 208
    iget-object v1, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2, v12, v13}, Ljava/io/OutputStream;->write([BII)V

    .line 209
    iget v1, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mSize:I

    add-int/2addr v1, v13

    iput v1, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mSize:I

    .line 210
    iget-object v1, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 213
    :cond_7
    iget-object v1, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-ge v1, v8, :cond_8

    return-void

    :cond_8
    add-int/2addr v9, v0

    sub-int/2addr v10, v0

    .line 219
    iget-object v0, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 221
    iget-object v0, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 222
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/JpegHeader;->isSofMarker(S)Z

    move-result v0

    if-nez v0, :cond_b

    .line 225
    iget-object v1, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    sget v2, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->DC_CROP_INFO_BYTE_SIZE:I

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move v4, v9

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->requestByteToBuffer(Ljava/nio/ByteBuffer;I[BII)I

    .line 226
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->isDualCamCropInfo()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 228
    iget-object v0, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1, v12, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 229
    iget v0, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mSize:I

    add-int/2addr v0, v8

    iput v0, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mSize:I

    .line 231
    iget-object v0, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v15

    sub-int/2addr v0, v13

    iput v0, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mByteToSkip:I

    :goto_4
    if-lez v0, :cond_9

    .line 233
    iget-object v1, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v12}, Ljava/io/OutputStream;->write(I)V

    .line 234
    iget v1, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mSize:I

    add-int/2addr v1, v11

    iput v1, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_9
    const/4 v0, 0x3

    .line 237
    iput v0, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mState:I

    goto :goto_5

    .line 241
    :cond_a
    iget-object v0, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1, v12, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 242
    iget v0, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mSize:I

    add-int/2addr v0, v8

    iput v0, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mSize:I

    .line 243
    iget-object v0, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v15

    sub-int/2addr v0, v13

    iput v0, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mByteToCopy:I

    .line 245
    :goto_5
    iget-object v0, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_6

    .line 248
    :cond_b
    iget-object v0, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1, v12, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 249
    iget v0, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mSize:I

    add-int/2addr v0, v8

    iput v0, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mSize:I

    const/4 v0, 0x3

    .line 250
    iput v0, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mState:I

    .line 252
    :goto_6
    iget-object v0, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_3

    :cond_c
    move v8, v5

    .line 172
    iget-object v1, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move v4, v9

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->requestByteToBuffer(Ljava/nio/ByteBuffer;I[BII)I

    move-result v0

    .line 174
    iget-object v1, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-ne v1, v13, :cond_d

    .line 175
    iget-object v1, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    if-ne v1, v14, :cond_d

    .line 177
    iget-object v1, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2, v12, v13}, Ljava/io/OutputStream;->write([BII)V

    .line 178
    iget v1, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mSize:I

    add-int/2addr v1, v13

    iput v1, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mSize:I

    .line 179
    iget-object v1, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 182
    :cond_d
    iget-object v1, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-ge v1, v8, :cond_e

    return-void

    .line 185
    :cond_e
    iget-object v1, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 186
    iget-object v1, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const/16 v2, -0x1f

    if-eq v1, v2, :cond_11

    const/16 v2, -0x20

    if-ne v1, v2, :cond_f

    goto :goto_7

    .line 194
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->writeMpoData()V

    .line 195
    iget-boolean v0, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mSkipCropData:Z

    if-eqz v0, :cond_10

    .line 196
    iput v13, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mState:I

    goto :goto_8

    :cond_10
    const/4 v0, 0x3

    .line 198
    iput v0, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mState:I

    goto :goto_8

    .line 188
    :cond_11
    :goto_7
    iget-object v1, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2, v12, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 189
    iget v1, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mSize:I

    add-int/2addr v1, v8

    iput v1, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mSize:I

    .line 190
    iget-object v1, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v15

    sub-int/2addr v1, v13

    iput v1, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mByteToCopy:I

    add-int/2addr v9, v0

    sub-int/2addr v10, v0

    .line 200
    :goto_8
    iget-object v0, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_3

    .line 154
    :cond_12
    iget-object v1, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move v4, v9

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->requestByteToBuffer(Ljava/nio/ByteBuffer;I[BII)I

    move-result v0

    add-int/2addr v9, v0

    sub-int/2addr v10, v0

    .line 157
    iget-object v0, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-ge v0, v13, :cond_13

    return-void

    .line 160
    :cond_13
    iget-object v0, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 161
    iget-object v0, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const/16 v1, -0x28

    if-ne v0, v1, :cond_14

    .line 164
    iget-object v0, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1, v12, v13}, Ljava/io/OutputStream;->write([BII)V

    .line 165
    iget v0, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mSize:I

    add-int/2addr v0, v13

    iput v0, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mSize:I

    .line 166
    iput v11, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mState:I

    .line 167
    iget-object v0, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_3

    .line 162
    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid jpeg image, cannot write exif"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    if-lez v1, :cond_16

    .line 257
    iget-object v2, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v7, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 258
    iget v0, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mSize:I

    add-int/2addr v0, v1

    iput v0, v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mSize:I

    :cond_16
    return-void
.end method

.method writeMpoFile()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mMpoData:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->getPrimaryMpoImage()Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mCurrentImageData:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mMpoData:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 113
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mSkipCropData:Z

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mCurrentImageData:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->getJpegData()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->write([B)V

    .line 116
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->flush()V

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mSkipCropData:Z

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mMpoData:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->getAuxiliaryMpoImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    .line 121
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->resetStates()V

    .line 122
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->mCurrentImageData:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    .line 123
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->getJpegData()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->write([B)V

    .line 124
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->flush()V

    goto :goto_0

    :cond_1
    return-void
.end method

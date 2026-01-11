.class Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$IfdEvent;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ImageEvent;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ExifTagEvent;
    }
.end annotation


# static fields
.field protected static final BIG_ENDIAN_TAG:S = 0x4d4ds

.field protected static final DEFAULT_IFD0_OFFSET:I = 0x8

.field public static final EVENT_COMPRESSED_IMAGE:I = 0x3

.field public static final EVENT_END:I = 0x5

.field public static final EVENT_NEW_TAG:I = 0x1

.field public static final EVENT_START_OF_IFD:I = 0x0

.field public static final EVENT_UNCOMPRESSED_STRIP:I = 0x4

.field public static final EVENT_VALUE_OF_REGISTERED_TAG:I = 0x2

.field protected static final EXIF_HEADER:I = 0x45786966

.field protected static final EXIF_HEADER_TAIL:S = 0x0s

.field protected static final LITTLE_ENDIAN_TAG:S = 0x4949s

.field private static final LOGV:Z = false

.field protected static final OFFSET_SIZE:I = 0x2

.field public static final OPTION_IFD_0:I = 0x1

.field public static final OPTION_IFD_1:I = 0x2

.field public static final OPTION_IFD_EXIF:I = 0x4

.field public static final OPTION_IFD_GPS:I = 0x8

.field public static final OPTION_IFD_INTEROPERABILITY:I = 0x10

.field public static final OPTION_THUMBNAIL:I = 0x20

.field private static final TAG:Ljava/lang/String; = "ExifParser"

.field private static final TAG_EXIF_IFD:S

.field private static final TAG_GPS_IFD:S

.field private static final TAG_INTEROPERABILITY_IFD:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

.field protected static final TAG_SIZE:I = 0xc

.field private static final TAG_STRIP_BYTE_COUNTS:S

.field private static final TAG_STRIP_OFFSETS:S

.field protected static final TIFF_HEADER_TAIL:S = 0x2as

.field private static final US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mApp1End:I

.field private mContainExifData:Z

.field private final mCorrespondingEvent:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDataAboveIfd0:[B

.field private mIfd0Position:I

.field private mIfdStartOffset:I

.field private mIfdType:I

.field private mImageEvent:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ImageEvent;

.field private final mInterface:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;

.field private mJpegSizeTag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

.field private mNeedToParseOffsetsInCurrentIfd:Z

.field private mNumOfTagInIfd:I

.field private mOffsetToApp1EndFromSOF:I

.field private final mOptions:I

.field private mStripCount:I

.field private mStripSizeTag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

.field private mTag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

.field private mTiffStartPosition:I

.field private final mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 142
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    .line 165
    sget v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_EXIF_IFD:I

    .line 166
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->TAG_EXIF_IFD:S

    .line 167
    sget v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->TAG_GPS_IFD:S

    .line 168
    sget v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 169
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->TAG_INTEROPERABILITY_IFD:S

    .line 170
    sget v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 171
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    .line 172
    sget v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 173
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    .line 174
    sget v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    .line 175
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->TAG_STRIP_OFFSETS:S

    .line 176
    sget v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 177
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;ILcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 148
    iput v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mIfdStartOffset:I

    .line 149
    iput v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mNumOfTagInIfd:I

    .line 157
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mContainExifData:Z

    .line 159
    iput v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    .line 179
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    if-eqz p1, :cond_4

    .line 209
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mInterface:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;

    .line 210
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->seekTiffData(Ljava/io/InputStream;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mContainExifData:Z

    .line 211
    new-instance p3, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-direct {p3, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    .line 212
    iput p2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mOptions:I

    .line 213
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mContainExifData:Z

    if-nez p1, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->parseTiffHeader()V

    .line 218
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide p1

    const-wide/32 v1, 0x7fffffff

    cmp-long p3, p1, v1

    if-gtz p3, :cond_3

    long-to-int p3, p1

    .line 222
    iput p3, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mIfd0Position:I

    .line 223
    iput v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mIfdType:I

    .line 224
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 225
    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->registerIfd(IJ)V

    const-wide/16 v0, 0x8

    cmp-long p1, p1, v0

    if-eqz p1, :cond_2

    add-int/lit8 p3, p3, -0x8

    .line 227
    new-array p1, p3, [B

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mDataAboveIfd0:[B

    .line 228
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->read([B)I

    :cond_2
    return-void

    .line 220
    :cond_3
    new-instance p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Invalid offset "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 204
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Null argument inputStream to ExifParser"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkAllowed(II)Z
    .locals 0

    .line 638
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mInterface:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 642
    :cond_0
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->isIfdAllowed(II)Z

    move-result p0

    return p0
.end method

.method private checkOffsetOrImageTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)V
    .locals 5

    .line 587
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getComponentCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 590
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getTagId()S

    move-result v0

    .line 591
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getIfd()I

    move-result v1

    .line 592
    sget-short v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->TAG_EXIF_IFD:S

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v0, v2, :cond_2

    sget v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    .line 593
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 594
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 595
    :cond_1
    invoke-virtual {p1, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValueAt(I)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->registerIfd(IJ)V

    goto/16 :goto_2

    .line 597
    :cond_2
    sget-short v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->TAG_GPS_IFD:S

    if-ne v0, v2, :cond_3

    sget v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x4

    .line 598
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 599
    invoke-virtual {p1, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValueAt(I)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->registerIfd(IJ)V

    goto/16 :goto_2

    .line 601
    :cond_3
    sget-short v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->TAG_INTEROPERABILITY_IFD:S

    if-ne v0, v2, :cond_4

    sget v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 602
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 603
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 604
    invoke-virtual {p1, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v3, v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->registerIfd(IJ)V

    goto/16 :goto_2

    .line 606
    :cond_4
    sget-short v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    if-ne v0, v2, :cond_5

    sget v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 607
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 608
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 609
    invoke-virtual {p1, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->registerCompressedImage(J)V

    goto/16 :goto_2

    .line 611
    :cond_5
    sget-short v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    if-ne v0, v2, :cond_6

    sget v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 612
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 613
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 614
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mJpegSizeTag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    goto :goto_2

    .line 616
    :cond_6
    sget-short v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->TAG_STRIP_OFFSETS:S

    if-ne v0, v2, :cond_9

    sget v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 617
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 618
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 619
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getComponentCount()I

    move-result v0

    if-ge v4, v0, :cond_a

    .line 620
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getDataType()S

    move-result v0

    if-ne v0, v3, :cond_7

    .line 621
    invoke-virtual {p1, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v4, v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->registerUncompressedStrip(IJ)V

    goto :goto_1

    .line 623
    :cond_7
    invoke-virtual {p1, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v4, v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->registerUncompressedStrip(IJ)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 627
    :cond_8
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getOffset()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ExifTagEvent;

    invoke-direct {v1, p1, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ExifTagEvent;-><init>(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;Z)V

    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 630
    :cond_9
    sget-short v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    if-ne v0, v2, :cond_a

    sget v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 631
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->checkAllowed(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 632
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 633
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mStripSizeTag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    :cond_a
    :goto_2
    return-void
.end method

.method private isIfdRequested(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_8

    const/4 v2, 0x2

    if-eq p1, v1, :cond_6

    const/4 v3, 0x4

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    if-eq p1, v3, :cond_0

    return v0

    .line 190
    :cond_0
    iget p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mOptions:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    return v0

    .line 192
    :cond_2
    iget p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mOptions:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    return v0

    .line 188
    :cond_4
    iget p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mOptions:I

    and-int/2addr p0, v3

    if-eqz p0, :cond_5

    move v0, v1

    :cond_5
    return v0

    .line 186
    :cond_6
    iget p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mOptions:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_7

    move v0, v1

    :cond_7
    return v0

    .line 184
    :cond_8
    iget p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mOptions:I

    and-int/2addr p0, v1

    if-eqz p0, :cond_9

    move v0, v1

    :cond_9
    return v0
.end method

.method private isThumbnailRequested()Z
    .locals 0

    .line 198
    iget p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mOptions:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private needToParseOffsetsInCurrentIfd()Z
    .locals 5

    .line 392
    iget v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mIfdType:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    return v1

    .line 401
    :cond_0
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isIfdRequested(I)Z

    move-result p0

    return p0

    .line 398
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isThumbnailRequested()Z

    move-result p0

    return p0

    .line 394
    :cond_2
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 395
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 396
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isIfdRequested(I)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v1, v4

    :cond_4
    return v1
.end method

.method protected static parse(Ljava/io/InputStream;ILcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 241
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;-><init>(Ljava/io/InputStream;ILcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;)V

    return-object v0
.end method

.method protected static parse(Ljava/io/InputStream;Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 254
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;

    const/16 v1, 0x3f

    invoke-direct {v0, p0, v1, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;-><init>(Ljava/io/InputStream;ILcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;)V

    return-object v0
.end method

.method private parseTiffHeader()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 736
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const/16 v1, 0x4949

    .line 737
    const-string v2, "Invalid TIFF header"

    if-ne v1, v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d4d

    if-ne v1, v0, :cond_2

    .line 740
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 745
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readShort()S

    move-result p0

    const/16 v0, 0x2a

    if-ne p0, v0, :cond_1

    return-void

    .line 746
    :cond_1
    new-instance p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 742
    :cond_2
    new-instance p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readTag()Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readShort()S

    move-result v2

    .line 535
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readShort()S

    move-result v0

    .line 536
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v3

    const-wide/32 v7, 0x7fffffff

    cmp-long v1, v3, v7

    if-gtz v1, :cond_5

    .line 542
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->isValidType(S)Z

    move-result v1

    if-nez v1, :cond_0

    .line 543
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Tag %04x: Invalid data type %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifParser"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 544
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->skip(J)J

    const/4 p0, 0x0

    return-object p0

    .line 548
    :cond_0
    new-instance v9, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    long-to-int v10, v3

    iget v5, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mIfdType:I

    const/4 v11, 0x0

    if-eqz v10, :cond_1

    const/4 v1, 0x1

    move v6, v1

    goto :goto_0

    :cond_1
    move v6, v11

    :goto_0
    move-object v1, v9

    move v3, v0

    move v4, v10

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;-><init>(SSIIZ)V

    .line 550
    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getDataSize()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_4

    .line 552
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v1

    cmp-long v3, v1, v7

    if-gtz v3, :cond_3

    .line 559
    iget v3, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mIfd0Position:I

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    const/4 v3, 0x7

    if-ne v0, v3, :cond_2

    .line 560
    new-array v0, v10, [B

    .line 561
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mDataAboveIfd0:[B

    long-to-int v1, v1

    add-int/lit8 v1, v1, -0x8

    invoke-static {p0, v1, v0, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 563
    invoke-virtual {v9, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue([B)Z

    goto :goto_1

    :cond_2
    long-to-int p0, v1

    .line 565
    invoke-virtual {v9, p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setOffset(I)V

    goto :goto_1

    .line 554
    :cond_3
    new-instance p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;

    const-string v0, "offset is larger then Integer.MAX_VALUE"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 568
    :cond_4
    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->hasDefinedCount()Z

    move-result v0

    .line 570
    invoke-virtual {v9, v11}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setHasDefinedCount(Z)V

    .line 572
    invoke-virtual {p0, v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readFullTagValue(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)V

    .line 573
    invoke-virtual {v9, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setHasDefinedCount(Z)V

    .line 574
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    rsub-int/lit8 v1, v1, 0x4

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->skip(J)J

    .line 576
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->getReadByteCount()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-virtual {v9, p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setOffset(I)V

    :goto_1
    return-object v9

    .line 538
    :cond_5
    new-instance p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;

    const-string v0, "Number of component is larger then Integer.MAX_VALUE"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private registerCompressedImage(J)V
    .locals 1

    .line 525
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ImageEvent;

    const/4 v0, 0x3

    invoke-direct {p2, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ImageEvent;-><init>(I)V

    invoke-virtual {p0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private registerIfd(IJ)V
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$IfdEvent;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isIfdRequested(I)Z

    move-result p0

    invoke-direct {p3, p1, p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$IfdEvent;-><init>(IZ)V

    invoke-virtual {v0, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private registerUncompressedStrip(IJ)V
    .locals 1

    .line 529
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ImageEvent;

    const/4 v0, 0x4

    invoke-direct {p3, v0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ImageEvent;-><init>(II)V

    invoke-virtual {p0, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private seekTiffData(Ljava/io/InputStream;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 752
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 753
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readShort()S

    move-result p1

    const/16 v1, -0x28

    if-ne p1, v1, :cond_4

    .line 757
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readShort()S

    move-result p1

    :goto_0
    const/16 v1, -0x27

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    .line 759
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/JpegHeader;->isSofMarker(S)Z

    move-result v1

    if-nez v1, :cond_3

    .line 760
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v1

    const/16 v3, -0x1f

    if-ne p1, v3, :cond_0

    const/16 p1, 0x8

    if-lt v1, p1, :cond_0

    .line 767
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readInt()I

    move-result p1

    .line 768
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readShort()S

    move-result v3

    add-int/lit8 v1, v1, -0x6

    const v4, 0x45786966

    if-ne p1, v4, :cond_0

    if-nez v3, :cond_0

    .line 771
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->getReadByteCount()I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStartPosition:I

    .line 772
    iput v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mApp1End:I

    add-int/2addr p1, v1

    .line 773
    iput p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p1, 0x2

    if-lt v1, p1, :cond_2

    add-int/lit8 v1, v1, -0x2

    int-to-long v3, v1

    .line 778
    invoke-virtual {v0, v3, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->skip(J)J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-eqz p1, :cond_1

    goto :goto_1

    .line 782
    :cond_1
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readShort()S

    move-result p1

    goto :goto_0

    .line 779
    :cond_2
    :goto_1
    const-string p0, "ExifParser"

    const-string p1, "Invalid JPEG format."

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    :cond_3
    return v2

    .line 754
    :cond_4
    new-instance p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;

    const-string p1, "Invalid JPEG format"

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private skipTo(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->skipTo(J)V

    .line 498
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 499
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 0

    .line 912
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    return-object p0
.end method

.method protected getCompressedImageSize()I
    .locals 2

    .line 490
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mJpegSizeTag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 493
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method protected getCurrentIfd()I
    .locals 0

    .line 452
    iget p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mIfdType:I

    return p0
.end method

.method protected getOffsetToExifEndFromSOF()I
    .locals 0

    .line 788
    iget p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    return p0
.end method

.method protected getStripCount()I
    .locals 0

    .line 472
    iget p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mStripCount:I

    return p0
.end method

.method protected getStripIndex()I
    .locals 0

    .line 462
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mImageEvent:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ImageEvent;

    iget p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ImageEvent;->stripIndex:I

    return p0
.end method

.method protected getStripSize()I
    .locals 2

    .line 480
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mStripSizeTag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 482
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method protected getTag()Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;
    .locals 0

    .line 432
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    return-object p0
.end method

.method protected getTagCountInCurrentIfd()I
    .locals 0

    .line 439
    iget p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mNumOfTagInIfd:I

    return p0
.end method

.method protected getTiffStartPosition()I
    .locals 0

    .line 792
    iget p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStartPosition:I

    return p0
.end method

.method protected next()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 272
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mContainExifData:Z

    const/4 v1, 0x5

    if-nez v0, :cond_0

    return v1

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v0

    .line 276
    iget v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mIfdStartOffset:I

    const/4 v3, 0x2

    add-int/2addr v2, v3

    iget v4, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v4, v4, 0xc

    add-int/2addr v2, v4

    const/4 v4, 0x1

    if-ge v0, v2, :cond_3

    .line 278
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readTag()Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    if-nez v0, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->next()I

    move-result p0

    return p0

    .line 282
    :cond_1
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v1, :cond_2

    .line 283
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->checkOffsetOrImageTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)V

    :cond_2
    return v4

    .line 286
    :cond_3
    const-string v5, "ExifParser"

    if-ne v0, v2, :cond_8

    .line 288
    iget v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mIfdType:I

    const-wide/16 v6, 0x0

    if-nez v0, :cond_5

    .line 289
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v8

    .line 290
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_4
    cmp-long v0, v8, v6

    if-eqz v0, :cond_8

    .line 292
    invoke-direct {p0, v4, v8, v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_1

    .line 298
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    const/4 v2, 0x4

    if-lez v0, :cond_6

    .line 299
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    .line 300
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v4

    sub-int/2addr v0, v4

    goto :goto_0

    :cond_6
    move v0, v2

    :goto_0
    if-ge v0, v2, :cond_7

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Invalid size of link to next IFD: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v5, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    goto :goto_1

    .line 305
    :cond_7
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-eqz v0, :cond_8

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid link to next IFD: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v5, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 312
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-eqz v0, :cond_e

    .line 313
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 314
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 316
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->skipTo(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    instance-of v4, v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$IfdEvent;

    if-eqz v4, :cond_b

    .line 323
    check-cast v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$IfdEvent;

    iget v4, v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$IfdEvent;->ifd:I

    iput v4, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mIfdType:I

    .line 324
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v4

    iput v4, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mNumOfTagInIfd:I

    .line 325
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mIfdStartOffset:I

    .line 327
    iget v4, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v4, v4, 0xc

    add-int/2addr v4, v0

    add-int/2addr v4, v3

    iget v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mApp1End:I

    if-le v4, v0, :cond_9

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid size of IFD "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mIfdType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v5, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return v1

    .line 332
    :cond_9
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    .line 333
    iget-boolean v0, v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$IfdEvent;->isRequested:Z

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 336
    :cond_a
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V

    goto :goto_1

    .line 338
    :cond_b
    instance-of v0, v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ImageEvent;

    if-eqz v0, :cond_c

    .line 339
    check-cast v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ImageEvent;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mImageEvent:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ImageEvent;

    .line 340
    iget p0, v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ImageEvent;->type:I

    return p0

    .line 342
    :cond_c
    check-cast v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ExifTagEvent;

    .line 343
    iget-object v0, v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ExifTagEvent;->tag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    .line 344
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v4, 0x7

    if-eq v0, v4, :cond_d

    .line 345
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readFullTagValue(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)V

    .line 346
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->checkOffsetOrImageTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)V

    .line 348
    :cond_d
    iget-boolean v0, v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ExifTagEvent;->isRequested:Z

    if-eqz v0, :cond_8

    return v3

    .line 318
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Failed to skip to data at: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 319
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", the file may be broken."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v5, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    return v1
.end method

.method protected read([B)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 806
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->read([B)I

    move-result p0

    return p0
.end method

.method protected read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 799
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method protected readFullTagValue(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 647
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v1, 0x2

    .line 648
    const-string v2, "ExifParser"

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 650
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getComponentCount()I

    move-result v0

    .line 651
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 652
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v3

    add-int/2addr v3, v0

    if-ge v1, v3, :cond_4

    .line 654
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 655
    instance-of v1, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ImageEvent;

    if-eqz v1, :cond_1

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Thumbnail overlaps value for tag: \n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 659
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid thumbnail offset: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 662
    :cond_1
    instance-of v1, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$IfdEvent;

    const-string v3, " overlaps value for tag: \n"

    if-eqz v1, :cond_2

    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Ifd "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$IfdEvent;

    iget v0, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$IfdEvent;->ifd:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 664
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 663
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    goto :goto_0

    .line 665
    :cond_2
    instance-of v1, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ExifTagEvent;

    if-eqz v1, :cond_3

    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Tag value for tag: \n"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ExifTagEvent;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ExifTagEvent;->tag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    .line 667
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 668
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 666
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 670
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    .line 671
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid size of tag: \n"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " setting count to: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 674
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->forceSetComponentCount(I)V

    .line 679
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    .line 723
    :pswitch_1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v3, v0, [Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    :goto_2
    if-ge v1, v0, :cond_5

    .line 725
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readRational()Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 727
    :cond_5
    invoke-virtual {p1, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue([Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;)Z

    goto/16 :goto_7

    .line 715
    :pswitch_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v3, v0, [I

    :goto_3
    if-ge v1, v0, :cond_6

    .line 717
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readLong()I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 719
    :cond_6
    invoke-virtual {p1, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue([I)Z

    goto :goto_7

    .line 699
    :pswitch_3
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v3, v0, [Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    :goto_4
    if-ge v1, v0, :cond_7

    .line 701
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readUnsignedRational()Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 703
    :cond_7
    invoke-virtual {p1, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue([Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;)Z

    goto :goto_7

    .line 691
    :pswitch_4
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v3, v0, [J

    :goto_5
    if-ge v1, v0, :cond_8

    .line 693
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 695
    :cond_8
    invoke-virtual {p1, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue([J)Z

    goto :goto_7

    .line 707
    :pswitch_5
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v3, v0, [I

    :goto_6
    if-ge v1, v0, :cond_9

    .line 709
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readUnsignedShort()I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 711
    :cond_9
    invoke-virtual {p1, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue([I)Z

    goto :goto_7

    .line 688
    :pswitch_6
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getComponentCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue(Ljava/lang/String;)Z

    goto :goto_7

    .line 682
    :pswitch_7
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [B

    .line 683
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->read([B)I

    .line 684
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue([B)Z

    .line 731
    :goto_7
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_a

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected readLong()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 861
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readInt()I

    move-result p0

    return p0
.end method

.method protected readRational()Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 868
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readLong()I

    move-result v0

    .line 869
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readLong()I

    move-result p0

    .line 870
    new-instance v1, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    int-to-long v2, v0

    int-to-long v4, p0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;-><init>(JJ)V

    return-object v1
.end method

.method protected readString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 815
    sget-object v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p1, :cond_0

    .line 825
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 827
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method protected readUnsignedLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 844
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readLong()I

    move-result p0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected readUnsignedRational()Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 852
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 853
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v2

    .line 854
    new-instance p0, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;-><init>(JJ)V

    return-object p0
.end method

.method protected readUnsignedShort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 836
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readShort()S

    move-result p0

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method protected registerForTagValue(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)V
    .locals 3

    .line 513
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getOffset()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 514
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getOffset()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ExifTagEvent;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ExifTagEvent;-><init>(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;Z)V

    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected skipRemainingTagsInCurrentIfd()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 364
    iget v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mIfdStartOffset:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    .line 365
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    if-le v1, v0, :cond_0

    return-void

    .line 369
    :cond_0
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v2, :cond_2

    :goto_0
    if-ge v1, v0, :cond_3

    .line 371
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readTag()Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    add-int/lit8 v1, v1, 0xc

    if-nez v2, :cond_1

    goto :goto_0

    .line 376
    :cond_1
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->checkOffsetOrImageTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)V

    goto :goto_0

    .line 379
    :cond_2
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->skipTo(I)V

    .line 381
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 383
    iget v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mIfdType:I

    if-nez v2, :cond_5

    const/4 v2, 0x1

    .line 384
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isThumbnailRequested()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_5

    .line 386
    invoke-direct {p0, v2, v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->registerIfd(IJ)V

    :cond_5
    return-void
.end method

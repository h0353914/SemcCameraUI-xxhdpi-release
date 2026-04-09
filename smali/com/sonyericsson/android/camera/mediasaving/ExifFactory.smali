.class public Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;
.super Ljava/lang/Object;
.source "ExifFactory.java"


# static fields
.field private static APP1_HEADER:[B = null

.field private static APP1_LENGTH:I = 0x0

.field private static EXIF_IFD:[B = null

.field private static FIRST_IFD:[B = null

.field private static GPS_IFD:[B = null

.field private static final MAKER_NAME_LIMITATION:I = 0xe

.field public static final TAG:Ljava/lang/String; = "ExifFactory"

.field private static TIFF_HEADER:[B

.field private static ZERO_IFD:[B

.field private static ZERO_IFD_INT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xa

    .line 31
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    const/16 v0, 0x8

    .line 34
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->TIFF_HEADER:[B

    const/16 v0, 0xce

    .line 35
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->ZERO_IFD:[B

    const/16 v0, 0xa6

    .line 60
    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->EXIF_IFD:[B

    const/16 v0, 0x1e

    .line 78
    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->ZERO_IFD_INT:[B

    const/16 v0, 0x110

    .line 83
    new-array v0, v0, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->GPS_IFD:[B

    const/16 v0, 0x6a

    .line 114
    new-array v0, v0, [B

    fill-array-data v0, :array_6

    sput-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->FIRST_IFD:[B

    .line 127
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->TIFF_HEADER:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->ZERO_IFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->EXIF_IFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->ZERO_IFD_INT:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->GPS_IFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->FIRST_IFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_LENGTH:I

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1ft
        0x3t
        0x1bt
        0x45t
        0x78t
        0x69t
        0x66t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4dt
        0x4dt
        0x0t
        0x2at
        0x0t
        0x0t
        0x0t
        0x8t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0xat
        0x1t
        0xft
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x7at
        0x1t
        0x10t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1et
        0x0t
        0x0t
        0x0t
        -0x6ct
        0x1t
        0x12t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x6t
        0x0t
        0x0t
        0x1t
        0x1at
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x4et
        0x1t
        0x1bt
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x46t
        0x1t
        0x28t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x1t
        0x32t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        -0x3et
        0x2t
        0x13t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x79t
        0x69t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x2at
        -0x78t
        0x25t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        -0x66t
        0x0t
        0x0t
        0x2t
        -0x56t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x48t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x48t
        0x0t
        0x0t
        0x0t
        0x1t
        0x32t
        0x30t
        0x31t
        0x31t
        0x3at
        0x30t
        0x31t
        0x3at
        0x32t
        0x33t
        0x20t
        0x31t
        0x32t
        0x3at
        0x33t
        0x34t
        0x3at
        0x35t
        0x36t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x0t
        0x9t
        -0x70t
        0x0t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x4t
        0x30t
        0x32t
        0x32t
        0x30t
        -0x70t
        0x3t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x14t
        0x0t
        0x0t
        0x1t
        0x54t
        -0x70t
        0x4t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x14t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x6ft
        0x1t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x4t
        0x1t
        0x2t
        0x3t
        0x0t
        -0x60t
        0x0t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x4t
        0x30t
        0x31t
        0x30t
        0x30t
        -0x60t
        0x1t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x60t
        0x2t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0xct
        -0x40t
        -0x60t
        0x3t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x60t
        0x5t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x7ct
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x32t
        0x30t
        0x31t
        0x31t
        0x3at
        0x30t
        0x31t
        0x3at
        0x32t
        0x33t
        0x20t
        0x31t
        0x32t
        0x3at
        0x33t
        0x34t
        0x3at
        0x35t
        0x36t
        0x0t
        0x32t
        0x30t
        0x31t
        0x31t
        0x3at
        0x30t
        0x31t
        0x3at
        0x32t
        0x33t
        0x20t
        0x31t
        0x32t
        0x3at
        0x33t
        0x34t
        0x3at
        0x35t
        0x36t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x4t
        0x52t
        0x39t
        0x38t
        0x0t
        0x0t
        0x2t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x4t
        0x30t
        0x31t
        0x30t
        0x30t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x0t
        0xct
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x4t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x2t
        0x4et
        0x0t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x2t
        0x30t
        0x0t
        0x3t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x2t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
        0x4t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x2t
        0x48t
        0x0t
        0x5t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x6t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x2t
        0x60t
        0x0t
        0x7t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x2t
        0x68t
        0x0t
        0x9t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x2t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
        0x12t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        0x0t
        0x2t
        -0x80t
        0x0t
        0x1bt
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x2t
        -0x76t
        0x0t
        0x1dt
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0xbt
        0x0t
        0x0t
        0x2t
        -0x62t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x57t
        0x47t
        0x53t
        0x2dt
        0x38t
        0x34t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x32t
        0x30t
        0x31t
        0x31t
        0x3at
        0x30t
        0x31t
        0x3at
        0x32t
        0x33t
        0x0t
        0x0t
    .end array-data

    :array_6
    .array-data 1
        0x0t
        0x7t
        0x1t
        0x3t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x6t
        0x0t
        0x0t
        0x1t
        0x12t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x6t
        0x0t
        0x0t
        0x1t
        0x1at
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x3t
        0x4t
        0x1t
        0x1bt
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x3t
        0xct
        0x1t
        0x28t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x2t
        0x1t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x3t
        0x14t
        0x2t
        0x2t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x48t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x48t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkArguments([BLcom/sonyericsson/android/camera/mediasaving/ExifOption;)V
    .locals 6

    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    .line 168
    iget-object v0, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mModel:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mDateTime:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mThumbnailData:[B

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 176
    :cond_0
    iget-object v0, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mGPSOption:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mGPSOption:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    iget-object v0, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mGPSOption:Landroid/location/Location;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setAltitude(D)V

    .line 184
    :cond_1
    iget-object v0, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mThumbnailData:[B

    array-length v0, v0

    int-to-long v0, v0

    iget-wide v2, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mThumbnailDataLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 185
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "thumbnail data length too big"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 187
    :cond_2
    array-length p0, p0

    int-to-long v0, p0

    sget p0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_LENGTH:I

    int-to-long v2, p0

    iget-wide v4, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mThumbnailDataLength:J

    add-long/2addr v2, v4

    cmp-long p0, v0, v2

    if-gez p0, :cond_3

    .line 188
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 190
    :cond_3
    iget-object p0, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mModel:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_7

    iget-object p0, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mDateTime:Ljava/lang/String;

    .line 191
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const-string v0, "YYYY:MM:DD hh:mm:ss"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p0, v0, :cond_4

    goto :goto_1

    .line 194
    :cond_4
    iget-object p0, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mModel:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x1e

    if-ge p0, v0, :cond_6

    iget-object p0, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mDateTime:Ljava/lang/String;

    .line 195
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const-string p1, "YYYY:MM:DD hh:mm:ss"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p0, p1, :cond_5

    goto :goto_0

    :cond_5
    return-void

    .line 196
    :cond_6
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "model or datetime too long"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 192
    :cond_7
    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "model or datetime too short"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 173
    :cond_8
    :goto_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "can not null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static fillNullValue([BII)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int v2, p1, v1

    .line 438
    aput-byte v0, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static generate([BLcom/sonyericsson/android/camera/mediasaving/ExifOption;)I
    .locals 4

    .line 147
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->checkArguments([BLcom/sonyericsson/android/camera/mediasaving/ExifOption;)V

    .line 149
    invoke-static {p0}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeTemplate([B)I

    move-result v0

    .line 151
    iget-object v1, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mMake:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->updateMake([BLjava/lang/String;)V

    .line 152
    iget-object v1, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mModel:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->updateModel([BLjava/lang/String;)V

    .line 153
    iget v1, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mOrientation:I

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->updateOrientation([BI)V

    .line 154
    iget-object v1, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mDateTime:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->updateDateTime([BLjava/lang/String;)V

    .line 155
    iget-wide v1, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mPixelXDimension:J

    invoke-static {p0, v1, v2}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->updatePixelXDimension([BJ)V

    .line 156
    iget-wide v1, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mPixelYDimension:J

    invoke-static {p0, v1, v2}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->updatePixelYDimension([BJ)V

    .line 157
    iget-object v1, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mGPSOption:Landroid/location/Location;

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->updateGpsFields([BLandroid/location/Location;)V

    .line 158
    iget-wide v1, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mThumbnailDataLength:J

    invoke-static {p0, v1, v2}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->updateJpegInterchangeFormatLength([BJ)V

    .line 159
    iget-object v1, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mThumbnailData:[B

    iget-wide v2, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mThumbnailDataLength:J

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v0, v0

    .line 160
    iget-wide v2, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mThumbnailDataLength:J

    add-long/2addr v0, v2

    long-to-int p1, v0

    add-int/lit8 v0, p1, -0x2

    .line 161
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->updateExifSize([BI)V

    return p1
.end method

.method public static getLength()I
    .locals 1

    .line 136
    sget v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_LENGTH:I

    return v0
.end method

.method private static removeGpsInfoFromHeader([B)V
    .locals 3

    .line 374
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    const/16 v1, 0x9

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeShortValue([BII)V

    .line 375
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x76

    const/16 v1, 0xb

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->fillNullValue([BII)V

    .line 376
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x76

    const-wide/16 v1, 0x2aa

    invoke-static {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeLongValue([BIJ)V

    .line 377
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x19a

    const/16 v1, 0x110

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->fillNullValue([BII)V

    return-void
.end method

.method private static updateDateTime([BLjava/lang/String;)V
    .locals 1

    .line 223
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0xc2

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    .line 224
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x154

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    .line 225
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x168

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    return-void
.end method

.method private static updateExifSize([BI)V
    .locals 1

    .line 386
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x8

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeShortValue([BII)V

    return-void
.end method

.method private static updateGpsFields([BLandroid/location/Location;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 239
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeGpsInfoToHeader([BLandroid/location/Location;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 246
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->removeGpsInfoFromHeader([B)V

    return-void
.end method

.method private static updateJpegInterchangeFormatLength([BJ)V
    .locals 1

    .line 382
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x2fc

    invoke-static {p0, v0, p1, p2}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeLongValue([BIJ)V

    return-void
.end method

.method private static updateMake([BLjava/lang/String;)V
    .locals 2

    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 203
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 208
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x86

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    move-result p1

    .line 209
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x10

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeShortValue([BII)V

    return-void
.end method

.method private static updateModel([BLjava/lang/String;)V
    .locals 3

    .line 213
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x94

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    move-result p1

    .line 214
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1a

    add-int/lit8 p1, p1, 0x1

    int-to-long v1, p1

    invoke-static {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeLongValue([BIJ)V

    return-void
.end method

.method private static updateOrientation([BI)V
    .locals 1

    .line 218
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2a

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeShortValue([BII)V

    .line 219
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x2c0

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeShortValue([BII)V

    return-void
.end method

.method private static updatePixelXDimension([BJ)V
    .locals 1

    .line 229
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x134

    add-int/lit8 v0, v0, -0xc

    invoke-static {p0, v0, p1, p2}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeLongValue([BIJ)V

    return-void
.end method

.method private static updatePixelYDimension([BJ)V
    .locals 1

    .line 233
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x140

    add-int/lit8 v0, v0, -0xc

    invoke-static {p0, v0, p1, p2}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeLongValue([BIJ)V

    return-void
.end method

.method private static writeASCIIValue([BILjava/lang/String;)I
    .locals 2

    const-string v0, "US-ASCII"

    .line 409
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 410
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, p0, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    array-length p0, p2

    return p0
.end method

.method private static writeByteValue([BII)V
    .locals 0

    add-int/lit8 p1, p1, 0x0

    int-to-byte p2, p2

    .line 415
    aput-byte p2, p0, p1

    return-void
.end method

.method private static writeGpsInfoToHeader([BLandroid/location/Location;)Z
    .locals 15

    move-object v6, p0

    .line 252
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 253
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 255
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide/16 v8, 0x0

    cmpg-double v2, v0, v8

    if-gez v2, :cond_0

    .line 257
    sget-object v2, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v2, v2, 0x1b0

    const-string v3, "S"

    invoke-static {v6, v2, v3}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    neg-double v0, v0

    :cond_0
    const/4 v10, 0x2

    const/4 v11, 0x0

    .line 266
    :try_start_0
    invoke-static {v0, v1, v10}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4

    const-string v1, ":"

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 274
    :try_start_1
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v1, v0, 0x230

    aget-object v0, v12, v11

    .line 277
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    move-object v0, v6

    .line 274
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeRationalValue([BIJJ)V

    .line 279
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v1, v0, 0x238

    const/4 v13, 0x1

    aget-object v0, v12, v13

    .line 282
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    move-object v0, v6

    .line 279
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeRationalValue([BIJJ)V

    .line 284
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v1, v0, 0x240

    aget-object v0, v12, v10

    .line 286
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v12, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v12

    float-to-long v2, v0

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    .line 284
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeRationalValue([BIJJ)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    .line 293
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpg-double v2, v0, v8

    if-gez v2, :cond_1

    .line 295
    sget-object v2, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v2, v2, 0x1c8

    const-string v3, "W"

    invoke-static {v6, v2, v3}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    neg-double v0, v0

    .line 304
    :cond_1
    :try_start_2
    invoke-static {v0, v1, v10}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    const-string v1, ":"

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 313
    :try_start_3
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v1, v0, 0x248

    aget-object v0, v14, v11

    .line 316
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    move-object v0, v6

    .line 313
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeRationalValue([BIJJ)V

    .line 318
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v1, v0, 0x250

    aget-object v0, v14, v13

    .line 321
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    move-object v0, v6

    .line 318
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeRationalValue([BIJJ)V

    .line 323
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v1, v0, 0x258

    aget-object v0, v14, v10

    .line 326
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    mul-float/2addr v0, v12

    float-to-long v2, v0

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    .line 323
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeRationalValue([BIJJ)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    .line 333
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    cmpg-double v2, v0, v8

    if-gez v2, :cond_2

    .line 335
    sget-object v2, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v2, v2, 0x1e0

    invoke-static {v6, v2, v13}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeByteValue([BII)V

    .line 337
    :cond_2
    sget-object v2, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v2, v2, 0x260

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v3

    double-to-long v3, v0

    const-wide/16 v8, 0x3e8

    move-object v0, v6

    move v1, v2

    move-wide v2, v3

    move-wide v4, v8

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeRationalValue([BIJJ)V

    const-string v0, "UTC"

    .line 340
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 344
    :try_start_4
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v1, v0, 0x268

    const/16 v0, 0xb

    .line 347
    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x1

    move-object v0, v6

    .line 344
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeRationalValue([BIJJ)V

    .line 349
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v1, v0, 0x270

    const/16 v0, 0xc

    .line 352
    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v13

    int-to-long v2, v0

    const-wide/16 v4, 0x1

    move-object v0, v6

    .line 349
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeRationalValue([BIJJ)V

    .line 354
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v1, v0, 0x278

    const/16 v0, 0xd

    .line 357
    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    move-object v0, v6

    .line 354
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeRationalValue([BIJJ)V

    .line 360
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%04d:%02d:%02d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v7, v13}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    .line 361
    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v13

    const/4 v3, 0x5

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    .line 360
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    .line 367
    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v1, v1

    add-int/lit16 v1, v1, 0x29e

    invoke-static {v6, v1, v0}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    return v13

    .line 363
    :catch_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_3

    const-string v0, "failed to get gpsDateStamp"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    return v11

    .line 329
    :catch_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_4

    const-string v0, "failed to get longitude value"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    return v11

    .line 306
    :catch_2
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_5

    const-string v0, "failed to change longitude format"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5
    return v11

    .line 289
    :catch_3
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_6

    const-string v0, "failed to get latitude value"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_6
    return v11

    .line 268
    :catch_4
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_7

    const-string v0, "failed to change latitude format"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_7
    return v11
.end method

.method private static writeLongValue([BIJ)V
    .locals 5

    add-int/lit8 v0, p1, 0x0

    const-wide/32 v1, 0x1000000

    .line 424
    div-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    const-wide/32 v1, 0x10000

    .line 425
    div-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    const-wide/16 v1, 0x100

    .line 426
    div-long v3, p2, v1

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    add-int/lit8 p1, p1, 0x3

    .line 427
    rem-long/2addr p2, v1

    long-to-int p2, p2

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void
.end method

.method private static writeRationalValue([BIJJ)V
    .locals 1

    add-int/lit8 v0, p1, 0x0

    .line 432
    invoke-static {p0, v0, p2, p3}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeLongValue([BIJ)V

    add-int/lit8 p1, p1, 0x4

    .line 433
    invoke-static {p0, p1, p4, p5}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeLongValue([BIJ)V

    return-void
.end method

.method private static writeShortValue([BII)V
    .locals 2

    add-int/lit8 v0, p1, 0x0

    .line 419
    div-int/lit16 v1, p2, 0x100

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x1

    .line 420
    rem-int/lit16 p2, p2, 0x100

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void
.end method

.method private static writeTemplate([B)I
    .locals 4

    .line 391
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 392
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/2addr v0, v2

    .line 393
    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->TIFF_HEADER:[B

    sget-object v3, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->TIFF_HEADER:[B

    array-length v3, v3

    invoke-static {v1, v2, p0, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 394
    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->TIFF_HEADER:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 395
    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->ZERO_IFD:[B

    sget-object v3, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->ZERO_IFD:[B

    array-length v3, v3

    invoke-static {v1, v2, p0, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->ZERO_IFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 397
    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->EXIF_IFD:[B

    sget-object v3, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->EXIF_IFD:[B

    array-length v3, v3

    invoke-static {v1, v2, p0, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->EXIF_IFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 399
    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->ZERO_IFD_INT:[B

    sget-object v3, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->ZERO_IFD_INT:[B

    array-length v3, v3

    invoke-static {v1, v2, p0, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->ZERO_IFD_INT:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 401
    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->GPS_IFD:[B

    sget-object v3, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->GPS_IFD:[B

    array-length v3, v3

    invoke-static {v1, v2, p0, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->GPS_IFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 403
    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->FIRST_IFD:[B

    sget-object v3, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->FIRST_IFD:[B

    array-length v3, v3

    invoke-static {v1, v2, p0, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    sget-object p0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->FIRST_IFD:[B

    array-length p0, p0

    add-int/2addr v0, p0

    return v0
.end method

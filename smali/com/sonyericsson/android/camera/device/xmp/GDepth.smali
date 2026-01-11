.class public Lcom/sonyericsson/android/camera/device/xmp/GDepth;
.super Ljava/lang/Object;
.source "GDepth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;
    }
.end annotation


# static fields
.field public static final FORMAT_8_BIT:Ljava/lang/String; = "8-bit"

.field public static final FORMAT_RANGE_INVERSE:Ljava/lang/String; = "RangeInverse"

.field public static final FORMAT_RANGLE_LINEAR:Ljava/lang/String; = "RangeLinear"

.field private static final MIME:Ljava/lang/String; = "image/jpeg"

.field public static final NAMESPACE_URL:Ljava/lang/String; = "http://ns.google.com/photos/1.0/depthmap/"

.field public static final PREFIX:Ljava/lang/String; = "GDepth"

.field public static final PROPERTY_DATA:Ljava/lang/String; = "Data"

.field public static final PROPERTY_FAR:Ljava/lang/String; = "Far"

.field public static final PROPERTY_FORMAT:Ljava/lang/String; = "Format"

.field public static final PROPERTY_MIME:Ljava/lang/String; = "Mime"

.field public static final PROPERTY_NEAR:Ljava/lang/String; = "Near"

.field public static final PROPERTY_ROI_HEIGHT:Ljava/lang/String; = "RoiHeight"

.field public static final PROPERTY_ROI_WIDTH:Ljava/lang/String; = "RoiWidth"

.field public static final PROPERTY_ROI_X:Ljava/lang/String; = "RoiX"

.field public static final PROPERTY_ROI_Y:Ljava/lang/String; = "RoiY"

.field private static final TAG:Ljava/lang/String; = "Flow_GDepth"


# instance fields
.field private mData:Ljava/lang/String;

.field private mDepthMap:Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;

.field private final mFormat:Ljava/lang/String;

.field private mGdepthJpeg:[B

.field private mMap:[I

.field private mRoi:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 83
    :try_start_0
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    const-string v1, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v2, "GDepth"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-string p1, "RangeLinear"

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mFormat:Ljava/lang/String;

    .line 282
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mData:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;)V
    .locals 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-string v0, "RangeLinear"

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mFormat:Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mDepthMap:Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;

    .line 92
    iget-object v0, p1, Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;->roi:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mRoi:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    .line 93
    iget-object v0, p1, Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;->buffer:[B

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p1, Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;->buffer:[B

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mMap:[I

    const/4 v0, 0x0

    .line 96
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mMap:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 97
    iget-object v1, p1, Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;->buffer:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    .line 98
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    .line 99
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mMap:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>([B)V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-string v0, "RangeLinear"

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mFormat:Ljava/lang/String;

    .line 105
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mGdepthJpeg:[B

    return-void
.end method

.method private compressToJPEG([B)[B
    .locals 2

    .line 206
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string v0, "Flow_GDepth"

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "compressToJPEG byte[].size="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    .line 207
    array-length v1, p1

    invoke-static {p1, p0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_1

    .line 209
    const-string p0, " buffer can\'t be decoded "

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 212
    :cond_1
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 213
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 214
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static createGDepth(Lcom/adobe/xmp/XMPMeta;)Lcom/sonyericsson/android/camera/device/xmp/GDepth;
    .locals 13

    .line 286
    const-string v0, "http://ns.google.com/photos/1.0/depthmap/"

    .line 0
    const-string/jumbo v1, "x="

    const-string v2, "new GDepth: nerar="

    .line 286
    :try_start_0
    const-string v3, "Near"

    .line 287
    invoke-interface {p0, v0, v3}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v3

    invoke-interface {v3}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 286
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 288
    const-string v4, "Far"

    .line 289
    invoke-interface {p0, v0, v4}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v4

    invoke-interface {v4}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 288
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 290
    const-string v5, "Data"

    invoke-interface {p0, v0, v5}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v5

    .line 291
    invoke-interface {v5}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 292
    const-string v6, "Format"

    invoke-interface {p0, v0, v6}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v6

    .line 293
    invoke-interface {v6}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 294
    sget-boolean v7, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x1

    const-string v9, "Flow_GDepth"

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-eqz v7, :cond_0

    :try_start_1
    new-array v7, v11, [Ljava/lang/String;

    aput-object v9, v7, v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, " far="

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, "format="

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " data="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-static {v7}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 296
    :cond_0
    const-string v2, "RoiX"

    .line 297
    invoke-interface {p0, v0, v2}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v2

    invoke-interface {v2}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 296
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 298
    const-string v6, "RoiY"

    .line 299
    invoke-interface {p0, v0, v6}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v6

    invoke-interface {v6}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 298
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 300
    const-string v7, "RoiWidth"

    .line 301
    invoke-interface {p0, v0, v7}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v7

    invoke-interface {v7}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 300
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 302
    const-string v12, "RoiHeight"

    .line 303
    invoke-interface {p0, v0, v12}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object p0

    invoke-interface {p0}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 302
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 304
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    new-array v0, v11, [Ljava/lang/String;

    aput-object v9, v0, v10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v8

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 306
    :cond_1
    new-instance p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;

    invoke-direct {p0, v3, v4, v5}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;-><init>(IILjava/lang/String;)V
    :try_end_1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 311
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 309
    invoke-virtual {p0}, Lcom/adobe/xmp/XMPException;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createGDepth(Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;)Lcom/sonyericsson/android/camera/device/xmp/GDepth;
    .locals 1

    .line 138
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;-><init>(Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;)V

    .line 139
    invoke-direct {v0}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->encoding()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createGDepth([B)Lcom/sonyericsson/android/camera/device/xmp/GDepth;
    .locals 1

    .line 146
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;-><init>([B)V

    .line 147
    invoke-direct {v0}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->encodeDepthmapJpeg()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private encodeDepthmapJpeg()Z
    .locals 2

    .line 174
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string v1, "Flow_GDepth"

    if-eqz v0, :cond_0

    const-string v0, "encodeDepthmapJpeg"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mGdepthJpeg:[B

    if-eqz v0, :cond_1

    .line 178
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->serializeAsBase64Str([B)Ljava/lang/String;

    move-result-object v0

    .line 180
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mData:Ljava/lang/String;

    const/4 p0, 0x1

    goto :goto_0

    .line 182
    :cond_1
    const-string p0, "compressToJPEG failure"

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private encoding()Z
    .locals 5

    .line 154
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string v1, "Flow_GDepth"

    if-eqz v0, :cond_0

    const-string v0, "encoding"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mMap:[I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mDepthMap:Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;

    iget v2, v2, Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;->width:I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mDepthMap:Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;

    iget v3, v3, Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 158
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 159
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 160
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 161
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mGdepthJpeg:[B

    if-eqz v0, :cond_1

    .line 163
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->serializeAsBase64Str([B)Ljava/lang/String;

    move-result-object v0

    .line 165
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mData:Ljava/lang/String;

    const/4 p0, 0x1

    goto :goto_0

    .line 167
    :cond_1
    const-string p0, "compressToJPEG failure"

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private saveAsFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 227
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string v0, ".log"

    const-string v1, "Flow_GDepth"

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "saveAsFile sdcard/DDM/Flow_GDepth"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 228
    :cond_0
    new-instance p0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sdcard/DDM/Flow_GDepth"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 p2, 0x0

    .line 233
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 234
    :try_start_1
    array-length p0, p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2, p0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object p2, v0

    goto :goto_2

    :catch_0
    move-exception p0

    move-object p2, v0

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 236
    :goto_0
    :try_start_3
    invoke-static {v1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p2, :cond_1

    .line 240
    :try_start_4
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 242
    invoke-static {v1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void

    :goto_2
    if-eqz p2, :cond_2

    .line 240
    :try_start_5
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 242
    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    :cond_2
    :goto_3
    throw p0
.end method

.method private saveAsJPEG([B)V
    .locals 5

    .line 249
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string v0, "Flow_GDepth"

    if-eqz p0, :cond_0

    const-string p0, "saveAsJPEG"

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 250
    :cond_0
    new-instance p0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sdcard/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_depth.JPEG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 253
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 254
    :try_start_1
    array-length p0, p1

    invoke-virtual {v3, p1, v1, p0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 262
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    :goto_0
    const/4 p1, 0x2

    .line 256
    :try_start_3
    new-array p1, p1, [Ljava/lang/String;

    aput-object v0, p1, v1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    .line 260
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception p0

    .line 262
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :goto_2
    if-eqz v2, :cond_2

    .line 260
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception p1

    .line 262
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 265
    :cond_2
    :goto_3
    throw p0
.end method

.method private serializeAsBase64Str([B)Ljava/lang/String;
    .locals 1

    .line 222
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Flow_GDepth"

    const-string v0, "serializeAsBase64Str"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    .line 223
    invoke-static {p1, p0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public decode()Z
    .locals 5

    .line 317
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Flow_GDepth"

    const-string v1, "decode"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 318
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mData:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 323
    array-length v1, p0

    new-array v2, v1, [I

    .line 324
    array-length v3, p0

    new-array v3, v3, [I

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 328
    aget-byte v4, p0, v3

    add-int/lit16 v4, v4, 0x100

    rem-int/lit16 v4, v4, 0x100

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getBitGdepthBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mMap:[I

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 197
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mMap:[I

    aget v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    .line 198
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mDepthMap:Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;

    iget v0, v0, Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;->width:I

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mDepthMap:Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;

    iget p0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, p0, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getData()Ljava/lang/String;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mData:Ljava/lang/String;

    return-object p0
.end method

.method public getDepthJpeg()[B
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mGdepthJpeg:[B

    return-object p0
.end method

.method public getFar()I
    .locals 0

    const/16 p0, 0xff

    return p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    .line 111
    const-string p0, "RangeLinear"

    return-object p0
.end method

.method public getGdepthBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mMap:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mDepthMap:Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;

    iget v1, v1, Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;->width:I

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mDepthMap:Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;

    iget p0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, p0, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getMime()Ljava/lang/String;
    .locals 0

    .line 115
    const-string p0, "image/jpeg"

    return-object p0
.end method

.method public getNear()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getRoi()Landroid/graphics/Rect;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mRoi:Landroid/graphics/Rect;

    return-object p0
.end method

.method public setRoi(Landroid/graphics/Rect;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mRoi:Landroid/graphics/Rect;

    return-void
.end method

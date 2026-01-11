.class public Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;
.super Ljava/lang/Object;
.source "XmpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;
    }
.end annotation


# static fields
.field private static final EXTENDED_XMP_HEADER_SIGNATURE:Ljava/lang/String; = "http://ns.adobe.com/xmp/extension/\u0000"

.field private static final EXTEND_XMP_HEADER_SIZE:I = 0x4b

.field private static final GOOGLE_PANO_NAMESPACE:Ljava/lang/String; = "http://ns.google.com/photos/1.0/panorama/"

.field private static final MAX_EXTENDED_XMP_BUFFER_SIZE:I = 0xfde8

.field private static final MAX_XMP_BUFFER_SIZE:I = 0xffde

.field private static final M_APP1:I = 0xe1

.field private static final M_SOI:I = 0xd8

.field private static final M_SOS:I = 0xda

.field private static final NOTE_PREFIX:Ljava/lang/String; = "xmpNote"

.field private static final PANO_PREFIX:Ljava/lang/String; = "GPano"

.field private static final TAG:Ljava/lang/String; = "XmpUtil"

.field private static final XMP_HEADER:Ljava/lang/String; = "http://ns.adobe.com/xap/1.0/\u0000"

.field private static final XMP_HEADER_SIZE:I = 0x1d

.field private static final XMP_NOTE_NAMESPACE:Ljava/lang/String; = "http://ns.adobe.com/xmp/note/"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 82
    :try_start_0
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    const-string v1, "http://ns.google.com/photos/1.0/panorama/"

    const-string v2, "GPano"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    const-string v1, "http://ns.adobe.com/xmp/note/"

    const-string/jumbo v2, "xmpNote"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createSection([B[B)Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;
    .locals 6

    .line 450
    array-length v0, p0

    const v1, 0xfde8

    const-string v2, "XmpUtil"

    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    .line 452
    const-string p0, "createSection fail exceed max size"

    filled-new-array {v2, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-object v3

    .line 456
    :cond_0
    array-length v0, p0

    add-int/lit8 v1, v0, 0x4b

    new-array v1, v1, [B

    .line 457
    array-length v4, p1

    const/4 v5, 0x0

    invoke-static {p1, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 459
    array-length p1, p1

    array-length v4, p0

    invoke-static {p0, v5, v1, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    new-instance p0, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;

    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;-><init>(Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section-IA;)V

    const/16 p1, 0xe1

    .line 461
    iput p1, p0, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->marker:I

    add-int/lit8 v0, v0, 0x4d

    .line 463
    iput v0, p0, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->length:I

    .line 464
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->data:[B

    .line 465
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 466
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fullLength="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x43

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x47

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method private static createStandardXMPSection(Lcom/adobe/xmp/XMPMeta;)Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;
    .locals 6

    const/4 v0, 0x0

    .line 420
    :try_start_0
    new-instance v1, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-direct {v1}, Lcom/adobe/xmp/options/SerializeOptions;-><init>()V

    const/4 v2, 0x1

    .line 421
    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/SerializeOptions;->setUseCompactFormat(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 425
    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/SerializeOptions;->setOmitPacketWrapper(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 426
    invoke-static {p0, v1}, Lcom/adobe/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)[B

    move-result-object p0
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    array-length v1, p0

    const v2, 0xffde

    if-le v1, v2, :cond_0

    .line 432
    const-string p0, "exceed max size"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-object v0

    .line 436
    :cond_0
    array-length v1, p0

    add-int/lit8 v2, v1, 0x1d

    new-array v2, v2, [B

    .line 437
    const-string v3, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x1d

    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 438
    array-length v3, p0

    invoke-static {p0, v4, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 439
    new-instance p0, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;-><init>(Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section-IA;)V

    const/16 v0, 0xe1

    .line 440
    iput v0, p0, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->marker:I

    add-int/lit8 v1, v1, 0x1f

    .line 442
    iput v1, p0, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->length:I

    .line 443
    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->data:[B

    return-object p0

    :catch_0
    move-exception p0

    .line 428
    const-string v1, "Serialize xmp failed"

    invoke-static {v1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static createXMPMeta()Lcom/adobe/xmp/XMPMeta;
    .locals 1

    .line 147
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->create()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    return-object v0
.end method

.method public static extractOrCreateXMPMeta(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;
    .locals 0

    .line 154
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->extractXMPMeta(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;

    move-result-object p0

    if-nez p0, :cond_0

    .line 155
    invoke-static {}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->createXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;
    .locals 5

    const/4 v0, 0x1

    .line 120
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 125
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;

    .line 126
    iget-object v2, v1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->data:[B

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->hasXMPHeader([B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    iget-object p0, v1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->data:[B

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->getXMPContentEnd([B)I

    move-result p0

    const/16 v2, 0x1d

    sub-int/2addr p0, v2

    .line 128
    new-array v3, p0, [B

    .line 129
    iget-object v1, v1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->data:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    :try_start_0
    invoke-static {v3}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromBuffer([B)Lcom/adobe/xmp/XMPMeta;

    move-result-object p0
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 135
    const-string v1, "XMP parse error"

    invoke-static {v1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-object v0
.end method

.method public static extractXMPMeta(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;
    .locals 4

    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    const-string p0, "XmpUtil"

    const-string v0, "XMP parse: only jpeg file is supported"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-object v1

    .line 106
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not read file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private static getGUID([B)Ljava/lang/String;
    .locals 7

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 618
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 619
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 620
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 622
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    const/4 v2, 0x0

    move v3, v2

    .line 623
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    .line 624
    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aget-byte v6, p0, v3

    add-int/lit16 v6, v6, 0x100

    rem-int/lit16 v6, v6, 0x100

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 631
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 627
    const-string v0, "get md5 instance failure"

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getXMPContentEnd([B)I
    .locals 4

    .line 332
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-lt v0, v1, :cond_1

    .line 333
    aget-byte v2, p0, v0

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 334
    aget-byte v2, p0, v2

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_0

    add-int/2addr v0, v1

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 340
    :cond_1
    array-length p0, p0

    return p0
.end method

.method private static hasXMPHeader([B)Z
    .locals 3

    .line 306
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_0

    return v1

    .line 310
    :cond_0
    :try_start_0
    new-array v0, v2, [B

    .line 311
    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    new-instance p0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {p0, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v0, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    return v1
.end method

.method private static insertXMPSection(Ljava/util/List;Lcom/adobe/xmp/XMPMeta;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;",
            ">;",
            "Lcom/adobe/xmp/XMPMeta;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 250
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    goto/16 :goto_2

    .line 255
    :cond_0
    :try_start_0
    new-instance v1, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-direct {v1}, Lcom/adobe/xmp/options/SerializeOptions;-><init>()V

    .line 256
    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/SerializeOptions;->setUseCompactFormat(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 260
    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/SerializeOptions;->setOmitPacketWrapper(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 261
    invoke-static {p1, v1}, Lcom/adobe/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)[B

    move-result-object p1
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    array-length v1, p1

    const v3, 0xffde

    if-le v1, v3, :cond_1

    return-object v0

    .line 271
    :cond_1
    array-length v1, p1

    add-int/lit8 v3, v1, 0x1d

    new-array v3, v3, [B

    .line 272
    const-string v4, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x1d

    invoke-static {v4, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    array-length v4, p1

    invoke-static {p1, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    new-instance p1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;-><init>(Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section-IA;)V

    const/16 v0, 0xe1

    .line 275
    iput v0, p1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->marker:I

    add-int/lit8 v1, v1, 0x1f

    .line 277
    iput v1, p1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->length:I

    .line 278
    iput-object v3, p1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->data:[B

    move v1, v5

    .line 280
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 282
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;

    iget v3, v3, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->marker:I

    if-ne v3, v0, :cond_2

    .line 283
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->data:[B

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->hasXMPHeader([B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 285
    invoke-interface {p0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 292
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;

    iget v3, v3, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->marker:I

    if-ne v3, v0, :cond_4

    goto :goto_1

    :cond_4
    move v2, v5

    .line 293
    :goto_1
    invoke-interface {p0, v5, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 294
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p0, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v1

    :catch_0
    move-exception p0

    .line 263
    const-string p1, "Serialize xmp failed"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-object v0
.end method

.method private static insertXMPSection(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 601
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_1

    .line 607
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 608
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;

    iget v3, v3, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->marker:I

    const/16 v4, 0xe1

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 609
    :goto_0
    invoke-interface {p0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 610
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 611
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parse(Ljava/io/InputStream;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 354
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_10

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v3, 0xd8

    if-eq v1, v3, :cond_0

    goto/16 :goto_4

    .line 357
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 359
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_e

    if-eq v3, v2, :cond_2

    if-eqz p0, :cond_1

    .line 409
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-object v0

    .line 364
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v3, v2, :cond_3

    goto :goto_1

    :cond_3
    if-ne v3, v4, :cond_5

    if-eqz p0, :cond_4

    .line 409
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_4
    return-object v0

    :cond_5
    const/16 v5, 0xda

    const/4 v6, 0x0

    if-ne v3, v5, :cond_8

    if-nez p1, :cond_6

    .line 374
    :try_start_4
    new-instance p1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;-><init>(Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section-IA;)V

    .line 375
    iput v3, p1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->marker:I

    .line 376
    iput v4, p1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->length:I

    .line 377
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->data:[B

    .line 378
    iget-object v2, p1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->data:[B

    iget-object v3, p1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->data:[B

    array-length v3, v3

    invoke-virtual {p0, v2, v6, v3}, Ljava/io/InputStream;->read([BII)I

    .line 379
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    if-eqz p0, :cond_7

    .line 409
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_7
    return-object v1

    .line 383
    :cond_8
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 384
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v7

    if-eq v5, v4, :cond_c

    if-ne v7, v4, :cond_9

    goto :goto_3

    :cond_9
    shl-int/lit8 v4, v5, 0x8

    or-int/2addr v4, v7

    if-eqz p1, :cond_b

    const/16 v5, 0xe1

    if-ne v3, v5, :cond_a

    goto :goto_2

    :cond_a
    add-int/lit8 v4, v4, -0x2

    int-to-long v3, v4

    .line 399
    invoke-virtual {p0, v3, v4}, Ljava/io/InputStream;->skip(J)J

    goto :goto_0

    .line 390
    :cond_b
    :goto_2
    new-instance v5, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;

    invoke-direct {v5, v0}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;-><init>(Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section-IA;)V

    .line 391
    iput v3, v5, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->marker:I

    .line 392
    iput v4, v5, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->length:I

    add-int/lit8 v4, v4, -0x2

    .line 393
    new-array v3, v4, [B

    iput-object v3, v5, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->data:[B

    .line 394
    iget-object v3, v5, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->data:[B

    invoke-virtual {p0, v3, v6, v4}, Ljava/io/InputStream;->read([BII)I

    .line 395
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :cond_c
    :goto_3
    if-eqz p0, :cond_d

    .line 409
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    :cond_d
    return-object v0

    :cond_e
    if-eqz p0, :cond_f

    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    :cond_f
    return-object v1

    :cond_10
    :goto_4
    if-eqz p0, :cond_11

    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :catch_5
    :cond_11
    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_6
    move-exception p1

    .line 404
    :try_start_a
    const-string v1, "Could not parse file."

    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz p0, :cond_12

    .line 409
    :try_start_b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :catch_7
    :cond_12
    return-object v0

    :goto_5
    if-eqz p0, :cond_13

    :try_start_c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 414
    :catch_8
    :cond_13
    throw p1
.end method

.method private static splitExtendXMPMeta([BLjava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;",
            ">;"
        }
    .end annotation

    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 487
    array-length v1, p0

    const v2, 0xfde8

    div-int/2addr v1, v2

    .line 488
    new-array v3, v2, [B

    .line 489
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/16 v5, 0x4b

    .line 492
    new-array v5, v5, [B

    .line 494
    const-string v6, "http://ns.adobe.com/xmp/extension/\u0000"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x23

    invoke-static {v6, v7, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 497
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v6, v7, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v8, p1

    .line 500
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "buffer.length="

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v9, p0

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "XmpUtil"

    filled-new-array {v9, v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v6, 0x4

    .line 501
    new-array v9, v6, [B

    .line 502
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 503
    array-length v11, p0

    invoke-virtual {v10, v7, v11}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 504
    invoke-static {v9, v7, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p1, p1, 0x27

    .line 507
    new-array v8, v6, [B

    .line 508
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    move v10, v7

    :goto_0
    if-ge v10, v1, :cond_1

    mul-int v11, v10, v2

    .line 510
    invoke-virtual {v9, v7, v11}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 511
    invoke-static {v8, v7, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 513
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 514
    invoke-static {v3, v5}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->createSection([B[B)Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;

    move-result-object v11

    .line 515
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 518
    :cond_1
    array-length p0, p0

    mul-int/2addr v1, v2

    sub-int/2addr p0, v1

    if-lez p0, :cond_2

    .line 520
    invoke-virtual {v9, v7, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 521
    invoke-static {v8, v7, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 523
    new-array p0, p0, [B

    .line 524
    invoke-virtual {v4, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 525
    invoke-static {p0, v5}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->createSection([B[B)Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;

    move-result-object p0

    .line 526
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method private static writeJpegFile(Ljava/io/OutputStream;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xff

    .line 232
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v1, 0xd8

    .line 233
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 234
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;

    .line 235
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 236
    iget v2, v1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->marker:I

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 237
    iget v2, v1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->length:I

    if-lez v2, :cond_0

    .line 239
    iget v2, v1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->length:I

    shr-int/lit8 v2, v2, 0x8

    .line 240
    iget v3, v1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->length:I

    and-int/2addr v3, v0

    .line 241
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 242
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 244
    :cond_0
    iget-object v1, v1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->data:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;)Z
    .locals 1

    const/4 v0, 0x0

    .line 203
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object p0

    .line 204
    invoke-static {p0, p2}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->insertXMPSection(Ljava/util/List;Lcom/adobe/xmp/XMPMeta;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    .line 210
    :cond_0
    :try_start_0
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->writeJpegFile(Ljava/io/OutputStream;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 217
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 212
    :try_start_2
    const-string p2, "Write to stream failed"

    invoke-static {p2, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_2

    .line 217
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_2
    return v0

    :goto_0
    if-eqz p1, :cond_3

    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 222
    :catch_3
    :cond_3
    throw p0
.end method

.method public static writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/XMPMeta;)Z
    .locals 5

    const/4 v0, 0x0

    .line 545
    :try_start_0
    new-instance v1, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-direct {v1}, Lcom/adobe/xmp/options/SerializeOptions;-><init>()V

    const/4 v2, 0x1

    .line 546
    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/SerializeOptions;->setUseCanonicalFormat(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 550
    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/SerializeOptions;->setOmitPacketWrapper(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 551
    invoke-static {p3, v1}, Lcom/adobe/xmp/XMPMetaFactory;->serializeToString(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "&#xA;"

    const-string v3, ""

    .line 552
    invoke-virtual {p3, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_5

    .line 558
    invoke-static {p3}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->getGUID([B)Ljava/lang/String;

    move-result-object v1

    .line 560
    :try_start_1
    const-string v3, "http://ns.adobe.com/xmp/note/"

    const-string v4, "HasExtendedXMP"

    invoke-interface {p2, v3, v4, v1}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_4

    .line 565
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object p0

    .line 566
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 567
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->createStandardXMPSection(Lcom/adobe/xmp/XMPMeta;)Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;

    move-result-object p2

    .line 568
    const-string v4, "XmpUtil"

    if-nez p2, :cond_0

    .line 569
    const-string p0, "create standard meta section error"

    filled-new-array {v4, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v0

    .line 572
    :cond_0
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    invoke-static {p3, v1}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->splitExtendXMPMeta([BLjava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 575
    invoke-interface {v3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 576
    invoke-static {p0, v3}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->insertXMPSection(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_2

    .line 578
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "Insert XMP fialed"

    filled-new-array {v4, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return v0

    .line 583
    :cond_2
    :try_start_2
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->writeJpegFile(Ljava/io/OutputStream;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_3

    .line 590
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_3
    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 585
    :try_start_4
    const-string p2, "Write to stream failed"

    invoke-static {p2, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_4

    .line 590
    :try_start_5
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_4
    return v0

    :goto_0
    if-eqz p1, :cond_5

    :try_start_6
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 595
    :catch_3
    :cond_5
    throw p0

    :catch_4
    move-exception p0

    .line 562
    const-string p1, "set XMPMeta Property"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :catch_5
    move-exception p0

    .line 554
    const-string p1, "Serialize extended xmp failed"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static writeXMPMeta(Ljava/lang/String;Lcom/adobe/xmp/XMPMeta;)Z
    .locals 4

    const-string v0, "Write file failed:"

    .line 162
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 163
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".jpeg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "XmpUtil"

    const-string p1, "XMP parse: only jpeg file is supported"

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return v2

    .line 169
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v1

    .line 170
    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->insertXMPSection(Ljava/util/List;Lcom/adobe/xmp/XMPMeta;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    if-nez p1, :cond_2

    return v2

    :cond_2
    const/4 v1, 0x0

    .line 181
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 182
    :try_start_2
    invoke-static {v3, p1}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->writeJpegFile(Ljava/io/OutputStream;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v1, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p1

    .line 184
    :goto_0
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_3

    .line 189
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_3
    return v2

    :goto_1
    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 194
    :catch_4
    :cond_4
    throw p0

    :catch_5
    move-exception p1

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not read file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

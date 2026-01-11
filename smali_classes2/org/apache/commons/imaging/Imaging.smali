.class public final Lorg/apache/commons/imaging/Imaging;
.super Ljava/lang/Object;
.source "Imaging.java"


# static fields
.field private static final MAGIC_NUMBERS_BMP:[I

.field private static final MAGIC_NUMBERS_DCX:[I

.field private static final MAGIC_NUMBERS_GIF:[I

.field private static final MAGIC_NUMBERS_ICNS:[I

.field private static final MAGIC_NUMBERS_JBIG2_1:[I

.field private static final MAGIC_NUMBERS_JBIG2_2:[I

.field private static final MAGIC_NUMBERS_JPEG:[I

.field private static final MAGIC_NUMBERS_PAM:[I

.field private static final MAGIC_NUMBERS_PBM_A:[I

.field private static final MAGIC_NUMBERS_PBM_B:[I

.field private static final MAGIC_NUMBERS_PGM_A:[I

.field private static final MAGIC_NUMBERS_PGM_B:[I

.field private static final MAGIC_NUMBERS_PNG:[I

.field private static final MAGIC_NUMBERS_PPM_A:[I

.field private static final MAGIC_NUMBERS_PPM_B:[I

.field private static final MAGIC_NUMBERS_PSD:[I

.field private static final MAGIC_NUMBERS_RGBE:[I

.field private static final MAGIC_NUMBERS_TIFF_INTEL:[I

.field private static final MAGIC_NUMBERS_TIFF_MOTOROLA:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x47

    const/16 v1, 0x49

    .line 115
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_GIF:[I

    const/16 v0, 0x89

    const/16 v2, 0x50

    .line 116
    filled-new-array {v0, v2}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PNG:[I

    const/16 v0, 0xff

    const/16 v3, 0xd8

    .line 117
    filled-new-array {v0, v3}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_JPEG:[I

    const/16 v0, 0x42

    const/16 v3, 0x4d

    .line 118
    filled-new-array {v0, v3}, [I

    move-result-object v4

    sput-object v4, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_BMP:[I

    .line 119
    filled-new-array {v3, v3}, [I

    move-result-object v3

    sput-object v3, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_TIFF_MOTOROLA:[I

    .line 120
    filled-new-array {v1, v1}, [I

    move-result-object v1

    sput-object v1, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_TIFF_INTEL:[I

    const/16 v1, 0x37

    .line 121
    filled-new-array {v2, v1}, [I

    move-result-object v1

    sput-object v1, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PAM:[I

    const/16 v1, 0x38

    .line 122
    filled-new-array {v1, v0}, [I

    move-result-object v1

    sput-object v1, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PSD:[I

    const/16 v1, 0x31

    .line 123
    filled-new-array {v2, v1}, [I

    move-result-object v1

    sput-object v1, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PBM_A:[I

    const/16 v1, 0x34

    .line 124
    filled-new-array {v2, v1}, [I

    move-result-object v1

    sput-object v1, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PBM_B:[I

    const/16 v1, 0x32

    .line 125
    filled-new-array {v2, v1}, [I

    move-result-object v3

    sput-object v3, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PGM_A:[I

    const/16 v3, 0x35

    .line 126
    filled-new-array {v2, v3}, [I

    move-result-object v3

    sput-object v3, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PGM_B:[I

    const/16 v3, 0x33

    .line 127
    filled-new-array {v2, v3}, [I

    move-result-object v3

    sput-object v3, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PPM_A:[I

    const/16 v3, 0x36

    .line 128
    filled-new-array {v2, v3}, [I

    move-result-object v2

    sput-object v2, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PPM_B:[I

    const/16 v2, 0x97

    const/16 v3, 0x4a

    .line 129
    filled-new-array {v2, v3}, [I

    move-result-object v2

    sput-object v2, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_JBIG2_1:[I

    .line 130
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_JBIG2_2:[I

    const/16 v0, 0x69

    const/16 v1, 0x63

    .line 131
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_ICNS:[I

    const/16 v0, 0xb1

    const/16 v1, 0x68

    .line 132
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_DCX:[I

    const/16 v0, 0x23

    const/16 v1, 0x3f

    .line 133
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_RGBE:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compareBytePair([I[I)Z
    .locals 3

    .line 227
    array-length v0, p0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    array-length v0, p1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Invalid Byte Pair."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 230
    aget v1, p0, v0

    aget v2, p1, v0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    aget p0, p0, v1

    aget p1, p1, v1

    if-ne p0, p1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public static dumpImageFile(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1148
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lorg/apache/commons/imaging/Imaging;->dumpImageFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static dumpImageFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1153
    invoke-static {p0}, Lorg/apache/commons/imaging/Imaging;->getImageParser(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageParser;

    move-result-object v0

    .line 1155
    invoke-virtual {v0, p0}, Lorg/apache/commons/imaging/ImageParser;->dumpImageFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dumpImageFile([B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1132
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-static {v0}, Lorg/apache/commons/imaging/Imaging;->dumpImageFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAllBufferedImages(Ljava/io/File;)Ljava/util/List;
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

    .line 1240
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lorg/apache/commons/imaging/Imaging;->getAllBufferedImages(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getAllBufferedImages(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
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

    .line 1208
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/commons/imaging/Imaging;->getAllBufferedImages(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getAllBufferedImages(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/util/List;
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

    .line 1246
    invoke-static {p0}, Lorg/apache/commons/imaging/Imaging;->getImageParser(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageParser;

    move-result-object v0

    .line 1248
    invoke-virtual {v0, p0}, Lorg/apache/commons/imaging/ImageParser;->getAllBufferedImages(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getAllBufferedImages([B)Ljava/util/List;
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

    .line 1224
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-static {v0}, Lorg/apache/commons/imaging/Imaging;->getAllBufferedImages(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getBufferedImage(Ljava/io/File;)Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1370
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lorg/apache/commons/imaging/Imaging;->getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static getBufferedImage(Ljava/io/File;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
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

    .line 1395
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/Imaging;->getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static getBufferedImage(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1270
    invoke-static {p0, v0}, Lorg/apache/commons/imaging/Imaging;->getBufferedImage(Ljava/io/InputStream;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static getBufferedImage(Ljava/io/InputStream;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
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

    if-eqz p1, :cond_0

    .line 1298
    const-string v0, "FILENAME"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1299
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1301
    :goto_0
    new-instance v1, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lorg/apache/commons/imaging/Imaging;->getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method private static getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 1
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

    .line 1402
    invoke-static {p0}, Lorg/apache/commons/imaging/Imaging;->getImageParser(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageParser;

    move-result-object v0

    if-nez p1, :cond_0

    .line 1404
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1407
    :cond_0
    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/imaging/ImageParser;->getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static getBufferedImage([B)Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1321
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lorg/apache/commons/imaging/Imaging;->getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static getBufferedImage([BLjava/util/Map;)Ljava/awt/image/BufferedImage;
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

    .line 1347
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/Imaging;->getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static getFormatCompliance(Ljava/io/File;)Lorg/apache/commons/imaging/FormatCompliance;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1185
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lorg/apache/commons/imaging/Imaging;->getFormatCompliance(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object p0

    return-object p0
.end method

.method private static getFormatCompliance(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/FormatCompliance;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1190
    invoke-static {p0}, Lorg/apache/commons/imaging/Imaging;->getImageParser(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageParser;

    move-result-object v0

    .line 1192
    invoke-virtual {v0, p0}, Lorg/apache/commons/imaging/ImageParser;->getFormatCompliance(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object p0

    return-object p0
.end method

.method public static getFormatCompliance([B)Lorg/apache/commons/imaging/FormatCompliance;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1170
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-static {v0}, Lorg/apache/commons/imaging/Imaging;->getFormatCompliance(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object p0

    return-object p0
.end method

.method public static getICCProfile(Ljava/io/File;)Ljava/awt/color/ICC_Profile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 435
    invoke-static {p0, v0}, Lorg/apache/commons/imaging/Imaging;->getICCProfile(Ljava/io/File;Ljava/util/Map;)Ljava/awt/color/ICC_Profile;

    move-result-object p0

    return-object p0
.end method

.method public static getICCProfile(Ljava/io/File;Ljava/util/Map;)Ljava/awt/color/ICC_Profile;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/color/ICC_Profile;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/Imaging;->getICCProfile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/color/ICC_Profile;

    move-result-object p0

    return-object p0
.end method

.method public static getICCProfile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/awt/color/ICC_Profile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 401
    invoke-static {p0, p1, v0}, Lorg/apache/commons/imaging/Imaging;->getICCProfile(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Ljava/awt/color/ICC_Profile;

    move-result-object p0

    return-object p0
.end method

.method public static getICCProfile(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Ljava/awt/color/ICC_Profile;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/color/ICC_Profile;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lorg/apache/commons/imaging/Imaging;->getICCProfile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/color/ICC_Profile;

    move-result-object p0

    return-object p0
.end method

.method protected static getICCProfile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/color/ICC_Profile;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/color/ICC_Profile;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 457
    invoke-static {p0, p1}, Lorg/apache/commons/imaging/Imaging;->getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)[B

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 462
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/icc/IccProfileParser;

    invoke-direct {v0}, Lorg/apache/commons/imaging/icc/IccProfileParser;-><init>()V

    .line 463
    invoke-virtual {v0, p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getICCProfileInfo([B)Lorg/apache/commons/imaging/icc/IccProfileInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p1

    .line 467
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->issRGB()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    .line 471
    :cond_2
    invoke-static {p0}, Ljava/awt/color/ICC_Profile;->getInstance([B)Ljava/awt/color/ICC_Profile;

    move-result-object p0

    return-object p0
.end method

.method public static getICCProfile([B)Ljava/awt/color/ICC_Profile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 367
    invoke-static {p0, v0}, Lorg/apache/commons/imaging/Imaging;->getICCProfile([BLjava/util/Map;)Ljava/awt/color/ICC_Profile;

    move-result-object p0

    return-object p0
.end method

.method public static getICCProfile([BLjava/util/Map;)Ljava/awt/color/ICC_Profile;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/color/ICC_Profile;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/Imaging;->getICCProfile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/color/ICC_Profile;

    move-result-object p0

    return-object p0
.end method

.method public static getICCProfileBytes(Ljava/io/File;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 530
    invoke-static {p0, v0}, Lorg/apache/commons/imaging/Imaging;->getICCProfileBytes(Ljava/io/File;Ljava/util/Map;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getICCProfileBytes(Ljava/io/File;Ljava/util/Map;)[B
    .locals 1
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

    .line 551
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/Imaging;->getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)[B

    move-result-object p0

    return-object p0
.end method

.method private static getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)[B
    .locals 1
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

    .line 556
    invoke-static {p0}, Lorg/apache/commons/imaging/Imaging;->getImageParser(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageParser;

    move-result-object v0

    .line 558
    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/imaging/ImageParser;->getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getICCProfileBytes([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 490
    invoke-static {p0, v0}, Lorg/apache/commons/imaging/Imaging;->getICCProfileBytes([BLjava/util/Map;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getICCProfileBytes([BLjava/util/Map;)[B
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

    .line 511
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/Imaging;->getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getImageInfo(Ljava/io/File;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 726
    invoke-static {p0, v0}, Lorg/apache/commons/imaging/Imaging;->getImageInfo(Ljava/io/File;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getImageInfo(Ljava/io/File;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;
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

    .line 707
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/Imaging;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getImageInfo(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 623
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lorg/apache/commons/imaging/Imaging;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getImageInfo(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
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

    .line 646
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lorg/apache/commons/imaging/Imaging;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getImageInfo(Ljava/lang/String;[B)Lorg/apache/commons/imaging/ImageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 602
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>(Ljava/lang/String;[B)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lorg/apache/commons/imaging/Imaging;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getImageInfo(Ljava/lang/String;[BLjava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
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

    .line 581
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>(Ljava/lang/String;[B)V

    invoke-static {v0, p2}, Lorg/apache/commons/imaging/Imaging;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object p0

    return-object p0
.end method

.method private static getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 1
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

    .line 731
    invoke-static {p0}, Lorg/apache/commons/imaging/Imaging;->getImageParser(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageParser;

    move-result-object v0

    .line 733
    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/imaging/ImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getImageInfo([B)Lorg/apache/commons/imaging/ImageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 665
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lorg/apache/commons/imaging/Imaging;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getImageInfo([BLjava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;
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

    .line 686
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/Imaging;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object p0

    return-object p0
.end method

.method private static getImageParser(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageParser;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 738
    invoke-static {p0}, Lorg/apache/commons/imaging/Imaging;->guessFormat(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageFormat;

    move-result-object v0

    .line 739
    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->UNKNOWN:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 741
    invoke-static {}, Lorg/apache/commons/imaging/ImageParser;->getAllImageParsers()[Lorg/apache/commons/imaging/ImageParser;

    move-result-object v1

    .line 743
    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 744
    invoke-virtual {v5, v0}, Lorg/apache/commons/imaging/ImageParser;->canAcceptType(Lorg/apache/commons/imaging/ImageFormat;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-object v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 750
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getFilename()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 752
    invoke-static {}, Lorg/apache/commons/imaging/ImageParser;->getAllImageParsers()[Lorg/apache/commons/imaging/ImageParser;

    move-result-object v0

    .line 754
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 755
    invoke-virtual {v3, p0}, Lorg/apache/commons/imaging/ImageParser;->canAcceptExtension(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 761
    :cond_3
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Can\'t parse this format."

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getImageSize(Ljava/io/File;)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 834
    invoke-static {p0, v0}, Lorg/apache/commons/imaging/Imaging;->getImageSize(Ljava/io/File;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object p0

    return-object p0
.end method

.method public static getImageSize(Ljava/io/File;Ljava/util/Map;)Ljava/awt/Dimension;
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

    .line 849
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/Imaging;->getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object p0

    return-object p0
.end method

.method public static getImageSize(Ljava/io/InputStream;Ljava/lang/String;)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 776
    invoke-static {p0, p1, v0}, Lorg/apache/commons/imaging/Imaging;->getImageSize(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object p0

    return-object p0
.end method

.method public static getImageSize(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
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

    .line 793
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lorg/apache/commons/imaging/Imaging;->getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object p0

    return-object p0
.end method

.method public static getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 1
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

    .line 854
    invoke-static {p0}, Lorg/apache/commons/imaging/Imaging;->getImageParser(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageParser;

    move-result-object v0

    .line 856
    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/imaging/ImageParser;->getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object p0

    return-object p0
.end method

.method public static getImageSize([B)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 806
    invoke-static {p0, v0}, Lorg/apache/commons/imaging/Imaging;->getImageSize([BLjava/util/Map;)Ljava/awt/Dimension;

    move-result-object p0

    return-object p0
.end method

.method public static getImageSize([BLjava/util/Map;)Ljava/awt/Dimension;
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

    .line 821
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/Imaging;->getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object p0

    return-object p0
.end method

.method public static getMetadata(Ljava/io/File;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1084
    invoke-static {p0, v0}, Lorg/apache/commons/imaging/Imaging;->getMetadata(Ljava/io/File;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static getMetadata(Ljava/io/File;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 1
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

    .line 1109
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/Imaging;->getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static getMetadata(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1034
    invoke-static {p0, p1, v0}, Lorg/apache/commons/imaging/Imaging;->getMetadata(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static getMetadata(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
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

    .line 1061
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lorg/apache/commons/imaging/Imaging;->getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object p0

    return-object p0
.end method

.method private static getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 1
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

    .line 1114
    invoke-static {p0}, Lorg/apache/commons/imaging/Imaging;->getImageParser(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageParser;

    move-result-object v0

    .line 1116
    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/imaging/ImageParser;->getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static getMetadata([B)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 984
    invoke-static {p0, v0}, Lorg/apache/commons/imaging/Imaging;->getMetadata([BLjava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static getMetadata([BLjava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;
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

    .line 1009
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/Imaging;->getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static getXmpXml(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 929
    invoke-static {p0, v0}, Lorg/apache/commons/imaging/Imaging;->getXmpXml(Ljava/io/File;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getXmpXml(Ljava/io/File;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
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

    .line 944
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/Imaging;->getXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getXmpXml(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 871
    invoke-static {p0, p1, v0}, Lorg/apache/commons/imaging/Imaging;->getXmpXml(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getXmpXml(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
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

    .line 888
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lorg/apache/commons/imaging/Imaging;->getXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
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

    .line 959
    invoke-static {p0}, Lorg/apache/commons/imaging/Imaging;->getImageParser(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageParser;

    move-result-object v0

    .line 961
    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/imaging/ImageParser;->getXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getXmpXml([B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 901
    invoke-static {p0, v0}, Lorg/apache/commons/imaging/Imaging;->getXmpXml([BLjava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getXmpXml([BLjava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
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

    .line 916
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/Imaging;->getXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static guessFormat(Ljava/io/File;)Lorg/apache/commons/imaging/ImageFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lorg/apache/commons/imaging/Imaging;->guessFormat(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageFormat;

    move-result-object p0

    return-object p0
.end method

.method public static guessFormat(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageFormat;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    .line 257
    sget-object p0, Lorg/apache/commons/imaging/ImageFormats;->UNKNOWN:Lorg/apache/commons/imaging/ImageFormats;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 263
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 265
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 266
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 267
    const-string v4, "Couldn\'t read magic numbers to guess format."

    if-ltz v2, :cond_14

    if-ltz v3, :cond_14

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v3, v3, 0xff

    .line 274
    :try_start_2
    filled-new-array {v2, v3}, [I

    move-result-object v2

    .line 276
    sget-object v3, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_GIF:[I

    invoke-static {v3, v2}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_1

    .line 278
    :try_start_3
    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->GIF:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 351
    new-array v3, v1, [Ljava/io/Closeable;

    aput-object p0, v3, v0

    invoke-static {v1, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v2

    :catchall_0
    move-exception v2

    move v3, v1

    goto/16 :goto_1

    .line 284
    :cond_1
    :try_start_4
    sget-object v3, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PNG:[I

    invoke-static {v3, v2}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_2

    .line 286
    :try_start_5
    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->PNG:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 351
    new-array v3, v1, [Ljava/io/Closeable;

    aput-object p0, v3, v0

    invoke-static {v1, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v2

    .line 287
    :cond_2
    :try_start_6
    sget-object v3, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_JPEG:[I

    invoke-static {v3, v2}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v3, :cond_3

    .line 289
    :try_start_7
    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->JPEG:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 351
    new-array v3, v1, [Ljava/io/Closeable;

    aput-object p0, v3, v0

    invoke-static {v1, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v2

    .line 290
    :cond_3
    :try_start_8
    sget-object v3, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_BMP:[I

    invoke-static {v3, v2}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v3, :cond_4

    .line 292
    :try_start_9
    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->BMP:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 351
    new-array v3, v1, [Ljava/io/Closeable;

    aput-object p0, v3, v0

    invoke-static {v1, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v2

    .line 293
    :cond_4
    :try_start_a
    sget-object v3, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_TIFF_MOTOROLA:[I

    invoke-static {v3, v2}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v3, :cond_5

    .line 295
    :try_start_b
    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->TIFF:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 351
    new-array v3, v1, [Ljava/io/Closeable;

    aput-object p0, v3, v0

    invoke-static {v1, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v2

    .line 296
    :cond_5
    :try_start_c
    sget-object v3, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_TIFF_INTEL:[I

    invoke-static {v3, v2}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v3, :cond_6

    .line 298
    :try_start_d
    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->TIFF:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 351
    new-array v3, v1, [Ljava/io/Closeable;

    aput-object p0, v3, v0

    invoke-static {v1, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v2

    .line 299
    :cond_6
    :try_start_e
    sget-object v3, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PSD:[I

    invoke-static {v3, v2}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v3, :cond_7

    .line 301
    :try_start_f
    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->PSD:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 351
    new-array v3, v1, [Ljava/io/Closeable;

    aput-object p0, v3, v0

    invoke-static {v1, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v2

    .line 302
    :cond_7
    :try_start_10
    sget-object v3, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PAM:[I

    invoke-static {v3, v2}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-eqz v3, :cond_8

    .line 304
    :try_start_11
    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->PAM:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 351
    new-array v3, v1, [Ljava/io/Closeable;

    aput-object p0, v3, v0

    invoke-static {v1, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v2

    .line 305
    :cond_8
    :try_start_12
    sget-object v3, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PBM_A:[I

    invoke-static {v3, v2}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    if-eqz v3, :cond_9

    .line 307
    :try_start_13
    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->PBM:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 351
    new-array v3, v1, [Ljava/io/Closeable;

    aput-object p0, v3, v0

    invoke-static {v1, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v2

    .line 308
    :cond_9
    :try_start_14
    sget-object v3, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PBM_B:[I

    invoke-static {v3, v2}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    if-eqz v3, :cond_a

    .line 310
    :try_start_15
    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->PBM:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 351
    new-array v3, v1, [Ljava/io/Closeable;

    aput-object p0, v3, v0

    invoke-static {v1, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v2

    .line 311
    :cond_a
    :try_start_16
    sget-object v3, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PGM_A:[I

    invoke-static {v3, v2}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    if-eqz v3, :cond_b

    .line 313
    :try_start_17
    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->PGM:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 351
    new-array v3, v1, [Ljava/io/Closeable;

    aput-object p0, v3, v0

    invoke-static {v1, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v2

    .line 314
    :cond_b
    :try_start_18
    sget-object v3, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PGM_B:[I

    invoke-static {v3, v2}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    if-eqz v3, :cond_c

    .line 316
    :try_start_19
    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->PGM:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 351
    new-array v3, v1, [Ljava/io/Closeable;

    aput-object p0, v3, v0

    invoke-static {v1, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v2

    .line 317
    :cond_c
    :try_start_1a
    sget-object v3, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PPM_A:[I

    invoke-static {v3, v2}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    if-eqz v3, :cond_d

    .line 319
    :try_start_1b
    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->PPM:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 351
    new-array v3, v1, [Ljava/io/Closeable;

    aput-object p0, v3, v0

    invoke-static {v1, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v2

    .line 320
    :cond_d
    :try_start_1c
    sget-object v3, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PPM_B:[I

    invoke-static {v3, v2}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v3
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    if-eqz v3, :cond_e

    .line 322
    :try_start_1d
    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->PPM:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 351
    new-array v3, v1, [Ljava/io/Closeable;

    aput-object p0, v3, v0

    invoke-static {v1, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v2

    .line 323
    :cond_e
    :try_start_1e
    sget-object v3, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_JBIG2_1:[I

    invoke-static {v3, v2}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 324
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 325
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ltz v2, :cond_f

    if-ltz v3, :cond_f

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v3, v3, 0xff

    .line 333
    filled-new-array {v2, v3}, [I

    move-result-object v2

    .line 334
    sget-object v3, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_JBIG2_2:[I

    invoke-static {v3, v2}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    if-eqz v2, :cond_13

    .line 336
    :try_start_1f
    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->JBIG2:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 351
    new-array v3, v1, [Ljava/io/Closeable;

    aput-object p0, v3, v0

    invoke-static {v1, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v2

    .line 327
    :cond_f
    :try_start_20
    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    invoke-direct {v2, v4}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 338
    :cond_10
    sget-object v3, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_ICNS:[I

    invoke-static {v3, v2}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v3
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    if-eqz v3, :cond_11

    .line 340
    :try_start_21
    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->ICNS:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 351
    new-array v3, v1, [Ljava/io/Closeable;

    aput-object p0, v3, v0

    invoke-static {v1, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v2

    .line 341
    :cond_11
    :try_start_22
    sget-object v3, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_DCX:[I

    invoke-static {v3, v2}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v3
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    if-eqz v3, :cond_12

    .line 343
    :try_start_23
    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->DCX:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    .line 351
    new-array v3, v1, [Ljava/io/Closeable;

    aput-object p0, v3, v0

    invoke-static {v1, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v2

    .line 344
    :cond_12
    :try_start_24
    sget-object v3, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_RGBE:[I

    invoke-static {v3, v2}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    if-eqz v2, :cond_13

    .line 346
    :try_start_25
    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->RGBE:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    .line 351
    new-array v3, v1, [Ljava/io/Closeable;

    aput-object p0, v3, v0

    invoke-static {v1, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v2

    .line 349
    :cond_13
    :try_start_26
    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->UNKNOWN:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    .line 351
    new-array v3, v1, [Ljava/io/Closeable;

    aput-object p0, v3, v0

    invoke-static {v1, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v2

    .line 268
    :cond_14
    :try_start_27
    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    invoke-direct {v2, v4}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1

    :catchall_1
    move-exception v2

    goto :goto_0

    :catchall_2
    move-exception v2

    const/4 p0, 0x0

    :goto_0
    move v3, v0

    .line 351
    :goto_1
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object p0, v1, v0

    invoke-static {v3, v1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v2
.end method

.method public static guessFormat([B)Lorg/apache/commons/imaging/ImageFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-static {v0}, Lorg/apache/commons/imaging/Imaging;->guessFormat(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageFormat;

    move-result-object p0

    return-object p0
.end method

.method public static hasImageFileExtension(Ljava/io/File;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 150
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/imaging/Imaging;->hasImageFileExtension(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static hasImageFileExtension(Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 170
    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 172
    invoke-static {}, Lorg/apache/commons/imaging/ImageParser;->getAllImageParsers()[Lorg/apache/commons/imaging/ImageParser;

    move-result-object v1

    .line 173
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 174
    invoke-virtual {v4}, Lorg/apache/commons/imaging/ImageParser;->getAcceptedExtensions()[Ljava/lang/String;

    move-result-object v4

    .line 176
    array-length v5, v4

    move v6, v0

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 177
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static writeImage(Ljava/awt/image/BufferedImage;Ljava/io/File;Lorg/apache/commons/imaging/ImageFormat;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/image/BufferedImage;",
            "Ljava/io/File;",
            "Lorg/apache/commons/imaging/ImageFormat;",
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

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1439
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1440
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1442
    :try_start_2
    invoke-static {p0, v1, p2, p3}, Lorg/apache/commons/imaging/Imaging;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/ImageFormat;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1445
    new-array p0, v0, [Ljava/io/Closeable;

    aput-object v1, p0, v2

    invoke-static {v0, p0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v1, p1, v2

    invoke-static {v2, p1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0
.end method

.method public static writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/ImageFormat;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/image/BufferedImage;",
            "Ljava/io/OutputStream;",
            "Lorg/apache/commons/imaging/ImageFormat;",
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

    .line 1510
    invoke-static {}, Lorg/apache/commons/imaging/ImageParser;->getAllImageParsers()[Lorg/apache/commons/imaging/ImageParser;

    move-result-object v0

    if-nez p3, :cond_0

    .line 1514
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 1517
    :cond_0
    const-string v1, "FORMAT"

    invoke-interface {p3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 1521
    invoke-virtual {v3, p2}, Lorg/apache/commons/imaging/ImageParser;->canAcceptType(Lorg/apache/commons/imaging/ImageFormat;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 1527
    invoke-virtual {v3, p0, p1, p3}, Lorg/apache/commons/imaging/ImageParser;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V

    return-void

    .line 1529
    :cond_3
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Unknown Format: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static writeImageToBytes(Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/ImageFormat;Ljava/util/Map;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/image/BufferedImage;",
            "Lorg/apache/commons/imaging/ImageFormat;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1476
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1478
    invoke-static {p0, v0, p1, p2}, Lorg/apache/commons/imaging/Imaging;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/ImageFormat;Ljava/util/Map;)V

    .line 1480
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

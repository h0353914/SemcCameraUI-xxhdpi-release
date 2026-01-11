.class public Lorg/apache/commons/imaging/formats/jpeg/segments/App14Segment;
.super Lorg/apache/commons/imaging/formats/jpeg/segments/AppnSegment;
.source "App14Segment.java"


# static fields
.field public static final ADOBE_COLOR_TRANSFORM_UNKNOWN:I = 0x0

.field public static final ADOBE_COLOR_TRANSFORM_YCCK:I = 0x2

.field public static final ADOBE_COLOR_TRANSFORM_YCbCr:I = 0x1

.field private static final ADOBE_PREFIX:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    :try_start_0
    const-string v0, "Adobe"

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/segments/App14Segment;->ADOBE_PREFIX:[B

    return-void
.end method

.method public constructor <init>(IILjava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/segments/AppnSegment;-><init>(IILjava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    array-length v0, p2

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/imaging/formats/jpeg/segments/App14Segment;-><init>(IILjava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public getAdobeColorTransform()I
    .locals 1

    const/16 v0, 0xb

    .line 57
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/jpeg/segments/App14Segment;->getSegmentData(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public isAdobeJpegSegment()Z
    .locals 1

    .line 53
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/App14Segment;->getSegmentData()[B

    move-result-object p0

    sget-object v0, Lorg/apache/commons/imaging/formats/jpeg/segments/App14Segment;->ADOBE_PREFIX:[B

    invoke-static {p0, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->startsWith([B[B)Z

    move-result p0

    return p0
.end method

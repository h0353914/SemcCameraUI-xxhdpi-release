.class public Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterPaeth;
.super Ljava/lang/Object;
.source "ScanlineFilterPaeth.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilter;


# instance fields
.field private final bytesPerPixel:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterPaeth;->bytesPerPixel:I

    return-void
.end method

.method private paethPredictor(III)I
    .locals 2

    add-int p0, p1, p2

    sub-int/2addr p0, p3

    sub-int v0, p0, p1

    .line 33
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v1, p0, p2

    .line 34
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int/2addr p0, p3

    .line 35
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-gt v0, v1, :cond_0

    if-gt v0, p0, :cond_0

    return p1

    :cond_0
    if-gt v1, p0, :cond_1

    return p2

    :cond_1
    return p3
.end method


# virtual methods
.method public unfilter([B[B[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 49
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 51
    iget v2, p0, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterPaeth;->bytesPerPixel:I

    sub-int v2, v1, v2

    if-ltz v2, :cond_0

    .line 53
    aget-byte v3, p2, v2

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    if-eqz p3, :cond_1

    .line 58
    aget-byte v4, p3, v1

    goto :goto_2

    :cond_1
    move v4, v0

    :goto_2
    if-ltz v2, :cond_2

    if-eqz p3, :cond_2

    .line 64
    aget-byte v2, p3, v2

    goto :goto_3

    :cond_2
    move v2, v0

    :goto_3
    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v2, v2, 0xff

    .line 68
    invoke-direct {p0, v3, v4, v2}, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterPaeth;->paethPredictor(III)I

    move-result v2

    .line 70
    aget-byte v3, p1, v1

    add-int/2addr v3, v2

    rem-int/lit16 v3, v3, 0x100

    int-to-byte v2, v3

    aput-byte v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

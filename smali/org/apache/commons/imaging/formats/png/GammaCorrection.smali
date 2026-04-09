.class public Lorg/apache/commons/imaging/formats/png/GammaCorrection;
.super Ljava/lang/Object;
.source "GammaCorrection.java"


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private final lookupTable:[I


# direct methods
.method public constructor <init>(DD)V
    .locals 9

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 31
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->lookupTable:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 33
    iget-object v8, p0, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->lookupTable:[I

    move-object v2, p0

    move v3, v1

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->correctSample(IDD)I

    move-result v2

    aput v2, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private correctSample(IDD)I
    .locals 2

    int-to-double p0, p1

    const-wide v0, 0x406fe00000000000L    # 255.0

    div-double/2addr p0, v0

    div-double/2addr p2, p4

    .line 65
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method


# virtual methods
.method public correctARGB(I)I
    .locals 4

    const/high16 v0, -0x1000000

    and-int/2addr v0, p1

    shr-int/lit8 v1, p1, 0x10

    const/16 v2, 0xff

    and-int/2addr v1, v2

    shr-int/lit8 v3, p1, 0x8

    and-int/2addr v3, v2

    shr-int/lit8 p1, p1, 0x0

    and-int/2addr p1, v2

    .line 50
    invoke-virtual {p0, v1}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->correctSample(I)I

    move-result v1

    .line 51
    invoke-virtual {p0, v3}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->correctSample(I)I

    move-result v3

    .line 52
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->correctSample(I)I

    move-result p0

    and-int p1, v2, v1

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v0

    and-int v0, v2, v3

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    and-int/2addr p0, v2

    shl-int/lit8 p0, p0, 0x0

    or-int/2addr p0, p1

    return p0
.end method

.method public correctSample(I)I
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->lookupTable:[I

    aget p0, p0, p1

    return p0
.end method

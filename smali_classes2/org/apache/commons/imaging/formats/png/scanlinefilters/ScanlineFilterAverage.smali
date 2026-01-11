.class public Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterAverage;
.super Ljava/lang/Object;
.source "ScanlineFilterAverage.java"

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
    iput p1, p0, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterAverage;->bytesPerPixel:I

    return-void
.end method


# virtual methods
.method public unfilter([B[B[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 32
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 34
    iget v2, p0, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterAverage;->bytesPerPixel:I

    sub-int v2, v1, v2

    if-ltz v2, :cond_0

    .line 36
    aget-byte v2, p2, v2

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    if-eqz p3, :cond_1

    .line 41
    aget-byte v3, p3, v1

    goto :goto_2

    :cond_1
    move v3, v0

    :goto_2
    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    .line 44
    div-int/lit8 v2, v2, 0x2

    .line 46
    aget-byte v3, p1, v1

    add-int/2addr v3, v2

    rem-int/lit16 v3, v3, 0x100

    int-to-byte v2, v3

    aput-byte v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.class public Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterUp;
.super Ljava/lang/Object;
.source "ScanlineFilterUp.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public unfilter([B[B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 27
    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_1

    if-eqz p3, :cond_0

    .line 31
    aget-byte v0, p1, p0

    aget-byte v1, p3, p0

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x100

    int-to-byte v0, v0

    aput-byte v0, p2, p0

    goto :goto_1

    .line 33
    :cond_0
    aget-byte v0, p1, p0

    aput-byte v0, p2, p0

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

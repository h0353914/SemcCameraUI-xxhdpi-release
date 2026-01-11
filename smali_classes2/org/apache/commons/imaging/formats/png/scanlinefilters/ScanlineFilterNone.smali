.class public Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterNone;
.super Ljava/lang/Object;
.source "ScanlineFilterNone.java"

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 27
    array-length p3, p1

    invoke-static {p1, p0, p2, p0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.class final Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$1;
.super Ljava/lang/Object;
.source "TiffImageWriterLossless.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/imaging/formats/tiff/TiffElement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 49
    check-cast p1, Lorg/apache/commons/imaging/formats/tiff/TiffElement;

    check-cast p2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$1;->compare(Lorg/apache/commons/imaging/formats/tiff/TiffElement;Lorg/apache/commons/imaging/formats/tiff/TiffElement;)I

    move-result p0

    return p0
.end method

.method public compare(Lorg/apache/commons/imaging/formats/tiff/TiffElement;Lorg/apache/commons/imaging/formats/tiff/TiffElement;)I
    .locals 0

    .line 51
    iget p0, p1, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    iget p1, p2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    sub-int/2addr p0, p1

    return p0
.end method

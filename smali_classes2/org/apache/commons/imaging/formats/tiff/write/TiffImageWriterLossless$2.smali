.class final Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$2;
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
        "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 54
    check-cast p1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    check-cast p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$2;->compare(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;)I

    move-result p0

    return p0
.end method

.method public compare(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;)I
    .locals 0

    .line 56
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->getItemLength()I

    move-result p0

    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->getItemLength()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

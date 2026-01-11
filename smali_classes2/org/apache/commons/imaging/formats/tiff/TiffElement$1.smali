.class final Lorg/apache/commons/imaging/formats/tiff/TiffElement$1;
.super Ljava/lang/Object;
.source "TiffElement.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/tiff/TiffElement;
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

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 24
    check-cast p1, Lorg/apache/commons/imaging/formats/tiff/TiffElement;

    check-cast p2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$1;->compare(Lorg/apache/commons/imaging/formats/tiff/TiffElement;Lorg/apache/commons/imaging/formats/tiff/TiffElement;)I

    move-result p0

    return p0
.end method

.method public compare(Lorg/apache/commons/imaging/formats/tiff/TiffElement;Lorg/apache/commons/imaging/formats/tiff/TiffElement;)I
    .locals 4

    .line 26
    iget-wide v0, p1, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    iget-wide v2, p2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 28
    :cond_0
    iget-wide p0, p1, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    iget-wide v0, p2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    cmp-long p0, p0, v0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

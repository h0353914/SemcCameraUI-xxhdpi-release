.class final Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory$1;
.super Ljava/lang/Object;
.source "TiffOutputDirectory.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 64
    check-cast p1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    check-cast p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory$1;->compare(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;)I

    move-result p0

    return p0
.end method

.method public compare(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;)I
    .locals 1

    .line 66
    iget p0, p1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->type:I

    iget v0, p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->type:I

    if-ge p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 68
    :cond_0
    iget p0, p1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->type:I

    iget p1, p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->type:I

    if-le p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

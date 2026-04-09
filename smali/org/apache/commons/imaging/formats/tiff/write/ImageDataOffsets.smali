.class Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;
.super Ljava/lang/Object;
.source "ImageDataOffsets.java"


# instance fields
.field final imageDataOffsets:[I

.field final imageDataOffsetsField:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

.field final outputItems:[Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;


# direct methods
.method constructor <init>([Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;[ILorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;->imageDataOffsets:[I

    .line 30
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;->imageDataOffsetsField:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    .line 32
    array-length p2, p1

    new-array p2, p2, [Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;->outputItems:[Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    const/4 p2, 0x0

    .line 33
    :goto_0
    array-length p3, p1

    if-ge p2, p3, :cond_0

    .line 34
    new-instance p3, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

    const-string v0, "TIFF image data"

    aget-object v1, p1, p2

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;->getData()[B

    move-result-object v1

    invoke-direct {p3, v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;-><init>(Ljava/lang/String;[B)V

    .line 36
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;->outputItems:[Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    aput-object p3, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

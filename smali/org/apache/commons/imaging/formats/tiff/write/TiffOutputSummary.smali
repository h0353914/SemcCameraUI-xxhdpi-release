.class Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;
.super Ljava/lang/Object;
.source "TiffOutputSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary$OffsetItem;
    }
.end annotation


# instance fields
.field public final byteOrder:Ljava/nio/ByteOrder;

.field public final directoryTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;",
            ">;"
        }
    .end annotation
.end field

.field private final imageDataItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;",
            ">;"
        }
    .end annotation
.end field

.field private final offsetItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary$OffsetItem;",
            ">;"
        }
    .end annotation
.end field

.field public final rootDirectory:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;


# direct methods
.method public constructor <init>(Ljava/nio/ByteOrder;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteOrder;",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->offsetItems:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->imageDataItems:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->byteOrder:Ljava/nio/ByteOrder;

    .line 38
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->rootDirectory:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    .line 39
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->directoryTypeMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V
    .locals 1

    .line 56
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->offsetItems:Ljava/util/List;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary$OffsetItem;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary$OffsetItem;-><init>(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTiffImageData(Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;)V
    .locals 0

    .line 78
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->imageDataItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateOffsets(Ljava/nio/ByteOrder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->offsetItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary$OffsetItem;

    .line 61
    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    iget-object v3, v1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary$OffsetItem;->item:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->getOffset()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;->writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v2

    .line 63
    iget-object v1, v1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary$OffsetItem;->itemOffsetField:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    invoke-virtual {v1, v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->setData([B)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->imageDataItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;

    const/4 v1, 0x0

    .line 67
    :goto_2
    iget-object v2, v0, Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;->outputItems:[Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 68
    iget-object v2, v0, Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;->outputItems:[Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    aget-object v2, v2, v1

    .line 69
    iget-object v3, v0, Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;->imageDataOffsets:[I

    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->getOffset()J

    move-result-wide v4

    long-to-int v2, v4

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 72
    :cond_1
    iget-object v1, v0, Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;->imageDataOffsetsField:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;->imageDataOffsets:[I

    invoke-virtual {v2, v0, p1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;->writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->setData([B)V

    goto :goto_1

    :cond_2
    return-void
.end method

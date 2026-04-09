.class public Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;
.super Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;
.source "DqtSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;
    }
.end annotation


# instance fields
.field public final quantizationTables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/io/InputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;-><init>(II)V

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;->quantizationTables:Ljava/util/List;

    :goto_0
    if-lez p2, :cond_3

    const-string p1, "QuantizationTablePrecisionAndDestination"

    const-string v0, "Not a Valid JPEG File"

    .line 61
    invoke-static {p1, p3, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p1

    add-int/lit8 p2, p2, -0x1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    and-int/lit8 p1, p1, 0xf

    const/16 v1, 0x40

    .line 68
    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    if-nez v0, :cond_0

    const/16 v4, 0xff

    const-string v5, "QuantizationTableElement"

    const-string v6, "Not a Valid JPEG File"

    .line 71
    invoke-static {v5, p3, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v5

    and-int/2addr v4, v5

    aput v4, v2, v3

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_0
    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    const-string v4, "QuantizationTableElement"

    const-string v5, "Not a Valid JPEG File"

    .line 75
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-static {v4, p3, v5, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 p2, p2, -0x2

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 78
    :cond_1
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Quantization table precision \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\' is invalid"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 84
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;->quantizationTables:Ljava/util/List;

    new-instance v3, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;

    invoke-direct {v3, v0, p1, v2}, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;-><init>(II[I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    array-length v0, p2

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;-><init>(IILjava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DQT ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;->getSegmentType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

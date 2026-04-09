.class public Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;
.super Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;
.source "JfifSegment.java"


# instance fields
.field public final densityUnits:I

.field public final jfifMajorVersion:I

.field public final jfifMinorVersion:I

.field public final thumbnailSize:I

.field public final xDensity:I

.field public final xThumbnail:I

.field public final yDensity:I

.field public final yThumbnail:I


# direct methods
.method public constructor <init>(IILjava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;-><init>(II)V

    .line 53
    sget-object p1, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->JFIF0_SIGNATURE:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/BinaryConstant;->size()I

    move-result p1

    invoke-static {p3, p1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object p1

    .line 54
    sget-object p2, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->JFIF0_SIGNATURE:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-virtual {p2, p1}, Lorg/apache/commons/imaging/common/BinaryConstant;->equals([B)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->JFIF0_SIGNATURE_ALTERNATIVE:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-virtual {p2, p1}, Lorg/apache/commons/imaging/common/BinaryConstant;->equals([B)Z

    move-result p1

    if-nez p1, :cond_0

    .line 56
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Not a Valid JPEG File: missing JFIF string"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const-string p1, "JFIF_major_version"

    const-string p2, "Not a Valid JPEG File"

    .line 60
    invoke-static {p1, p3, p2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->jfifMajorVersion:I

    const-string p1, "JFIF_minor_version"

    const-string p2, "Not a Valid JPEG File"

    .line 62
    invoke-static {p1, p3, p2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->jfifMinorVersion:I

    const-string p1, "density_units"

    const-string p2, "Not a Valid JPEG File"

    .line 64
    invoke-static {p1, p3, p2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->densityUnits:I

    const-string p1, "x_density"

    const-string p2, "Not a Valid JPEG File"

    .line 65
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-static {p1, p3, p2, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->xDensity:I

    const-string p1, "y_density"

    const-string p2, "Not a Valid JPEG File"

    .line 66
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-static {p1, p3, p2, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->yDensity:I

    const-string p1, "x_thumbnail"

    const-string p2, "Not a Valid JPEG File"

    .line 68
    invoke-static {p1, p3, p2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->xThumbnail:I

    const-string p1, "y_thumbnail"

    const-string p2, "Not a Valid JPEG File"

    .line 69
    invoke-static {p1, p3, p2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->yThumbnail:I

    .line 70
    iget p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->xThumbnail:I

    iget p2, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->yThumbnail:I

    mul-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->thumbnailSize:I

    .line 71
    iget p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->thumbnailSize:I

    if-lez p1, :cond_1

    .line 72
    iget p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->thumbnailSize:I

    int-to-long p1, p1

    const-string v0, "Not a Valid JPEG File: missing thumbnail"

    invoke-static {p3, p1, p2, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;JLjava/lang/String;)V

    .line 77
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->getDebug()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 78
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
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

    .line 46
    array-length v0, p2

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;-><init>(IILjava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JFIF ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->getSegmentType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

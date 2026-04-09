.class public Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;
.super Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;
.source "SofnSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;
    }
.end annotation


# instance fields
.field private final components:[Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

.field public final height:I

.field public final numberOfComponents:I

.field public final precision:I

.field public final width:I


# direct methods
.method public constructor <init>(IILjava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;-><init>(II)V

    .line 57
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SOF0Segment marker_length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const-string p1, "Data_precision"

    const-string p2, "Not a Valid JPEG File"

    .line 61
    invoke-static {p1, p3, p2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->precision:I

    const-string p1, "Image_height"

    const-string p2, "Not a Valid JPEG File"

    .line 62
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-static {p1, p3, p2, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->height:I

    const-string p1, "Image_Width"

    const-string p2, "Not a Valid JPEG File"

    .line 63
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-static {p1, p3, p2, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->width:I

    const-string p1, "Number_of_components"

    const-string p2, "Not a Valid JPEG File"

    .line 64
    invoke-static {p1, p3, p2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    .line 66
    iget p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    new-array p1, p1, [Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->components:[Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    const/4 p1, 0x0

    .line 67
    :goto_0
    iget p2, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    if-ge p1, p2, :cond_1

    const-string p2, "ComponentIdentifier"

    const-string v0, "Not a Valid JPEG File"

    .line 68
    invoke-static {p2, p3, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p2

    const-string v0, "SamplingFactors"

    const-string v1, "Not a Valid JPEG File"

    .line 71
    invoke-static {v0, p3, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    shr-int/lit8 v1, v0, 0x4

    and-int/lit8 v1, v1, 0xf

    and-int/lit8 v0, v0, 0xf

    const-string v2, "QuantTabDestSel"

    const-string v3, "Not a Valid JPEG File"

    .line 75
    invoke-static {v2, p3, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    .line 77
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->components:[Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    new-instance v4, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    invoke-direct {v4, p2, v1, v0, v2}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;-><init>(IIII)V

    aput-object v4, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getDebug()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 83
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
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    array-length v0, p2

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;-><init>(IILjava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->components:[Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getComponents()[Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;
    .locals 0

    .line 92
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->components:[Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    invoke-virtual {p0}, [Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 3

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SOFN (SOF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->marker:I

    const v2, 0xffc0

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getSegmentType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

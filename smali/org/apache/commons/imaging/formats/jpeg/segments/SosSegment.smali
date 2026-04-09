.class public Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;
.super Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;
.source "SosSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;
    }
.end annotation


# instance fields
.field private final components:[Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;

.field public final endOfSpectralSelection:I

.field public final numberOfComponents:I

.field public final startOfSpectralSelection:I

.field public final successiveApproximationBitHigh:I

.field public final successiveApproximationBitLow:I


# direct methods
.method public constructor <init>(IILjava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;-><init>(II)V

    .line 53
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->getDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SosSegment marker_length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const-string p1, "number_of_components_in_scan"

    const-string p2, "Not a Valid JPEG File"

    .line 59
    invoke-static {p1, p3, p2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->numberOfComponents:I

    .line 64
    iget p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->numberOfComponents:I

    new-array p1, p1, [Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->components:[Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;

    const/4 p1, 0x0

    .line 65
    :goto_0
    iget p2, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->numberOfComponents:I

    if-ge p1, p2, :cond_1

    const-string p2, "scanComponentSelector"

    const-string v0, "Not a Valid JPEG File"

    .line 66
    invoke-static {p2, p3, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p2

    const-string v0, "acDcEntropoyCodingTableSelector"

    const-string v1, "Not a Valid JPEG File"

    .line 69
    invoke-static {v0, p3, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    shr-int/lit8 v1, v0, 0x4

    and-int/lit8 v1, v1, 0xf

    and-int/lit8 v0, v0, 0xf

    .line 77
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->components:[Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;

    new-instance v3, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;

    invoke-direct {v3, p2, v1, v0}, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;-><init>(III)V

    aput-object v3, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "start_of_spectral_selection"

    const-string p2, "Not a Valid JPEG File"

    .line 81
    invoke-static {p1, p3, p2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->startOfSpectralSelection:I

    const-string p1, "end_of_spectral_selection"

    const-string p2, "Not a Valid JPEG File"

    .line 84
    invoke-static {p1, p3, p2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->endOfSpectralSelection:I

    const-string p1, "successive_approximation_bit_position"

    const-string p2, "Not a Valid JPEG File"

    .line 87
    invoke-static {p1, p3, p2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p1

    shr-int/lit8 p2, p1, 0x4

    and-int/lit8 p2, p2, 0xf

    .line 92
    iput p2, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->successiveApproximationBitHigh:I

    and-int/lit8 p1, p1, 0xf

    .line 93
    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->successiveApproximationBitLow:I

    .line 95
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->getDebug()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 96
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

    .line 47
    array-length v0, p2

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;-><init>(IILjava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;
    .locals 0

    .line 114
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->components:[Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getComponents()[Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;
    .locals 0

    .line 105
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->components:[Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;

    invoke-virtual {p0}, [Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SOS ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->getSegmentType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

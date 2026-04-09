.class public Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;
.super Lorg/apache/commons/imaging/common/BinaryFileParser;
.source "PngChunk.java"


# instance fields
.field public final ancillary:Z

.field private final bytes:[B

.field public final chunkType:I

.field public final crc:I

.field public final isPrivate:Z

.field public final length:I

.field private final propertyBits:[Z

.field public final reserved:Z

.field public final safeToCopy:Z


# direct methods
.method public constructor <init>(III[B)V
    .locals 4

    .line 35
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;-><init>()V

    .line 36
    iput p1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->length:I

    .line 37
    iput p2, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->chunkType:I

    .line 38
    iput p3, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->crc:I

    .line 39
    iput-object p4, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->bytes:[B

    const/4 p1, 0x4

    .line 41
    new-array p3, p1, [Z

    iput-object p3, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->propertyBits:[Z

    const/4 p3, 0x0

    const/16 p4, 0x18

    move v0, p4

    move p4, p3

    :goto_0
    const/4 v1, 0x1

    if-ge p4, p1, :cond_1

    const/16 v2, 0xff

    shr-int v3, p2, v0

    and-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x8

    .line 47
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->propertyBits:[Z

    and-int/lit8 v2, v2, 0x20

    if-lez v2, :cond_0

    goto :goto_1

    :cond_0
    move v1, p3

    :goto_1
    aput-boolean v1, v3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 50
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->propertyBits:[Z

    aget-boolean p1, p1, p3

    iput-boolean p1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->ancillary:Z

    .line 51
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->propertyBits:[Z

    aget-boolean p1, p1, v1

    iput-boolean p1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->isPrivate:Z

    .line 52
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->propertyBits:[Z

    const/4 p2, 0x2

    aget-boolean p1, p1, p2

    iput-boolean p1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->reserved:Z

    .line 53
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->propertyBits:[Z

    const/4 p2, 0x3

    aget-boolean p1, p1, p2

    iput-boolean p1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->safeToCopy:Z

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->bytes:[B

    return-object p0
.end method

.method protected getDataStream()Ljava/io/ByteArrayInputStream;
    .locals 1

    .line 65
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->getBytes()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getPropertyBits()[Z
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->propertyBits:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0
.end method

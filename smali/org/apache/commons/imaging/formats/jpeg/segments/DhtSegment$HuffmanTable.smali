.class public Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;
.super Ljava/lang/Object;
.source "DhtSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HuffmanTable"
.end annotation


# instance fields
.field private final bits:[I

.field public final destinationIdentifier:I

.field private final huffCode:[I

.field private final huffSize:[I

.field private final huffVal:[I

.field private final maxCode:[I

.field private final minCode:[I

.field public final tableClass:I

.field private final valPtr:[I


# direct methods
.method public constructor <init>(II[I[I)V
    .locals 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    .line 39
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->huffSize:[I

    const/16 v0, 0x11

    .line 41
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->minCode:[I

    .line 42
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->maxCode:[I

    .line 43
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->valPtr:[I

    .line 47
    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->tableClass:I

    .line 48
    iput p2, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->destinationIdentifier:I

    .line 49
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->bits:[I

    .line 50
    iput-object p4, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->huffVal:[I

    const/4 p1, 0x0

    const/4 p2, 0x1

    move v1, p1

    move p4, p2

    move v0, p4

    .line 59
    :goto_0
    aget v2, p3, v0

    if-le p4, v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    const/16 p4, 0x10

    if-le v0, p4, :cond_4

    .line 63
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->huffSize:[I

    aput p1, v0, v1

    .line 78
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->huffSize:[I

    aget v0, v0, p1

    .line 79
    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->huffCode:[I

    move v1, p1

    move v2, v0

    move v0, v1

    .line 81
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->huffCode:[I

    aput v1, v3, v0

    add-int/2addr v1, p2

    add-int/lit8 v3, v0, 0x1

    .line 85
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->huffSize:[I

    aget v0, v0, v3

    if-ne v0, v2, :cond_0

    :goto_2
    move v0, v3

    goto :goto_1

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->huffSize:[I

    aget v0, v0, v3

    if-nez v0, :cond_3

    move v0, p1

    :goto_3
    add-int/2addr p1, p2

    if-le p1, p4, :cond_1

    return-void

    .line 105
    :cond_1
    aget v1, p3, p1

    if-nez v1, :cond_2

    .line 106
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->maxCode:[I

    const/4 v2, -0x1

    aput v2, v1, p1

    goto :goto_3

    .line 108
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->valPtr:[I

    aput v0, v1, p1

    .line 109
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->minCode:[I

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->huffCode:[I

    aget v2, v2, v0

    aput v2, v1, p1

    .line 110
    aget v1, p3, p1

    sub-int/2addr v1, p2

    add-int/2addr v0, v1

    .line 111
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->maxCode:[I

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->huffCode:[I

    aget v2, v2, v0

    aput v2, v1, p1

    add-int/2addr v0, p2

    goto :goto_3

    :cond_3
    shl-int/2addr v1, p2

    add-int/2addr v2, p2

    .line 94
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->huffSize:[I

    aget v0, v0, v3

    if-ne v0, v2, :cond_3

    goto :goto_2

    :cond_4
    move p4, p2

    goto :goto_0

    .line 68
    :cond_5
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->huffSize:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getBits()[I
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->bits:[I

    return-object p0
.end method

.method public getHuffCode()[I
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->huffCode:[I

    return-object p0
.end method

.method public getHuffSize()[I
    .locals 0

    .line 127
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->huffSize:[I

    return-object p0
.end method

.method public getHuffVal()[I
    .locals 0

    .line 123
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->huffVal:[I

    return-object p0
.end method

.method public getMaxCode()[I
    .locals 0

    .line 139
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->maxCode:[I

    return-object p0
.end method

.method public getMinCode()[I
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->minCode:[I

    return-object p0
.end method

.method public getValPtr()[I
    .locals 0

    .line 143
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->valPtr:[I

    return-object p0
.end method

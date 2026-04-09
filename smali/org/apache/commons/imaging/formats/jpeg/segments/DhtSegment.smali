.class public Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment;
.super Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;
.source "DhtSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;
    }
.end annotation


# instance fields
.field public final huffmanTables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/io/InputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;-><init>(II)V

    .line 155
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-lez p2, :cond_2

    const-string v0, "TableClassAndDestinationId"

    const-string v1, "Not a Valid JPEG File"

    .line 157
    invoke-static {v0, p3, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    add-int/lit8 p2, p2, -0x1

    shr-int/lit8 v2, v0, 0x4

    and-int/lit8 v2, v2, 0xf

    and-int/lit8 v0, v0, 0xf

    const/16 v3, 0x11

    .line 162
    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v6, v4

    .line 164
    :goto_1
    array-length v7, v3

    if-ge v5, v7, :cond_0

    const-string v7, "Li"

    const-string v8, "Not a Valid JPEG File"

    .line 165
    invoke-static {v7, p3, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v7

    and-int/2addr v7, v1

    aput v7, v3, v5

    add-int/lit8 p2, p2, -0x1

    .line 167
    aget v7, v3, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 169
    :cond_0
    new-array v5, v6, [I

    :goto_2
    if-ge v4, v6, :cond_1

    const-string v7, "Vij"

    const-string v8, "Not a Valid JPEG File"

    .line 171
    invoke-static {v7, p3, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v7

    and-int/2addr v7, v1

    aput v7, v5, v4

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 175
    :cond_1
    new-instance v1, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    invoke-direct {v1, v2, v0, v3, v5}, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;-><init>(II[I[I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment;->huffmanTables:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    array-length v0, p2

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment;-><init>(IILjava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DHT ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment;->getSegmentType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

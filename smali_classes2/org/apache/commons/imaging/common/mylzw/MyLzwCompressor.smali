.class public Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;
.super Ljava/lang/Object;
.source "MyLzwCompressor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$Listener;,
        Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;
    }
.end annotation


# instance fields
.field private final byteOrder:Ljava/nio/ByteOrder;

.field private final clearCode:I

.field private codeSize:I

.field private codes:I

.field private final earlyLimit:Z

.field private final eoiCode:I

.field private final initialCodeSize:I

.field private final listener:Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$Listener;

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/nio/ByteOrder;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;-><init>(ILjava/nio/ByteOrder;ZLorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$Listener;)V

    return-void
.end method

.method public constructor <init>(ILjava/nio/ByteOrder;ZLorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$Listener;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->codes:I

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->map:Ljava/util/Map;

    .line 44
    iput-object p4, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->listener:Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$Listener;

    .line 45
    iput-object p2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->byteOrder:Ljava/nio/ByteOrder;

    .line 46
    iput-boolean p3, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->earlyLimit:Z

    .line 48
    iput p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->initialCodeSize:I

    const/4 p2, 0x1

    shl-int p1, p2, p1

    .line 50
    iput p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->clearCode:I

    add-int/lit8 p2, p1, 0x1

    .line 51
    iput p2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->eoiCode:I

    if-eqz p4, :cond_0

    .line 54
    invoke-interface {p4, p1, p2}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$Listener;->init(II)V

    .line 57
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->initializeStringTable()V

    return-void
.end method

.method private addTableEntry(Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->codeSize:I

    const/4 v1, 0x1

    shl-int v2, v1, v0

    .line 197
    iget-boolean v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->earlyLimit:Z

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    .line 201
    :cond_0
    iget v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->codes:I

    if-ne v3, v2, :cond_2

    const/16 v2, 0xc

    if-ge v0, v2, :cond_1

    .line 203
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->incrementCodeSize()V

    goto :goto_0

    .line 205
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->writeClearCode(Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;)V

    .line 206
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->clearTable()V

    move p1, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_3

    .line 212
    iget-object v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->map:Ljava/util/Map;

    iget v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->codes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget p2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->codes:I

    add-int/2addr p2, v1

    iput p2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->codes:I

    :cond_3
    return p1
.end method

.method private addTableEntry(Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;[BII)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->arrayToKey([BII)Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;

    move-result-object p2

    .line 189
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->addTableEntry(Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;)Z

    move-result p0

    return p0
.end method

.method private arrayToKey(B)Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;
    .locals 3

    const/4 v0, 0x1

    .line 87
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->arrayToKey([BII)Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;

    move-result-object p0

    return-object p0
.end method

.method private arrayToKey([BII)Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;
    .locals 0

    .line 140
    new-instance p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;-><init>([BII)V

    return-object p0
.end method

.method private clearTable()V
    .locals 0

    .line 76
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->initializeStringTable()V

    .line 77
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->incrementCodeSize()V

    return-void
.end method

.method private codeFromString([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->arrayToKey([BII)Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;

    move-result-object p1

    .line 179
    iget-object p0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->map:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 183
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 181
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "CodeFromString"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private incrementCodeSize()V
    .locals 2

    .line 81
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->codeSize:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 82
    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->codeSize:I

    :cond_0
    return-void
.end method

.method private initializeStringTable()V
    .locals 5

    .line 61
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->initialCodeSize:I

    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->codeSize:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    add-int/lit8 v0, v0, 0x2

    .line 65
    iget-object v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    const/4 v2, 0x0

    .line 66
    :goto_0
    iput v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->codes:I

    iget v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->codes:I

    if-ge v2, v0, :cond_1

    .line 67
    iget v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->clearCode:I

    if-eq v2, v3, :cond_0

    iget v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->eoiCode:I

    if-eq v2, v3, :cond_0

    int-to-byte v2, v2

    .line 68
    invoke-direct {p0, v2}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->arrayToKey(B)Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;

    move-result-object v2

    .line 70
    iget-object v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->map:Ljava/util/Map;

    iget v4, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->codes:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_0
    iget v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->codes:I

    add-int/2addr v2, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isInTable([BII)Z
    .locals 0

    .line 171
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->arrayToKey([BII)Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;

    move-result-object p1

    .line 173
    iget-object p0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->map:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private writeClearCode(Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->listener:Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$Listener;

    if-eqz v0, :cond_0

    .line 153
    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->clearCode:I

    invoke-interface {v0, v1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$Listener;->dataCode(I)V

    .line 155
    :cond_0
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->clearCode:I

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->writeCode(Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;I)V

    return-void
.end method

.method private writeCode(Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget p0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->codeSize:I

    invoke-virtual {p1, p2, p0}, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->writeBits(II)V

    return-void
.end method

.method private writeDataCode(Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->listener:Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$Listener;

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0, p2}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$Listener;->dataCode(I)V

    .line 148
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->writeCode(Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;I)V

    return-void
.end method

.method private writeEoiCode(Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->listener:Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$Listener;

    if-eqz v0, :cond_0

    .line 160
    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->eoiCode:I

    invoke-interface {v0, v1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$Listener;->eoiCode(I)V

    .line 162
    :cond_0
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->eoiCode:I

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->writeCode(Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;I)V

    return-void
.end method


# virtual methods
.method public compress([B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 231
    new-instance v1, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;

    iget-object v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->byteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 233
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->initializeStringTable()V

    .line 234
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->clearTable()V

    .line 235
    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->writeClearCode(Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;)V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 240
    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_1

    add-int/lit8 v5, v4, 0x1

    .line 241
    invoke-direct {p0, p1, v3, v5}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->isInTable([BII)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    goto :goto_1

    .line 244
    :cond_0
    invoke-direct {p0, p1, v3, v4}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->codeFromString([BII)I

    move-result v4

    .line 245
    invoke-direct {p0, v1, v4}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->writeDataCode(Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;I)V

    .line 246
    invoke-direct {p0, v1, p1, v3, v5}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->addTableEntry(Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;[BII)Z

    const/4 v3, 0x1

    move v4, v3

    move v3, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 253
    :cond_1
    invoke-direct {p0, p1, v3, v4}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->codeFromString([BII)I

    move-result p1

    .line 254
    invoke-direct {p0, v1, p1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->writeDataCode(Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;I)V

    .line 256
    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->writeEoiCode(Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;)V

    .line 258
    invoke-virtual {v1}, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->flushCache()V

    .line 260
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

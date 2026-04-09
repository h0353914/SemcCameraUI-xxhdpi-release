.class Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;
.super Ljava/io/OutputStream;
.source "BitArrayOutputStream.java"


# instance fields
.field private buffer:[B

.field private bytesWritten:I

.field private cache:I

.field private cacheMask:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/16 v0, 0x80

    .line 29
    iput v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->cacheMask:I

    const/16 v0, 0x10

    .line 32
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->buffer:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/16 v0, 0x80

    .line 29
    iput v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->cacheMask:I

    .line 36
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->buffer:[B

    return-void
.end method

.method private writeByte(I)V
    .locals 4

    .line 92
    iget v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->bytesWritten:I

    iget-object v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->buffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->buffer:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 94
    iget-object v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->buffer:[B

    iget v2, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->bytesWritten:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iput-object v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->buffer:[B

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->buffer:[B

    iget v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->bytesWritten:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->bytesWritten:I

    int-to-byte p0, p1

    aput-byte p0, v0, v1

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->flush()V

    return-void
.end method

.method public flush()V
    .locals 2

    .line 60
    iget v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->cacheMask:I

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    .line 61
    iget v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->cache:I

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->writeByte(I)V

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->cache:I

    .line 63
    iput v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->cacheMask:I

    :cond_0
    return-void
.end method

.method public getBitsAvailableInCurrentByte()I
    .locals 1

    .line 85
    iget p0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->cacheMask:I

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public size()I
    .locals 0

    .line 40
    iget p0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->bytesWritten:I

    return p0
.end method

.method public toByteArray()[B
    .locals 3

    .line 44
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->flush()V

    .line 45
    iget v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->bytesWritten:I

    iget-object v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->buffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 46
    iget-object p0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->buffer:[B

    return-object p0

    .line 48
    :cond_0
    iget v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->bytesWritten:I

    new-array v0, v0, [B

    .line 49
    iget-object v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->buffer:[B

    iget p0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->bytesWritten:I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public write(I)V
    .locals 0

    .line 69
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->flush()V

    .line 70
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->writeByte(I)V

    return-void
.end method

.method public writeBit(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 75
    iget p1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->cache:I

    iget v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->cacheMask:I

    or-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->cache:I

    .line 77
    :cond_0
    iget p1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->cacheMask:I

    ushr-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->cacheMask:I

    .line 78
    iget p1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->cacheMask:I

    if-nez p1, :cond_1

    .line 79
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->flush()V

    :cond_1
    return-void
.end method

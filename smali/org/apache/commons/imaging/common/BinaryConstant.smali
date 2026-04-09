.class public Lorg/apache/commons/imaging/common/BinaryConstant;
.super Ljava/lang/Object;
.source "BinaryConstant.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final value:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->value:[B

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/BinaryConstant;->clone()Lorg/apache/commons/imaging/common/BinaryConstant;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lorg/apache/commons/imaging/common/BinaryConstant;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 32
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/common/BinaryConstant;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 40
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/imaging/common/BinaryConstant;

    if-nez v1, :cond_1

    return v0

    .line 43
    :cond_1
    check-cast p1, Lorg/apache/commons/imaging/common/BinaryConstant;

    .line 44
    iget-object p1, p1, Lorg/apache/commons/imaging/common/BinaryConstant;->value:[B

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/common/BinaryConstant;->equals([B)Z

    move-result p0

    return p0
.end method

.method public equals([B)Z
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->value:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public equals([BII)Z
    .locals 4

    .line 52
    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->value:[B

    array-length v0, v0

    const/4 v1, 0x0

    if-eq v0, p3, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    if-ge v0, p3, :cond_2

    .line 56
    iget-object v2, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->value:[B

    aget-byte v2, v2, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public get(I)B
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->value:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 65
    iget-object p0, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->value:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public size()I
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->value:[B

    array-length p0, p0

    return p0
.end method

.method public toByteArray()[B
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->value:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object p0, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->value:[B

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p0, v1

    .line 82
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

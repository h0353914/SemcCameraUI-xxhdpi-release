.class Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;
.super Ljava/io/OutputStream;
.source "FastByteArrayOutputStream.java"


# instance fields
.field private final bytes:[B

.field private count:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 31
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->bytes:[B

    return-void
.end method


# virtual methods
.method public getBytesWritten()I
    .locals 0

    .line 54
    iget p0, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->count:I

    return p0
.end method

.method public toByteArray()[B
    .locals 3

    .line 45
    iget v0, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->count:I

    iget-object p0, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->bytes:[B

    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 46
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 47
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_0
    return-object p0
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget v0, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->count:I

    iget-object v1, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->bytes:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    int-to-byte p1, p1

    .line 40
    aput-byte p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 41
    iput v0, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->count:I

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Write exceeded expected length ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->bytes:[B

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

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

    iget-object v1, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->bytes:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 46
    iget v0, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->count:I

    new-array v0, v0, [B

    .line 47
    iget-object v1, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->bytes:[B

    iget p0, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->count:I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 50
    :cond_0
    iget-object p0, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->bytes:[B

    return-object p0
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget v0, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->count:I

    iget-object v1, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->bytes:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 37
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Write exceeded expected length ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->bytes:[B

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->bytes:[B

    iget v1, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->count:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 41
    iget p1, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->count:I

    return-void
.end method

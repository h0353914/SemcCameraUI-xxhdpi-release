.class public final Lcom/qualcomm/qti/snpe/internal/util/IOUtil;
.super Ljava/lang/Object;
.source "IOUtil.java"


# static fields
.field private static final CHUNK_SIZE:I = 0x100000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bufferFromStream(Ljava/io/InputStream;I)Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_4

    if-lez p1, :cond_3

    int-to-long v0, p1

    .line 28
    invoke-static {v0, v1}, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;->allocate(J)Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;

    move-result-object v2

    const/high16 v3, 0x100000

    .line 29
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 30
    new-array v3, v3, [B

    const-wide/16 v5, 0x0

    :goto_0
    cmp-long v7, v5, v0

    if-eqz v7, :cond_1

    .line 33
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    int-to-long v9, v8

    sub-long v11, v0, v5

    cmp-long v7, v9, v11

    const/4 v9, 0x0

    if-lez v7, :cond_0

    long-to-int v7, v5

    sub-int v7, p1, v7

    .line 36
    invoke-virtual {v4, v3, v9, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 38
    :cond_0
    invoke-virtual {v4, v3, v9, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 40
    :goto_1
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 41
    invoke-virtual {v2, v4}, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;->write(Ljava/nio/ByteBuffer;)J

    move-result-wide v7

    add-long/2addr v5, v7

    goto :goto_0

    :cond_1
    if-nez v7, :cond_2

    return-object v2

    .line 45
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "The expected model stream size and actual mismatch."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Model size can not be <= 0."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stream can not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

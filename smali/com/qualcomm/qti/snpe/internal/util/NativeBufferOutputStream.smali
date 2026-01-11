.class public Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;
.super Ljava/lang/Object;
.source "NativeBufferOutputStream.java"


# instance fields
.field private final mNativeHandle:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method private constructor <init>(J)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;->mNativeHandle:Ljava/util/concurrent/atomic/AtomicLong;

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;->nativeAllocateBuffer(J)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Buffer stream size is invalid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static allocate(J)Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;
    .locals 1

    .line 14
    new-instance v0, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;-><init>(J)V

    return-object v0
.end method

.method private native nativeAllocateBuffer(J)J
.end method

.method private native nativeAsBuffer(J)Ljava/nio/ByteBuffer;
.end method

.method private native nativeRelease(J)V
.end method

.method private native nativeWrite(JLjava/nio/ByteBuffer;I)J
.end method


# virtual methods
.method asBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;->mNativeHandle:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;->nativeAsBuffer(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;->release()V

    .line 51
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getNativeAddress()J
    .locals 2

    .line 55
    iget-object p0, p0, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;->mNativeHandle:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public release()V
    .locals 5

    .line 36
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;->mNativeHandle:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 38
    invoke-direct {p0, v3, v4}, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;->nativeRelease(J)V

    :cond_0
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)J
    .locals 3

    .line 28
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;->mNativeHandle:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;->nativeWrite(JLjava/nio/ByteBuffer;I)J

    move-result-wide p0

    return-wide p0

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source buffer must be direct!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

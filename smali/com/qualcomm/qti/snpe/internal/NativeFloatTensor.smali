.class final Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;
.super Lcom/qualcomm/qti/snpe/FloatTensor;
.source "NativeFloatTensor.java"


# static fields
.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final JNI_ERROR:I = -0x1


# instance fields
.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private final mFloatBufferView:Ljava/nio/FloatBuffer;

.field private mNativeHandle:J


# direct methods
.method constructor <init>([I)V
    .locals 4

    .line 28
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/snpe/FloatTensor;-><init>([I)V

    .line 30
    new-instance v0, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;

    invoke-direct {v0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;-><init>()V

    .line 31
    invoke-static {v0, p1}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->writeShape(Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;[I)V

    .line 33
    invoke-virtual {v0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->marshall()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->nativeInit(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mNativeHandle:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 39
    invoke-static {p1}, Lcom/qualcomm/qti/snpe/internal/TensorUtil;->sizeOf([I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 40
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 41
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    return-void

    .line 36
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Failed to create native tensor!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private doRelease()V
    .locals 5

    .line 98
    iget-wide v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 99
    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->nativeRelease(J)V

    .line 100
    iput-wide v2, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mNativeHandle:J

    :cond_0
    return-void
.end method

.method private native nativeInit(Ljava/nio/ByteBuffer;I)J
.end method

.method private native nativeRelease(J)V
.end method

.method private static writeShape(Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;[I)V
    .locals 3

    .line 45
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 46
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 47
    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method asByteBuffer()Ljava/nio/ByteBuffer;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mByteBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 84
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 85
    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->doRelease()V

    return-void
.end method

.method getNativeHandle()J
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mNativeHandle:J

    return-wide v0
.end method

.method public varargs read([I)F
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 78
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->getShape()[I

    move-result-object v1

    invoke-static {v1, p1}, Lcom/qualcomm/qti/snpe/internal/TensorUtil;->position([I[I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 79
    iget-object p0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result p0

    return p0
.end method

.method public varargs read([FII[I)I
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 70
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->getShape()[I

    move-result-object v1

    invoke-static {v1, p4}, Lcom/qualcomm/qti/snpe/internal/TensorUtil;->position([I[I)I

    move-result p4

    invoke-virtual {v0, p4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 71
    iget-object p0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    return p3
.end method

.method public declared-synchronized release()V
    .locals 4

    monitor-enter p0

    .line 90
    :try_start_0
    iget-wide v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->doRelease()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 91
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FloatTensor instance already released!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs write(F[I)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 63
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->getShape()[I

    move-result-object v1

    invoke-static {v1, p2}, Lcom/qualcomm/qti/snpe/internal/TensorUtil;->position([I[I)I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 64
    iget-object p0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public varargs write([FII[I)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 56
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->getShape()[I

    move-result-object v1

    invoke-static {v1, p4}, Lcom/qualcomm/qti/snpe/internal/TensorUtil;->position([I[I)I

    move-result p4

    invoke-virtual {v0, p4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 57
    iget-object p0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    return-void
.end method

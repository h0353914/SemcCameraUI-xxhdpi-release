.class public Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;
.super Ljava/io/OutputStream;
.source "ThreadSafeOutputStream.java"


# instance fields
.field mClosed:Z

.field private mDelegateStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->mDelegateStream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 45
    :try_start_0
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->mClosed:Z

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->mDelegateStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 51
    :try_start_0
    invoke-super {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 62
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 63
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->mDelegateStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-lez p3, :cond_1

    .line 56
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->mClosed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->mDelegateStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 56
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

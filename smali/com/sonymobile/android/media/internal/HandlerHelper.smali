.class public Lcom/sonymobile/android/media/internal/HandlerHelper;
.super Ljava/lang/Object;
.source "HandlerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/media/internal/HandlerHelper$ExtendedObject;,
        Lcom/sonymobile/android/media/internal/HandlerHelper$WaitHandler;
    }
.end annotation


# instance fields
.field private final mListLock:Ljava/lang/Object;

.field private final mMessageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sonymobile/android/media/internal/HandlerHelper$WaitHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/HandlerHelper;->mMessageList:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/HandlerHelper;->mListLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public releaseAllLocks()V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/HandlerHelper;->mListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_0
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/HandlerHelper;->mMessageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/android/media/internal/HandlerHelper$WaitHandler;

    .line 100
    invoke-static {v1}, Lcom/sonymobile/android/media/internal/HandlerHelper$WaitHandler;->access$100(Lcom/sonymobile/android/media/internal/HandlerHelper$WaitHandler;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x1

    .line 101
    :try_start_1
    iput-boolean v3, v1, Lcom/sonymobile/android/media/internal/HandlerHelper$WaitHandler;->releaseLock:Z

    .line 102
    invoke-static {v1}, Lcom/sonymobile/android/media/internal/HandlerHelper$WaitHandler;->access$100(Lcom/sonymobile/android/media/internal/HandlerHelper$WaitHandler;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 103
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    .line 105
    :cond_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public sendMessageAndAwaitResponse(Landroid/os/Message;)Ljava/lang/Object;
    .locals 7

    .line 59
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "sendMessageAndAwaitResponse"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 60
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 63
    new-instance v2, Lcom/sonymobile/android/media/internal/HandlerHelper$WaitHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/sonymobile/android/media/internal/HandlerHelper$WaitHandler;-><init>(Landroid/os/Looper;Ljava/lang/Object;Lcom/sonymobile/android/media/internal/HandlerHelper$1;)V

    .line 64
    iget-object v3, p0, Lcom/sonymobile/android/media/internal/HandlerHelper;->mListLock:Ljava/lang/Object;

    monitor-enter v3

    .line 65
    :try_start_0
    iget-object v5, p0, Lcom/sonymobile/android/media/internal/HandlerHelper;->mMessageList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 68
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 69
    new-instance v3, Lcom/sonymobile/android/media/internal/HandlerHelper$ExtendedObject;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {v3, v5, v2}, Lcom/sonymobile/android/media/internal/HandlerHelper$ExtendedObject;-><init>(Ljava/lang/Object;Landroid/os/Handler;)V

    iput-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 71
    :cond_0
    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 73
    :goto_0
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 77
    monitor-enter v1

    :catch_0
    :goto_1
    if-nez v4, :cond_1

    .line 78
    :try_start_1
    iget-boolean p1, v2, Lcom/sonymobile/android/media/internal/HandlerHelper$WaitHandler;->releaseLock:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    const-wide/16 v5, 0xa

    .line 80
    :try_start_2
    invoke-virtual {v1, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 81
    iget-object p1, v2, Lcom/sonymobile/android/media/internal/HandlerHelper$WaitHandler;->reply:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, p1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 86
    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 90
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/HandlerHelper;->mListLock:Ljava/lang/Object;

    monitor-enter p1

    .line 91
    :try_start_4
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/HandlerHelper;->mMessageList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 92
    monitor-exit p1

    return-object v4

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    .line 86
    :goto_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :catchall_2
    move-exception p0

    .line 66
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0
.end method

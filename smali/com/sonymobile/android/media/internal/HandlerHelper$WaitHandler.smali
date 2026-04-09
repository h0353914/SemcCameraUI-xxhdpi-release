.class Lcom/sonymobile/android/media/internal/HandlerHelper$WaitHandler;
.super Landroid/os/Handler;
.source "HandlerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/media/internal/HandlerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WaitHandler"
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field public releaseLock:Z

.field public reply:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/os/Looper;Ljava/lang/Object;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 30
    iput-object p2, p0, Lcom/sonymobile/android/media/internal/HandlerHelper$WaitHandler;->lock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Ljava/lang/Object;Lcom/sonymobile/android/media/internal/HandlerHelper$1;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/android/media/internal/HandlerHelper$WaitHandler;-><init>(Landroid/os/Looper;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/android/media/internal/HandlerHelper$WaitHandler;)Ljava/lang/Object;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/HandlerHelper$WaitHandler;->lock:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 35
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object p1, p0, Lcom/sonymobile/android/media/internal/HandlerHelper$WaitHandler;->reply:Ljava/lang/Object;

    .line 36
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/HandlerHelper$WaitHandler;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 37
    :try_start_0
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/HandlerHelper$WaitHandler;->lock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 38
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.class public Lcom/sonyericsson/android/camera/util/BackgroundWorker;
.super Ljava/lang/Object;
.source "BackgroundWorker.java"


# static fields
.field private static final SHUTDOWN_TIMEOUT_MILLISECONDS:I = 0x7d0

.field private static final THREAD_NAME:Ljava/lang/String; = "BgWorker"


# instance fields
.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mHandler:Landroid/os/Handler;

.field private mLooper:Landroid/os/Looper;


# direct methods
.method static bridge synthetic -$$Nest$fputmLooper(Lcom/sonyericsson/android/camera/util/BackgroundWorker;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->mLooper:Landroid/os/Looper;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->mLooper:Landroid/os/Looper;

    .line 33
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "BgWorker"

    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 36
    new-instance v1, Lcom/sonyericsson/android/camera/util/BackgroundWorker$1;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker$1;-><init>(Lcom/sonyericsson/android/camera/util/BackgroundWorker;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 50
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :catch_0
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->mLooper:Landroid/os/Looper;

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public quit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 65
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v0, 0x7d0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

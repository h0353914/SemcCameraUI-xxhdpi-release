.class public Lcom/sonyericsson/android/camera/util/ThreadUtil;
.super Ljava/lang/Object;
.source "ThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/util/ThreadUtil$NamedThreadFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    const/4 v0, 0x5

    .line 29
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static buildExecutor(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;
    .locals 2

    .line 50
    new-instance v0, Lcom/sonyericsson/android/camera/util/ThreadUtil$NamedThreadFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sonyericsson/android/camera/util/ThreadUtil$NamedThreadFactory;-><init>(Ljava/lang/String;IZ)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static buildPoolExecutor(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;
    .locals 1

    const/4 v0, 0x5

    .line 104
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildPoolExecutor(Ljava/lang/String;II)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static buildPoolExecutor(Ljava/lang/String;II)Ljava/util/concurrent/ExecutorService;
    .locals 2

    .line 127
    new-instance v0, Lcom/sonyericsson/android/camera/util/ThreadUtil$NamedThreadFactory;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lcom/sonyericsson/android/camera/util/ThreadUtil$NamedThreadFactory;-><init>(Ljava/lang/String;IZ)V

    .line 128
    invoke-static {p1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static buildScheduledExecutor(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3

    .line 65
    new-instance v0, Lcom/sonyericsson/android/camera/util/ThreadUtil$NamedThreadFactory;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/sonyericsson/android/camera/util/ThreadUtil$NamedThreadFactory;-><init>(Ljava/lang/String;IZ)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static buildScheduledExecutor(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .line 87
    new-instance v0, Lcom/sonyericsson/android/camera/util/ThreadUtil$NamedThreadFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sonyericsson/android/camera/util/ThreadUtil$NamedThreadFactory;-><init>(Ljava/lang/String;IZ)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0
.end method

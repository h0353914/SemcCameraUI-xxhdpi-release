.class Lcom/sonyericsson/android/camera/util/ThreadUtil$NamedThreadFactory;
.super Ljava/lang/Object;
.source "ThreadUtil.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/util/ThreadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NamedThreadFactory"
.end annotation


# instance fields
.field private final forPool:Z

.field private mPooledThreadCount:I

.field private final name:Ljava/lang/String;

.field private final priority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/ThreadUtil$NamedThreadFactory;->name:Ljava/lang/String;

    .line 141
    iput p2, p0, Lcom/sonyericsson/android/camera/util/ThreadUtil$NamedThreadFactory;->priority:I

    .line 142
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/util/ThreadUtil$NamedThreadFactory;->forPool:Z

    const/4 p1, 0x0

    .line 144
    iput p1, p0, Lcom/sonyericsson/android/camera/util/ThreadUtil$NamedThreadFactory;->mPooledThreadCount:I

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 151
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/util/ThreadUtil$NamedThreadFactory;->forPool:Z

    if-nez p1, :cond_0

    .line 152
    iget-object p1, p0, Lcom/sonyericsson/android/camera/util/ThreadUtil$NamedThreadFactory;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/ThreadUtil$NamedThreadFactory;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/sonyericsson/android/camera/util/ThreadUtil$NamedThreadFactory;->mPooledThreadCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 155
    iget p1, p0, Lcom/sonyericsson/android/camera/util/ThreadUtil$NamedThreadFactory;->mPooledThreadCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sonyericsson/android/camera/util/ThreadUtil$NamedThreadFactory;->mPooledThreadCount:I

    .line 157
    :goto_0
    iget p0, p0, Lcom/sonyericsson/android/camera/util/ThreadUtil$NamedThreadFactory;->priority:I

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0
.end method

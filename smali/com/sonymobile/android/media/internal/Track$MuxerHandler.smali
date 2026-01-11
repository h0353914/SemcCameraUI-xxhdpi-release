.class public Lcom/sonymobile/android/media/internal/Track$MuxerHandler;
.super Landroid/os/Handler;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/media/internal/Track;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MuxerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/media/internal/Track;


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/media/internal/Track;Landroid/os/Looper;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/Track$MuxerHandler;->this$0:Lcom/sonymobile/android/media/internal/Track;

    .line 272
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private doFlushBuffers()V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/Track$MuxerHandler;->this$0:Lcom/sonymobile/android/media/internal/Track;

    iget-object v0, v0, Lcom/sonymobile/android/media/internal/Track;->mBufferList:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 279
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/Track$MuxerHandler;->this$0:Lcom/sonymobile/android/media/internal/Track;

    invoke-virtual {v2}, Lcom/sonymobile/android/media/internal/Track;->doWriteOutputBuffer()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 285
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x68

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/android/media/internal/Track$MuxerHandler;->doFlushBuffers()V

    goto :goto_0

    .line 288
    :cond_1
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/Track$MuxerHandler;->this$0:Lcom/sonymobile/android/media/internal/Track;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/Track;->doWriteOutputBuffer()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

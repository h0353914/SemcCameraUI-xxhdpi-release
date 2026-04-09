.class public Lcom/sonymobile/android/media/internal/Track$EventHandler;
.super Landroid/os/Handler;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/media/internal/Track;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/media/internal/Track;


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/media/internal/Track;Landroid/os/Looper;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/Track$EventHandler;->this$0:Lcom/sonymobile/android/media/internal/Track;

    .line 307
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 312
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 359
    :pswitch_0
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/Track$EventHandler;->this$0:Lcom/sonymobile/android/media/internal/Track;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/Track;->doReset()V

    .line 361
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    .line 362
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    .line 363
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 364
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 355
    :pswitch_1
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/Track$EventHandler;->this$0:Lcom/sonymobile/android/media/internal/Track;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/internal/Track;->doResume(Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_0

    .line 314
    :pswitch_2
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/Track$EventHandler;->this$0:Lcom/sonymobile/android/media/internal/Track;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/Track;->doPause()V

    goto :goto_0

    .line 346
    :pswitch_3
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/Track$EventHandler;->this$0:Lcom/sonymobile/android/media/internal/Track;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/Track;->doRelease()V

    .line 348
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    .line 349
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    .line 350
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 351
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 337
    :pswitch_4
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/Track$EventHandler;->this$0:Lcom/sonymobile/android/media/internal/Track;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/Track;->doPrepare()V

    .line 339
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    .line 340
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    .line 341
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 342
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 327
    :pswitch_5
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/Track$EventHandler;->this$0:Lcom/sonymobile/android/media/internal/Track;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/Track;->doStop()V

    .line 329
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    .line 330
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    .line 331
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 332
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 318
    :pswitch_6
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/Track$EventHandler;->this$0:Lcom/sonymobile/android/media/internal/Track;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/Track;->doStart()V

    .line 320
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    .line 321
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    .line 322
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 323
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;
.super Landroid/os/Handler;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/media/MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandler"
.end annotation


# instance fields
.field private final mRecorder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonymobile/android/media/MediaRecorder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonymobile/android/media/MediaRecorder;


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/media/MediaRecorder;Ljava/lang/ref/WeakReference;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonymobile/android/media/MediaRecorder;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 1069
    iput-object p1, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    .line 1070
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1072
    iput-object p2, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->mRecorder:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1077
    iget v0, p1, Landroid/os/Message;->arg1:I

    const v1, 0xfffffff

    and-int/2addr v0, v1

    .line 1078
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 1116
    :pswitch_0
    iget-object v1, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-static {v1}, Lcom/sonymobile/android/media/MediaRecorder;->access$000(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1117
    iget-object v1, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-static {v1}, Lcom/sonymobile/android/media/MediaRecorder;->access$100(Lcom/sonymobile/android/media/MediaRecorder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1118
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-static {p0}, Lcom/sonymobile/android/media/MediaRecorder;->access$000(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;

    move-result-object p0

    invoke-interface {p0, v4, v2, v3}, Landroid/media/MediaRecorder$OnErrorListener;->onError(Landroid/media/MediaRecorder;II)V

    goto/16 :goto_0

    :cond_0
    const-string p0, "MediaRecorder"

    .line 1120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message is rejected because recorder is already stopped. what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " message:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1111
    :pswitch_1
    iget-object p1, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-static {p1}, Lcom/sonymobile/android/media/MediaRecorder;->access$200(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1112
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-static {p0}, Lcom/sonymobile/android/media/MediaRecorder;->access$200(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object p0

    const/16 p1, 0x321

    invoke-interface {p0, v4, p1, v3}, Landroid/media/MediaRecorder$OnInfoListener;->onInfo(Landroid/media/MediaRecorder;II)V

    goto/16 :goto_0

    .line 1106
    :pswitch_2
    iget-object p1, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-static {p1}, Lcom/sonymobile/android/media/MediaRecorder;->access$200(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1107
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-static {p0}, Lcom/sonymobile/android/media/MediaRecorder;->access$200(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object p0

    const/16 p1, 0x320

    invoke-interface {p0, v4, p1, v3}, Landroid/media/MediaRecorder$OnInfoListener;->onInfo(Landroid/media/MediaRecorder;II)V

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1094
    :pswitch_4
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-static {v0}, Lcom/sonymobile/android/media/MediaRecorder;->access$200(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1095
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-static {p0}, Lcom/sonymobile/android/media/MediaRecorder;->access$200(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v4, v0, p1}, Landroid/media/MediaRecorder$OnInfoListener;->onInfo(Landroid/media/MediaRecorder;II)V

    goto :goto_0

    .line 1099
    :pswitch_5
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-static {v0}, Lcom/sonymobile/android/media/MediaRecorder;->access$200(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1100
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-static {p0}, Lcom/sonymobile/android/media/MediaRecorder;->access$200(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v4, v0, p1}, Landroid/media/MediaRecorder$OnInfoListener;->onInfo(Landroid/media/MediaRecorder;II)V

    goto :goto_0

    .line 1082
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-static {v1}, Lcom/sonymobile/android/media/MediaRecorder;->access$000(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1083
    iget-object v1, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-static {v1}, Lcom/sonymobile/android/media/MediaRecorder;->access$100(Lcom/sonymobile/android/media/MediaRecorder;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1084
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-static {p0}, Lcom/sonymobile/android/media/MediaRecorder;->access$000(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;

    move-result-object p0

    invoke-interface {p0, v4, v2, v3}, Landroid/media/MediaRecorder$OnErrorListener;->onError(Landroid/media/MediaRecorder;II)V

    goto :goto_0

    :cond_2
    const-string p0, "MediaRecorder"

    .line 1087
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message is rejected because recorder is already stopped. what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " message:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e8
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

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

    .line 1065
    iput-object p1, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    .line 1066
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1068
    iput-object p2, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->mRecorder:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1073
    iget v0, p1, Landroid/os/Message;->arg1:I

    const v1, 0xfffffff

    and-int/2addr v0, v1

    .line 1074
    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, " message:"

    const-string v3, "Message is rejected because recorder is already stopped. what:"

    const-string v4, "MediaRecorder"

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v1, v6, :cond_4

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eq v1, v8, :cond_3

    const/4 v8, 0x3

    if-eq v1, v8, :cond_2

    if-eq v1, v5, :cond_0

    goto/16 :goto_0

    .line 1112
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-static {v1}, Lcom/sonymobile/android/media/MediaRecorder;->-$$Nest$fgetmOnErrorListener(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1113
    iget-object v1, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-static {v1}, Lcom/sonymobile/android/media/MediaRecorder;->-$$Nest$fgetmIsAvailable(Lcom/sonymobile/android/media/MediaRecorder;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1114
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-static {p0}, Lcom/sonymobile/android/media/MediaRecorder;->-$$Nest$fgetmOnErrorListener(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;

    move-result-object p0

    invoke-interface {p0, v7, v6, v9}, Landroid/media/MediaRecorder$OnErrorListener;->onError(Landroid/media/MediaRecorder;II)V

    goto/16 :goto_0

    .line 1116
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1107
    :cond_2
    iget-object p1, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-static {p1}, Lcom/sonymobile/android/media/MediaRecorder;->-$$Nest$fgetmOnInfoListener(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 1108
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-static {p0}, Lcom/sonymobile/android/media/MediaRecorder;->-$$Nest$fgetmOnInfoListener(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object p0

    const/16 p1, 0x321

    invoke-interface {p0, v7, p1, v9}, Landroid/media/MediaRecorder$OnInfoListener;->onInfo(Landroid/media/MediaRecorder;II)V

    goto/16 :goto_0

    .line 1102
    :cond_3
    iget-object p1, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-static {p1}, Lcom/sonymobile/android/media/MediaRecorder;->-$$Nest$fgetmOnInfoListener(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 1103
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-static {p0}, Lcom/sonymobile/android/media/MediaRecorder;->-$$Nest$fgetmOnInfoListener(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object p0

    const/16 p1, 0x320

    invoke-interface {p0, v7, p1, v9}, Landroid/media/MediaRecorder$OnInfoListener;->onInfo(Landroid/media/MediaRecorder;II)V

    goto :goto_0

    :cond_4
    if-eq v0, v5, :cond_7

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_6

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_5

    goto :goto_0

    .line 1090
    :cond_5
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-static {v0}, Lcom/sonymobile/android/media/MediaRecorder;->-$$Nest$fgetmOnInfoListener(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1091
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-static {p0}, Lcom/sonymobile/android/media/MediaRecorder;->-$$Nest$fgetmOnInfoListener(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v7, v0, p1}, Landroid/media/MediaRecorder$OnInfoListener;->onInfo(Landroid/media/MediaRecorder;II)V

    goto :goto_0

    .line 1095
    :cond_6
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-static {v0}, Lcom/sonymobile/android/media/MediaRecorder;->-$$Nest$fgetmOnInfoListener(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1096
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-static {p0}, Lcom/sonymobile/android/media/MediaRecorder;->-$$Nest$fgetmOnInfoListener(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v7, v0, p1}, Landroid/media/MediaRecorder$OnInfoListener;->onInfo(Landroid/media/MediaRecorder;II)V

    goto :goto_0

    .line 1078
    :cond_7
    iget-object v1, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-static {v1}, Lcom/sonymobile/android/media/MediaRecorder;->-$$Nest$fgetmOnErrorListener(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1079
    iget-object v1, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-static {v1}, Lcom/sonymobile/android/media/MediaRecorder;->-$$Nest$fgetmIsAvailable(Lcom/sonymobile/android/media/MediaRecorder;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1080
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-static {p0}, Lcom/sonymobile/android/media/MediaRecorder;->-$$Nest$fgetmOnErrorListener(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v7, v6, p1}, Landroid/media/MediaRecorder$OnErrorListener;->onError(Landroid/media/MediaRecorder;II)V

    goto :goto_0

    .line 1083
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_0
    return-void
.end method

.class Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowTask;
.super Ljava/lang/Object;
.source "SuperSlowRecorderController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartSuperSlowTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowTask;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$1;)V
    .locals 0

    .line 300
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowTask;-><init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowTask;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->access$400(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowTask;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->access$500(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)V

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowTask;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->access$700(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowTask$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowTask$1;-><init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 317
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 318
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowTask;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->access$800(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)V

    :goto_0
    return-void
.end method

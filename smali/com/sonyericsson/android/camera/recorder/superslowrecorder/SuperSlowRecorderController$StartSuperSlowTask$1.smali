.class Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowTask$1;
.super Ljava/lang/Object;
.source "SuperSlowRecorderController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowTask;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowTask$1;->this$1:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowTask$1;->this$1:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowTask;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowTask;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->access$600(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;->onSuperSlowRecordingFinished()V

    return-void
.end method

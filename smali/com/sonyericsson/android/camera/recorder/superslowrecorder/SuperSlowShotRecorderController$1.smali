.class Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$1;
.super Ljava/lang/Object;
.source "SuperSlowShotRecorderController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->startInternal()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$1;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 339
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$1;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->-$$Nest$fgetmOnSuperSlowRecordingFinishedListener(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;)Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;->onSuperSlowRecordingFinished()V

    return-void
.end method

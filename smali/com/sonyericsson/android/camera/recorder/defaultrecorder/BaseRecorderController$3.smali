.class Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$3;
.super Ljava/lang/Object;
.source "BaseRecorderController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V
    .locals 0

    .line 1015
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$3;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMaxDurationReached()V
    .locals 2

    .line 1019
    const-string v0, "onMaxDurationReached() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->-$$Nest$smtrace(Ljava/lang/String;)V

    .line 1020
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$3;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->-$$Nest$mdisplayMaxDuration(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V

    .line 1021
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$3;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    sget-object v1, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->MAX_DURATION_REACHED:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->-$$Nest$mnotifyFinishResult(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V

    .line 1022
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$3;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->-$$Nest$fgetmReferenceClock(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->stop()V

    .line 1023
    const-string p0, "onMaxDurationReached() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->-$$Nest$smtrace(Ljava/lang/String;)V

    return-void
.end method

.method public onMaxFileSizeReached()V
    .locals 1

    .line 1028
    const-string v0, "onMaxFileSizeReached() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->-$$Nest$smtrace(Ljava/lang/String;)V

    .line 1029
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$3;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    sget-object v0, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->MAX_FILESIZE_REACHED:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->-$$Nest$mnotifyFinishResult(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V

    .line 1030
    const-string p0, "onMaxFileSizeReached() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->-$$Nest$smtrace(Ljava/lang/String;)V

    return-void
.end method

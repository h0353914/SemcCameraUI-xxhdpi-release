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

    .line 883
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$3;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMaxDurationReached()V
    .locals 1

    const-string v0, "onMaxDurationReached() E"

    .line 887
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->access$100(Ljava/lang/String;)V

    .line 888
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$3;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->access$1300(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V

    .line 889
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$3;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    sget-object v0, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->MAX_DURATION_REACHED:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->access$900(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V

    const-string p0, "onMaxDurationReached() X"

    .line 890
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->access$100(Ljava/lang/String;)V

    return-void
.end method

.method public onMaxFileSizeReached()V
    .locals 1

    const-string v0, "onMaxFileSizeReached() E"

    .line 895
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->access$100(Ljava/lang/String;)V

    .line 896
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$3;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    sget-object v0, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->MAX_FILESIZE_REACHED:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->access$900(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V

    const-string p0, "onMaxFileSizeReached() X"

    .line 897
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->access$100(Ljava/lang/String;)V

    return-void
.end method

.class Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$ResetTask;
.super Ljava/lang/Object;
.source "BaseRecorderController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V
    .locals 0

    .line 873
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$ResetTask;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$ResetTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$ResetTask;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 877
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$ResetTask;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->resetInternal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 878
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$ResetTask;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->notifyError()V

    :cond_0
    return-void
.end method

.class Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$2;
.super Ljava/lang/Object;
.source "BaseRecorderController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;


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

    .line 977
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$2;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 0

    .line 981
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$2;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->notifyError()V

    return-void
.end method

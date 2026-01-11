.class Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$StopVideoRecordingCallbackImpl;
.super Ljava/lang/Object;
.source "DefaultRecorderController.java"

# interfaces
.implements Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StopVideoRecordingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StopVideoRecordingCallbackImpl"
.end annotation


# instance fields
.field private final mLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;)V
    .locals 0

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$StopVideoRecordingCallbackImpl;->mLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    return-void
.end method


# virtual methods
.method public onStopVideoRecordingDone()V
    .locals 1

    .line 394
    const-string v0, "onStopVideoRecordingDone() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->-$$Nest$smtrace(Ljava/lang/String;)V

    .line 395
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$StopVideoRecordingCallbackImpl;->mLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->unlock()V

    .line 396
    const-string p0, "onStopVideoRecordingDone() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->-$$Nest$smtrace(Ljava/lang/String;)V

    return-void
.end method

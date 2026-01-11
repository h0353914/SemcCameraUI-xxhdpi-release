.class Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$StartVideoRecordingCallbackImpl;
.super Ljava/lang/Object;
.source "DefaultRecorderController.java"

# interfaces
.implements Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartVideoRecordingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StartVideoRecordingCallbackImpl"
.end annotation


# instance fields
.field private final mLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;)V
    .locals 0

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$StartVideoRecordingCallbackImpl;->mLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    return-void
.end method


# virtual methods
.method public onStartVideoRecordingDone()V
    .locals 1

    .line 378
    const-string v0, "onStartVideoRecordingDone() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->-$$Nest$smtrace(Ljava/lang/String;)V

    .line 379
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$StartVideoRecordingCallbackImpl;->mLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->unlock()V

    .line 380
    const-string p0, "onStartVideoRecordingDone() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->-$$Nest$smtrace(Ljava/lang/String;)V

    return-void
.end method

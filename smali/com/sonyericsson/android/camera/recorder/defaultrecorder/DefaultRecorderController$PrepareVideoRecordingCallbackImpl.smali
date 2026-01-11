.class Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$PrepareVideoRecordingCallbackImpl;
.super Ljava/lang/Object;
.source "DefaultRecorderController.java"

# interfaces
.implements Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareVideoRecordingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrepareVideoRecordingCallbackImpl"
.end annotation


# instance fields
.field private final mLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;)V
    .locals 0

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$PrepareVideoRecordingCallbackImpl;->mLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    return-void
.end method


# virtual methods
.method public onPrepareVideoRecordingDone()V
    .locals 1

    .line 362
    const-string v0, "onPrepareVideoRecordingDone() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->-$$Nest$smtrace(Ljava/lang/String;)V

    .line 363
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$PrepareVideoRecordingCallbackImpl;->mLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->unlock()V

    .line 364
    const-string p0, "onPrepareVideoRecordingDone() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->-$$Nest$smtrace(Ljava/lang/String;)V

    return-void
.end method

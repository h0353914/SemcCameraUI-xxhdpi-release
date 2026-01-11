.class Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowRecordingCallbackImpl;
.super Ljava/lang/Object;
.source "SuperSlowRecorderController.java"

# interfaces
.implements Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartSuperSlowRecordingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StartSuperSlowRecordingCallbackImpl"
.end annotation


# instance fields
.field private final mLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;)V
    .locals 0

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowRecordingCallbackImpl;->mLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    return-void
.end method


# virtual methods
.method public onStartSuperSlowRecordingDone()V
    .locals 1

    .line 439
    const-string v0, "onStartSuperSlowRecordingDone() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->-$$Nest$smtrace(Ljava/lang/String;)V

    .line 440
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowRecordingCallbackImpl;->mLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->unlock()V

    .line 441
    const-string p0, "onStartSuperSlowRecordingDone() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->-$$Nest$smtrace(Ljava/lang/String;)V

    return-void
.end method

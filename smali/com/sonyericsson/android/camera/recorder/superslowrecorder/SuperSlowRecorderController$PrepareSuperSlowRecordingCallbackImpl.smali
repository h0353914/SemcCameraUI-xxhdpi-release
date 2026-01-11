.class Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$PrepareSuperSlowRecordingCallbackImpl;
.super Ljava/lang/Object;
.source "SuperSlowRecorderController.java"

# interfaces
.implements Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareSuperSlowRecordingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrepareSuperSlowRecordingCallbackImpl"
.end annotation


# instance fields
.field private final mLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;)V
    .locals 0

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$PrepareSuperSlowRecordingCallbackImpl;->mLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    return-void
.end method


# virtual methods
.method public onPrepareSuperSlowRecordingDone()V
    .locals 1

    .line 423
    const-string v0, "onPrepareSuperSlowRecordingDone() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->-$$Nest$smtrace(Ljava/lang/String;)V

    .line 424
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$PrepareSuperSlowRecordingCallbackImpl;->mLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->unlock()V

    .line 425
    const-string p0, "onPrepareSuperSlowRecordingDone() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->-$$Nest$smtrace(Ljava/lang/String;)V

    return-void
.end method

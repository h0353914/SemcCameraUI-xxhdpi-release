.class public Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;
.super Ljava/lang/Object;
.source "ShutterFeedback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;
    }
.end annotation


# static fields
.field private static final CAPTURING_TIME_THRESHOLD_DIVIDE_SOUND_MILLIS:I = 0xfa

.field private static final CAPTURING_TIME_THRESHOLD_LONG_UI_MILLIS:I = 0x3e8


# instance fields
.field private final mRemainingCapturingTime:I

.field private final mType:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;I)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->mType:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    .line 51
    iput p2, p0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->mRemainingCapturingTime:I

    return-void
.end method

.method public static create(I)Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;
    .locals 2

    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    .line 58
    sget-object v0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->DIVIDE_SOUND_LONG:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    goto :goto_0

    :cond_0
    const/16 v0, 0xfa

    if-le p0, v0, :cond_1

    .line 60
    sget-object v0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->DIVIDE_SOUND:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    goto :goto_0

    .line 62
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->ON_CAPTURE_REQUEST:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    .line 65
    :goto_0
    new-instance v1, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    invoke-direct {v1, v0, p0}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;-><init>(Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;I)V

    return-object v1
.end method

.method public static createDefault()Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;
    .locals 3

    .line 77
    new-instance v0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    sget-object v1, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->ON_SHUTTER_DONE:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;-><init>(Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;I)V

    return-object v0
.end method


# virtual methods
.method public getEventOnCaptureRequest()Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->mType:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->-$$Nest$fgeteventOnCaptureRequest(Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;)Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    move-result-object p0

    return-object p0
.end method

.method public getEventOnShutterDone()Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->mType:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->-$$Nest$fgeteventOnShutterDone(Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;)Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    move-result-object p0

    return-object p0
.end method

.method public getRemainingCapturingTime()I
    .locals 0

    .line 45
    iget p0, p0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->mRemainingCapturingTime:I

    return p0
.end method

.method public getSoundOnCaptureRequest()Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->mType:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->-$$Nest$fgetsoundOnCaptureRequest(Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;)Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    move-result-object p0

    return-object p0
.end method

.method public getSoundOnShutterDone()Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->mType:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->-$$Nest$fgetsoundOnShutterDone(Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;)Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    move-result-object p0

    return-object p0
.end method

.method public isContinuousShotAcceptable()Z
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->mType:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->-$$Nest$fgetisContinuousShotAcceptable(Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;)Z

    move-result p0

    return p0
.end method
